package com.aws.mypage.dao;

import org.springframework.dao.DataAccessException;

import com.aws.member.vo.MemberVO;

public interface MypageDAO {

	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public int updateMember(MemberVO memberVO) throws DataAccessException;
		
	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	public int deleteMember(String id) throws DataAccessException;
		
}// end - public interface MypageDAO
