package com.aws.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.aws.member.vo.MemberVO;

//-----------------------------------------------------------------------------------------------------------
// public interface MemberService
//-----------------------------------------------------------------------------------------------------------
public interface MemberService {



	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	public MemberVO login(MemberVO memberVO) throws DataAccessException;

	//-----------------------------------------------------------------------------------------------------------
	// 아이디 중복 검사(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	public int idCheck(MemberVO memberVO) throws Exception;
	
	
	
	
} // End - public interface MemberService
















