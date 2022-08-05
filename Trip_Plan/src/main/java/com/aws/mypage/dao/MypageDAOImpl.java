package com.aws.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.aws.member.vo.MemberVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException {

		int result = sqlSession.update("mapper.member.updateMember", memberVO);
	    return result;
	    
	} // end - public int updateMember

	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int deleteMember(String id) throws DataAccessException {

		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
		
	}// end - public int deleteMember

}// end - public class MypageDAOImpl implements MypageDAO
