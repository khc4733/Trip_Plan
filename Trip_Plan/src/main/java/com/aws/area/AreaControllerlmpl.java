package com.aws.area;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




@Controller("areaController")
@RequestMapping("/area")	// url에서 /area로 시작하는 것들을 처리하는 컨트롤러
public class AreaControllerlmpl implements AreaController {


	@Override
	@RequestMapping(value="/seoul", method=RequestMethod.GET)
	public ModelAndView Seoul(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/area/seoul");
		return mav;
	}

	@Override
	@RequestMapping(value="/incheon", method=RequestMethod.GET)
	public ModelAndView Incheon(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/area/incheon");
		return mav;
	}

	@Override
	@RequestMapping(value="/daejeon", method=RequestMethod.GET)
	public ModelAndView Daejeon(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/area/daejeon");
		return mav;
	}

}
