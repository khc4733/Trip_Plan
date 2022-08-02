package com.aws.contents;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface ContentsController {
	
	public	ModelAndView Seoul1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Seoul2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Seoul3(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Incheon1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Incheon2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Daejeon1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Daejeon2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Daegu1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Daegu2(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public	ModelAndView Busan1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Busan2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Gwangju1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Gwangju2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Jeju1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Jeju2(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
