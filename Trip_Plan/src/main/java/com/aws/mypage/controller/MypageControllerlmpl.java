package com.aws.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.aws.member.service.MemberService;
import com.aws.member.vo.MemberVO;
import com.aws.mypage.service.MypageService;



@Controller("mypageController")
@RequestMapping("/mypage")	// url에서 /mypage로 시작하는 것들을 처리하는 컨트롤러
public class MypageControllerlmpl implements MypageController {

	@Autowired
	private MemberVO memberVO;
	
	@Autowired
	private MypageService mypageService;
	
	//----------------------------------------------------------------------------------------------------
	// mypage
	//----------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public ModelAndView Mypage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/mypage");
		return mav;
		
	}

	//----------------------------------------------------------------------------------------------------
	// 개인 정보 확인 페이지(8.3)
	//----------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public ModelAndView MyInfo( HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myInfo");
		
		return mav;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/modifyMember.do", method=RequestMethod.POST)
	public ModelAndView modifyMember(MemberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			    throws Exception {
			
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int result = mypageService.modifyMember(memberVO);
		HttpSession session = request.getSession(true);
		session.removeAttribute("member");
		session.setAttribute("member", 	memberVO);
		memberVO = (MemberVO) session.getAttribute("member");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mypage/myInfo");
		return mav;
		    
	}// end - public ModelAndView modifyMember
		
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/removeMember", method=RequestMethod.GET)
	public ModelAndView removeMember(String id, HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
		request.setCharacterEncoding("UTF-8");
		int result = mypageService.removeMember(id);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		session.invalidate();
		return mav;
		
	}// end - public ModelAndView removeMember

}//END - public class MypageControllerlmpl implements MypageController
