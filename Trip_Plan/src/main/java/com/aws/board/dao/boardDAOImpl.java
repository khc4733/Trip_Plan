package com.aws.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;

@Repository
public class boardDAOImpl implements boardDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.aws.board";
	
	
	//------------------------------------------------------------------------------------------------------
	// 제일 큰 리뷰 번호 가져오기
	//------------------------------------------------------------------------------------------------------
	@Override
	public Integer getMaxSeq() {
		
		return sqlSession.selectOne(namespace + ".maxSeq");
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 등록하기
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardRegister(boardDTO boardDTO) {
		
		return sqlSession.insert(namespace + ".register", boardDTO);
	}

	//------------------------------------------------------------------------------------------------------
	// 조회수 증가시키기
	//------------------------------------------------------------------------------------------------------
	@Override
	public void updateReadCount(int seq) {
		sqlSession.update(namespace + ".updateReadCount", seq);
		
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 상세 조회
	//------------------------------------------------------------------------------------------------------
	@Override
	public boardDTO boardDetail(int seq) {
		
		return sqlSession.selectOne(namespace + ".detail", seq);
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 수정 
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardUpdate(boardDTO boardDTO) {
		
		return sqlSession.update(namespace + ".update", boardDTO);
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 삭제
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardDelete(int seq) {
		
		return sqlSession.delete(namespace + ".delete", seq);
	}
	
	//----------------------------------------------------------------------------------------------------------
	// REVIEW 목록
	//----------------------------------------------------------------------------------------------------------
	@Override
	public List<boardDTO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		System.out.println("boardDAOImpl....."+cri);
		return sqlSession.selectList(namespace + ".getListWithPaging",cri);
	}
	
	//----------------------------------------------------------------------------------------------------------
	// 총 게시글 수
	//----------------------------------------------------------------------------------------------------------
	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".getTotal");
	}
	
	
	

} // END - public class boardDAOImpl implements boardDAO 
