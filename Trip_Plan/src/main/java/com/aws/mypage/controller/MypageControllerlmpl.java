package com.aws.mypage.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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

	//-----------------------------------------------------------------------------------------------------------
	// summary
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/summary", method=RequestMethod.GET)
	public ModelAndView summary(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		if(memberVO.getProfileImg() == null || memberVO.getProfileImg() == "") {
			memberVO.setProfileImg("${contextPath}/resources/images/profile.jpg");
		} else {
			File file = new File(memberVO.getProfileImg());
		}
		
		mav.setViewName("/mypage/summary");
		return mav;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록하기
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@ResponseBody
	@RequestMapping(value="/imgUpload", method = RequestMethod.POST)
	public String result( MultipartFile multi, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		try {
			if(!multi.isEmpty())
			{
				String originFilename = multi.getOriginalFilename();
				String Path = request.getSession().getServletContext().getRealPath("/");
				File file = new File(Path + "/resources/images/profile/", originFilename);
				multi.transferTo(file);
				memberVO.setId(request.getParameter("id"));
				memberVO.setProfileImg("images/profile/" + originFilename);
				int result = mypageService.updateProfile(memberVO);
				if(result > 0) {
					return "Y";
				}
			}
		} catch(Exception e) {
			System.out.println(e);
		}
		return "N";
	}

	

	
}//END - public class MypageControllerlmpl implements MypageController
