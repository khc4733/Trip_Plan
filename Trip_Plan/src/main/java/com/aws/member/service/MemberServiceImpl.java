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
	// 회원 가입 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int addMember(MemberVO memberVO) throws DataAccessException {
		
		System.out.println("MemberServiceImpl에서 받은 memberVO ==> " + memberVO);
		return memberDAO.addMember(memberVO); 

	}

	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public MemberVO login(MemberVO memberVO) throws DataAccessException {
		return memberDAO.loginByID(memberVO);
	}

	//-----------------------------------------------------------------------------------------------------------
	// 아이디 중복 검사(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int idCheck(MemberVO memberVO) throws Exception {

		System.out.println("MemberService 아이디 중복 검사(Ajax)");
		int result = memberDAO.idCheck(memberVO);
		return result;
	}

	//-----------------------------------------------------------------------------------------------------------
	// 아이디 찾기(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public String Id_find(MemberVO memberVO) throws Exception {

		String result = memberDAO.Id_find(memberVO);
		return result;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 비밀번호 찾기(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public String Pw_find(MemberVO memberVO) throws Exception {

		String result = memberDAO.Pw_find(memberVO);
		return result;
	}
	




} // End - public class MemberServiceImpl implements MemberService






