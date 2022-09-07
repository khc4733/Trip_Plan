package com.aws.tp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;
import com.aws.tp.dao.tpDAO;

@Service
public class tpServiceImpl implements tpService {
	@Inject
	private tpDAO tpDAO;

	@Override
	public List<boardDTO> bestreview() throws Exception {
		// TODO Auto-generated method stub
		return tpDAO.getListWithPaging();
	}

}
