package com.aws.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.aws.board.dto.Criteria;
import com.aws.board.dto.boardDTO;
import com.aws.member.vo.MemberVO;
import com.aws.mypage.dao.MypageDAO;
import com.aws.mypage.dto.MyCriteria;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	//-----------------------------------------------------------------------------------------------------------
	// 회원 정보 수정하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int modifyMember(MemberVO memberVO) throws DataAccessException {
		
		return mypageDAO.updateMember(memberVO);
		
	}// end - public int modifyMember

	//-----------------------------------------------------------------------------------------------------------
	// 회원 탈퇴하기 (8.4)
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int removeMember(String id) throws DataAccessException {

		return mypageDAO.deleteMember(id);
		
	}// end - public int removeMember

	//-----------------------------------------------------------------------------------------------------------
	// 프로필 사진 등록	
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public int updateProfile(MemberVO memberVO) throws DataAccessException {
		
		return mypageDAO.updateProfile(memberVO);
	}

	//------------------------------------------------------------------------------------------------------
	// REVIEW 목록
	//------------------------------------------------------------------------------------------------------
	@Override
	public List<boardDTO> myboardList(MyCriteria cri) throws Exception {
		
		System.out.println("boardServiceImpl.....");
		return mypageDAO.getListWithPaging(cri);
	}
	
	//------------------------------------------------------------------------------------------------------
	// 총 게시글 수
	//------------------------------------------------------------------------------------------------------
	@Override
	public int myTotal(String nname) {
		// TODO Auto-generated method stub
		return mypageDAO.myTotal(nname);
	
	}  
	
	//-----------------------------------------------------------------------------------------------------------
	// 갱신
	//-----------------------------------------------------------------------------------------------------------
	@Override
	public MemberVO update(MemberVO memberVO) throws DataAccessException {
		return mypageDAO.update(memberVO);
	}
} // end - public class MypageServiceImpl implements MypageService
