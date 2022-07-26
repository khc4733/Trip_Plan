package com.aws.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aws.member.vo.MemberVO;
import com.aws.mypage.dto.MyCriteria;

public interface MypageController {

	public ModelAndView Mypage(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//----------------------------------------------------------------------------------------------------
	// 개인 정보 확인 페이지(8.3)
	//----------------------------------------------------------------------------------------------------
	public ModelAndView MyInfo(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView modifyMember(@ModelAttribute("info") MemberVO memberVO, 
					                  HttpServletRequest request, HttpServletResponse response) throws Exception;
					                     
	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView removeMember(@RequestParam("id") String id, HttpSession session, HttpServletRequest request, 
	            					HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// summary
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView summary(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록하기
	//-----------------------------------------------------------------------------------------------------------
	public String result(@RequestParam("userProfile") MultipartFile multi, HttpServletRequest request, 
						HttpServletResponse response, Model model) throws Exception;
	
	//-----------------------------------------------------------------------------------------------------------
	// myPost
	//-----------------------------------------------------------------------------------------------------------
	public ModelAndView myPost( MyCriteria cri,HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;
} // END - public interface MypageController
