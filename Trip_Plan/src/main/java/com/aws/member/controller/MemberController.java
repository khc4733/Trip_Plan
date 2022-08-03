package com.aws.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.aws.member.vo.MemberVO;


//-----------------------------------------------------------------------------------------------------------
// public interface MemberController
//-----------------------------------------------------------------------------------------------------------
public interface MemberController {


	//-----------------------------------------------------------------------------------------------------------
	// 회원가입 폼
	//-----------------------------------------------------------------------------------------------------------
	public	ModelAndView SignUp(HttpServletRequest request, HttpServletResponse response) throws Exception;
	//-----------------------------------------------------------------------------------------------------------
	// 로그인 폼
	//-----------------------------------------------------------------------------------------------------------
	public	ModelAndView SignIn(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
				HttpServletRequest request, HttpServletResponse response) throws Exception;

	//-----------------------------------------------------------------------------------------------------------
	// 로그아웃 처리
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	

} // End - public interface MemberController










