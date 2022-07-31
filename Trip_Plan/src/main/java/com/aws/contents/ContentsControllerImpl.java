package com.aws.contents;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("contentsController")
@RequestMapping("/contents")
public class ContentsControllerImpl implements ContentsController {

	@Override
	@RequestMapping(value="/seoul/seoul1", method=RequestMethod.GET)
	public ModelAndView Seoul1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/seoul/seoul1");
		return mav;
	}

}
