package com.aws.mypage.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;
import com.aws.member.vo.MemberVO;
import com.aws.mypage.dto.MyCriteria;

public interface MypageService {

	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public int modifyMember(MemberVO memberVO) throws DataAccessException;
		 
	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public int removeMember(String id) throws DataAccessException;
	
	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록	
	//-----------------------------------------------------------------------------------------------------------
	public int updateProfile(MemberVO memberVO) throws DataAccessException;
	
	//------------------------------------------------------------------------------------------------------
	// mypost 목록
	//------------------------------------------------------------------------------------------------------
	public List<boardDTO> myboardList(MyCriteria cri) throws Exception;
	
	//------------------------------------------------------------------------------------------------------
	// 총 게시글 수
	//------------------------------------------------------------------------------------------------------
	public int myTotal(String nname);
		
}// end - public interface MypageService
