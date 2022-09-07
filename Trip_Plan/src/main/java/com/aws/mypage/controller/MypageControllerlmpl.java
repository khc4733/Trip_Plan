package com.aws.mypage.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.PageMakerDTO;
import com.aws.board.dto.boardDTO;
import com.aws.board.service.boardService;
import com.aws.member.service.MemberService;
import com.aws.member.vo.MemberVO;
import com.aws.mypage.dto.MyCriteria;
import com.aws.mypage.dto.myPageMakerDTO;
import com.aws.mypage.service.MypageService;



@Controller("mypageController")
@RequestMapping("/mypage")	// url에서 /mypage로 시작하는 것들을 처리하는 컨트롤러
public class MypageControllerlmpl implements MypageController {

	@Autowired
	private MemberVO memberVO;
	
	@Autowired
	private MypageService mypageService;
	
	//----------------------------------------------------------------------------------------------------
	// mypage
	//----------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public ModelAndView Mypage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/mypage");
		return mav;
		
	}

	//----------------------------------------------------------------------------------------------------
	// 개인 정보 확인 페이지(8.3)
	//----------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/myInfo", method=RequestMethod.GET)
	public ModelAndView MyInfo( HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mypage/myInfo");
		
		return mav;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/modifyMember.do", method=RequestMethod.POST)
	public ModelAndView modifyMember(MemberVO memberVO, HttpServletRequest request, HttpServletResponse response)
			    throws Exception {
			
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int result = mypageService.modifyMember(memberVO);
		HttpSession session = request.getSession(true);
		session.removeAttribute("member");
		session.setAttribute("member", 	memberVO);
		memberVO = (MemberVO) session.getAttribute("member");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mypage/myInfo");
		return mav;
		    
	}// end - public ModelAndView modifyMember
		
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/removeMember", method=RequestMethod.GET)
	public ModelAndView removeMember(String id, HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
			
		request.setCharacterEncoding("UTF-8");
		int result = mypageService.removeMember(id);
		
		ModelAndView mav = new ModelAndView("redirect:/");
		session.invalidate();
		return mav;
		
	}// end - public ModelAndView removeMember

	//-----------------------------------------------------------------------------------------------------------
	// summary
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/summary", method=RequestMethod.GET)
	public ModelAndView summary(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		if(memberVO.getProfileImg() == null || memberVO.getProfileImg() == "") {
			memberVO.setProfileImg("${contextPath}/resources/images/profile.jpg");
		} else {
			File file = new File(memberVO.getProfileImg());
		}
		
		mav.setViewName("/mypage/summary");
		return mav;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록하기
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@ResponseBody
	@RequestMapping(value="/imgUpload", method = RequestMethod.POST)
	public String result(@RequestParam("userProfile") MultipartFile multi, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		try {
			if(!multi.isEmpty())
			{
				String originFilename = multi.getOriginalFilename(); 
				String Path = request.getSession().getServletContext().getRealPath("/").concat("resources");
				File file = new File(Path + "/images", originFilename);

				multi.transferTo(file);
				memberVO.setId(request.getParameter("id"));
				memberVO.setProfileImg("images/" + originFilename);
				int result = mypageService.updateProfile(memberVO); 
				memberVO = mypageService.update(memberVO);
				HttpSession session = request.getSession(true);
				session.removeAttribute("member");
				session.setAttribute("member", 	memberVO);
				memberVO = (MemberVO) session.getAttribute("member");				

				if(result > 0) {
					return "Y";
				}
			}
		} catch(Exception e) {
			System.out.println(e);
		}
		return "N";
		
	}

	//-----------------------------------------------------------------------------------------------------------
	// MyPost
	//-----------------------------------------------------------------------------------------------------------
	@Override
	@RequestMapping(value="/myPost", method = RequestMethod.GET)
	public ModelAndView myPost(MyCriteria cri,HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession(true);
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		System.out.println("rrrrsdad"+memberVO.getNname()); 
		cri.setWriter(memberVO.getNname());
		List<boardDTO> myList = mypageService.myboardList(cri);
		
		model.addAttribute("myList", myList);
		
        System.out.println("aaaarrrr"+myList);

		
        int total = mypageService.myTotal(cri.getWriter());
        System.out.println("rrrr"+total);
        
        myPageMakerDTO pageMake = new myPageMakerDTO(cri, total);
        
        model.addAttribute("mypageMaker", pageMake);
				
		mav.setViewName("/mypage/mypost");
		return mav;
	}

	

	
}//END - public class MypageControllerlmpl implements MypageController
