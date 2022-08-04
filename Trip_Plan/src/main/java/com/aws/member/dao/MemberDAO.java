package com.aws.member.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.aws.member.vo.MemberVO;

//-----------------------------------------------------------------------------------------------------------
// public interface MemberDAO
//-----------------------------------------------------------------------------------------------------------
public interface MemberDAO {


	
	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	public MemberVO loginByID(MemberVO memberVO) throws DataAccessException;
	
	//-----------------------------------------------------------------------------------------------------------
	// 아이디 중복 검사(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public int idCheck(MemberVO memberVO) throws DataAccessException;
	
	

} // End - public interface MemberDAO










