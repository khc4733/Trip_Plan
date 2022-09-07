package com.aws.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;

public interface BoardController {
	
	public ModelAndView Notice(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Subway(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwbs(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwdg(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwdj(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwgj(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//----------------------------------------------------------------------------------------------------------
	// 리뷰 목록
	//----------------------------------------------------------------------------------------------------------
	public ModelAndView boardList(Criteria cri,HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;
	
	//----------------------------------------------------------------------------------------------------------
	// 리뷰 쓰기 화면
	//----------------------------------------------------------------------------------------------------------
	public ModelAndView boardRegisterForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 등록하기
	//------------------------------------------------------------------------------------------------------
	public ModelAndView boardRegister(@ModelAttribute("boardDTO")boardDTO boardDTO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 상세 조회
	//------------------------------------------------------------------------------------------------------
	public String boardDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 수정 
	//------------------------------------------------------------------------------------------------------
	public ModelAndView boardUpdateForm(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 삭제
	//------------------------------------------------------------------------------------------------------
	public String boardDelete(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception;
}
