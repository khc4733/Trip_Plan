package com.aws.tp.dao;

import java.util.List;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;

public interface tpDAO {
	//----------------------------------------------------------------------------------------------------------
	// REVIEW 목록
	//----------------------------------------------------------------------------------------------------------
	public List<boardDTO> getListWithPaging();
}
