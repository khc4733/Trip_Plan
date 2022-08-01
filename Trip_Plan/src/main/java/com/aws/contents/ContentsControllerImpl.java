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
	
	@Override
	@RequestMapping(value="/seoul/seoul2", method=RequestMethod.GET)
	public ModelAndView Seoul2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/seoul/seoul2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/incheon/incheon1", method=RequestMethod.GET)
	public ModelAndView Incheon1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/incheon/incheon1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/incheon/incheon2", method=RequestMethod.GET)
	public ModelAndView Incheon2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/incheon/incheon2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/daejeon/daejeon1", method=RequestMethod.GET)
	public ModelAndView Daejeon1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/daejeon/daejeon1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/daejeon/daejeon2", method=RequestMethod.GET)
	public ModelAndView Daejeon2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/daejeon/daejeon2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/daegu/daegu1", method=RequestMethod.GET)
	public ModelAndView Daegu1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/daegu/daegu1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/daegu/daegu2", method=RequestMethod.GET)
	public ModelAndView Daegu2(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/daegu/daegu2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/busan/busan1", method=RequestMethod.GET)
	public ModelAndView Busan1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/busan/busan1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/busan/busan2", method=RequestMethod.GET)
	public ModelAndView Busan2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/busan/busan2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/gwangju/gwangju1", method=RequestMethod.GET)
	public ModelAndView Gwangju1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/gwangju/gwangju1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/gwangju/gwangju2", method=RequestMethod.GET)
	public ModelAndView Gwangju2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/gwangju/gwangju2");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/jeju/jeju1", method=RequestMethod.GET)
	public ModelAndView Jeju1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/jeju/jeju1");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/jeju/jeju2", method=RequestMethod.GET)
	public ModelAndView Jeju2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/contents/jeju/jeju2");
		return mav;
	}

}
