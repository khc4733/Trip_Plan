package com.aws.contents;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface ContentsController {
	
	public	ModelAndView Seoul1(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public	ModelAndView Seoul2(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
