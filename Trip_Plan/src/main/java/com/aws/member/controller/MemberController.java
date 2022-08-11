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
	// 회원 가입 처리
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView addMember(@ModelAttribute("member") MemberVO memberVO,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
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
	
	//-----------------------------------------------------------------------------------------------------------
	// 아이디 중복 검사(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public int idCheck(MemberVO memberVO) throws Exception;

	//-----------------------------------------------------------------------------------------------------------
	// 이메일 인증(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public String mailCheckGET(String email) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 아이디 찾기 폼
	//-----------------------------------------------------------------------------------------------------------
	public	ModelAndView Id_search(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 아이디 찾기(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public String Id_find(MemberVO memberVO) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 비밀번호 찾기 폼
	//-----------------------------------------------------------------------------------------------------------
	public	ModelAndView Pw_search(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 비밀번호 찾기(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public String Pw_find(MemberVO memberVO) throws Exception;

} // End - public interface MemberController










