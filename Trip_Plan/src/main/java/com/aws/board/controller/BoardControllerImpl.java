package com.aws.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aws.board.dto.boardDTO;
import com.aws.board.service.boardService;


@Controller("boardController")
@RequestMapping("/board")	// url에서 /board로 시작하는 것들을 처리하는 컨트롤러
public class BoardControllerImpl implements BoardController {

	@Inject
	private boardService boardService;
	
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

	//----------------------------------------------------------------------------------------------------------
	// 리뷰 목록
	//----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/boardList", method = RequestMethod.GET)
	// public void boardList(Locale locale, Model model) throws Exception {
	public ModelAndView boardList(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		ModelAndView mav = new ModelAndView();
		System.out.println("********** BoardController.....");
		List<boardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		System.out.println("********** BoardController boardList ==> " + boardList);
				
		mav.setViewName("/board/boardList");
		return mav;
	}

	//----------------------------------------------------------------------------------------------------------
	// 리뷰 쓰기 화면
	//----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/boardRegisterForm", method = RequestMethod.GET)
	public ModelAndView boardRegisterForm(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/boardRegisterForm");
		return mav;
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 등록하기
	//------------------------------------------------------------------------------------------------------
	@ResponseBody
	@Override
	@RequestMapping(value="/boardRegister", method = RequestMethod.POST)
	public ModelAndView boardRegister(@ModelAttribute("boardDTO")boardDTO boardDTO, HttpServletRequest request, HttpServletResponse response) throws Exception {

	      Date date = new Date(System.currentTimeMillis());
	      SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
	      
	      boardDTO.setReg_date(format.format(date));
	      
	      System.out.println("MemberController 로그인 member.getId() ==> " + boardDTO);
	      
	      

	      int result = 0;
	      // 사용자가 입력한 정보를 서비스에게 넘겨주어 처리하게 한다.
	      result = boardService.boardRegister(boardDTO);
	      
	      ModelAndView mav = new ModelAndView("redirect:/board/boardList");

	      return mav;

	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 상세 조회
	//------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/boardDetail", method = RequestMethod.GET)
	public String boardDetail(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		boardDTO boardDTO = boardService.boardDetail(Integer.parseInt((String) request.getParameter("seq")));
		
		model.addAttribute("boardDetail", boardDTO);
		return "/board/boardDetail";
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 수정 
	//------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/boardUpdateForm", method = RequestMethod.POST)
	public ModelAndView boardUpdateForm(boardDTO boardDTO, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {
	     Date date = new Date(System.currentTimeMillis());
	     SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmm");
	      
	     boardDTO.setReg_date(format.format(date));
		
		int result = boardService.boardUpdate(boardDTO);
		System.out.println("MemberController 로그인 ==> " + boardDTO);
		String seq = Integer.toString(boardDTO.getSeq());
		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.setViewName("redirect:/board/boardDetail");
		return mav;
	}
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 삭제
	//------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/boardDelete", method = RequestMethod.GET)
	public ModelAndView boardDelete(int seq, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("MemberController 로그인 member.getId() ==> " + seq );
		request.setCharacterEncoding("UTF-8");
		int result = boardService.boardDelete(seq);
		
		ModelAndView mav = new ModelAndView("redirect:/board/boardList");
		return mav;
	}

	
	
}
