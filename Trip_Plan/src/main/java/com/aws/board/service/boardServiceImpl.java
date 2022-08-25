package com.aws.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.aws.board.dto.boardDTO;
import com.aws.board.dao.boardDAO;

@Service
public class boardServiceImpl implements boardService {

	@Inject
	private boardDAO boardDAO;
	
	//------------------------------------------------------------------------------------------------------
	// REVIEW 목록
	//------------------------------------------------------------------------------------------------------
	@Override
	public List<boardDTO> boardList() throws Exception {
		
		System.out.println("boardServiceImpl.....");
		return boardDAO.boardList();
	}
	
	//------------------------------------------------------------------------------------------------------
	// 리뷰 등록 처리
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardRegister(boardDTO boardDTO) throws Exception {

		if(boardDAO.getMaxSeq() == null) {
			boardDTO.setSeq(1);				// 첫 리뷰 번호는 1로 한다.
		} else {							// 리뷰가 하나라도 존재한다면 최대값에 1을 더한 값을 글 번호로 한다.
			boardDTO.setSeq(boardDAO.getMaxSeq() + 1);
		}
		return boardDAO.boardRegister(boardDTO);
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 상세 조회
	//------------------------------------------------------------------------------------------------------
	@Override
	public boardDTO boardDetail(int seq) throws Exception {
		// 조회수 1 증가 시킨다.
		boardDAO.updateReadCount(seq);
		// 해당 리뷰 가져오기
		return boardDAO.boardDetail(seq);
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 수정 화면
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardUpate(boardDTO boardDTO) {
		
		return boardDAO.boardUpdate(boardDTO);
	}

	//------------------------------------------------------------------------------------------------------
	// 리뷰 삭제
	//------------------------------------------------------------------------------------------------------
	@Override
	public int boardDelete(int seq) {
		
		return boardDAO.boardDelete(seq);
	}

	
} // END - public class boardServiceImpl implements boardService
