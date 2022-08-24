package com.aws.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller("boardController")
@RequestMapping("/board")	// url에서 /area로 시작하는 것들을 처리하는 컨트롤러
public class BoardControllerImpl implements BoardController {

	@Override
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public ModelAndView Review(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/review");
		return mav;
	}

	@Override
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public ModelAndView Notice(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/notice");
		return mav;
	}

	@Override
	@RequestMapping(value="/subway", method=RequestMethod.GET)
	public ModelAndView Subway(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/subway");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/sbwbs", method=RequestMethod.GET)
	public ModelAndView Sbwgj(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/sbwbs");
		return mav;
	}

	@Override
	@RequestMapping(value="/sbwdg", method=RequestMethod.GET)
	public ModelAndView Sbwbs(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/sbwdg");
		return mav;
	}

	@Override
	@RequestMapping(value="/sbwdj", method=RequestMethod.GET)
	public ModelAndView Sbwdg(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/sbwdj");
		return mav;
	}

	@Override
	@RequestMapping(value="/sbwgj", method=RequestMethod.GET)
	public ModelAndView Sbwdj(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/sbwgj");
		return mav;
	}

	
}
