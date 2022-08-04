package com.aws.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.aws.member.vo.MemberVO;

//-----------------------------------------------------------------------------------------------------------
// public class MemberDAOImpl implements MemberDAO
//-----------------------------------------------------------------------------------------------------------
@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;



	//-----------------------------------------------------------------------------------------------------------
	// 로그인 처리
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public MemberVO loginByID(MemberVO memberVO) throws DataAccessException {
		MemberVO memVO = sqlSession.selectOne("mapper.member.loginByID", memberVO);
		return memVO;
	}

	//-----------------------------------------------------------------------------------------------------------
	// 아이디 중복 검사(Ajax)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int idCheck(MemberVO memberVO) throws DataAccessException {

		System.out.println("MemberDAOImpl idCheck() id : " + memberVO.getId());

		return sqlSession.selectOne("mapper.member.idCheck", memberVO);
		
	}
	
	


	
	
} // End - public class MemberDAOImpl implements MemberDAO






