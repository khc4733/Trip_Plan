package com.aws.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BoardController {

	public ModelAndView Review(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Notice(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Subway(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwbs(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwdg(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwdj(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView Sbwgj(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	
	
}
