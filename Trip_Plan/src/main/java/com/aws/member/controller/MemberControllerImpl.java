package com.aws.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aws.member.vo.MemberVO;
import com.aws.member.service.MemberService;


//-----------------------------------------------------------------------------------------------------------
// public class MemberControllerImpl implements MemberController
//-----------------------------------------------------------------------------------------------------------
@Controller("memberController")
@RequestMapping("/member")	// url에서 /member로 시작하는 것들을 처리하는 컨트롤러
public class MemberControllerImpl implements MemberController {
	
	@Autowired
	private MemberVO memberVO;
	
	@Autowired
	private MemberService memberService;


	//-----------------------------------------------------------------------------------------------------------
	// 로그인 화면 띄우기
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/loginForm", method=RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/loginForm");
		return mav;
		
	}

	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("MemberController 로그인 member.getPwd() ==> " + member.getM_pw());
		
		// 로그인 한 정보를 가지고 데이터 베이스에 존재하는지 처리를 하고, 그 결과를 가져온다.
		memberVO = memberService.login(member);
		System.out.println("MemberController 로그인 ==> " + memberVO);
		
		
		// 로그인 정보가 데이터베이스에 존재하는지에 따라 처리를 다르게 한다.
		if(memberVO != null) {	// 로그인 정보에 해당하는 자료가 존재한다면
			
			if(member.getM_pw().equals(memberVO.getM_pw())) {
				// 아이디와 비밀번호가 일치하면, 세션을 발급한다.
				HttpSession session = request.getSession();
				session.setAttribute("member", 	memberVO);
				session.setAttribute("isLogOn",	true);
				// mav.setViewName("redirect:/member/listMembers.do");
				mav.setViewName("redirect:/home"); // 메인화면으로 이동
			} else {
				rAttr.addAttribute("result", "PasswordFailed");
				mav.setViewName("redirect:/member/loginForm.do");
			}
			
		} else {	// 로그인 정보에 해당하는 자료가 존재하지 않는다면
			// 로그인 실패 메시지를 가지고 로그인 화면으로 이동한다.
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/member/loginForm.do"); 
		}

		return mav;
	}

	//-----------------------------------------------------------------------------------------------------------
	// 로그아웃 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		
		ModelAndView mav = new ModelAndView();
		// mav.setViewName("redirect:/member/loginForm.do");
		mav.setViewName("redirect:/main.do"); // 메인화면으로 이동
		return mav;
	}




	

	
	
	
	
	

} // End - public class MemberControllerImpl implements MemberController












