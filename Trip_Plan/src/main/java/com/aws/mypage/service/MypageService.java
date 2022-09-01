package com.aws.mypage.service;

import org.springframework.dao.DataAccessException;

import com.aws.member.vo.MemberVO;

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
		
}// end - public interface MypageService
