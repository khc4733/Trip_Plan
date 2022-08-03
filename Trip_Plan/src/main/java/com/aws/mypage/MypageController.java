package com.aws.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface MypageController {

	public ModelAndView Mypage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//----------------------------------------------------------------------------------------------------
	// 개인 정보 확인 페이지(8.3)
	//----------------------------------------------------------------------------------------------------
	public ModelAndView MyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
} // END - public interface MypageController
