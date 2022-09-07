package com.aws.tp.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.aws.board.dto.boardDTO;

@Repository
public class tpDAOImpl implements tpDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.aws.board";
	
	@Override
	public List<boardDTO> getListWithPaging() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".bestreview");
	}

}
