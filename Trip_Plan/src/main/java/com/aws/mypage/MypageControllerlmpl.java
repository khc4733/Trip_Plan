package com.aws.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller("mypageController")
@RequestMapping("/mypage")	// url에서 /mypage로 시작하는 것들을 처리하는 컨트롤러
public class MypageControllerlmpl implements MypageController {

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
	public ModelAndView MyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myInfo");
		return mav;
	}

}//END - public class MypageControllerlmpl implements MypageController
