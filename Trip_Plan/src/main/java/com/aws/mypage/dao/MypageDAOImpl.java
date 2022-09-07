package com.aws.mypage.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;
import com.aws.member.vo.MemberVO;
import com.aws.mypage.dto.MyCriteria;

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

	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록	
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int updateProfile(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.update("mapper.member.updateProfile", memberVO);
	    return result;
	}
	
	//-----------------------------------------------------------------------------------------------------------
	// 총 게시글 수
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int myTotal(String nname) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.member.myTotal",nname);
	}
	
	//----------------------------------------------------------------------------------------------------------
	// REVIEW 목록
	//----------------------------------------------------------------------------------------------------------
	@Override
	public List<boardDTO> getListWithPaging(MyCriteria cri) {
		// TODO Auto-generated method stub
 
		return sqlSession.selectList("mapper.member.mylist",cri);
	}

	//-----------------------------------------------------------------------------------------------------------
	// 갱신
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public MemberVO update(MemberVO memberVO) throws DataAccessException {
		MemberVO memVO = sqlSession.selectOne("mapper.member.loginByID", memberVO);
		return memVO;
	}

}// end - public class MypageDAOImpl implements MypageDAO
