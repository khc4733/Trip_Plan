package com.aws.area;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface AreaController {

	
	public	ModelAndView Seoul(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Incheon(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Daejeon(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Ulsan(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Busan(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Gwangju(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Jeju(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
