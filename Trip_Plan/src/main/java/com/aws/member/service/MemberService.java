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


	
	
	
	
} // End - public interface MemberService
















