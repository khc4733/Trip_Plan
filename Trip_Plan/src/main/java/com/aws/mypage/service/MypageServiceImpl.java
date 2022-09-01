package com.aws.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.aws.member.vo.MemberVO;
import com.aws.mypage.dao.MypageDAO;

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

	
	    
} // end - public class MypageServiceImpl implements MypageService
