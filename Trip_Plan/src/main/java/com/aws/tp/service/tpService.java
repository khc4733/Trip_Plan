package com.aws.tp.service;

import java.util.List;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;

public interface tpService {
	public List<boardDTO> bestreview() throws Exception;
}
