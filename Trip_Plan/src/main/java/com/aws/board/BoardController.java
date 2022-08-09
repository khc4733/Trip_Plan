package com.aws.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BoardController {

	public ModelAndView Review(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}
