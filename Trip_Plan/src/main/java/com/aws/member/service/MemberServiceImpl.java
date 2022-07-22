package com.aws.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.aws.member.dao.MemberDAO;
import com.aws.member.vo.MemberVO;

//-----------------------------------------------------------------------------------------------------------
// public class MemberServiceImpl implements MemberService
//-----------------------------------------------------------------------------------------------------------
@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	


	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public MemberVO login(MemberVO memberVO) throws DataAccessException {
		return memberDAO.loginByID(memberVO);
	}






} // End - public class MemberServiceImpl implements MemberService






