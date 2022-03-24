package com.korea.travel.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



@Service("memberservice")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("memberdao")
	MemberDAO dao;

	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}
	@Override
	public int updatemember(MemberDTO dto) {
		return dao.updatemember(dto);
	}

	@Override
	public boolean loginCheck(MemberDTO dto, HttpSession session) {
		
		boolean result = dao.loginCheck(dto);
		if (result == true) {	//true 일경우 세션 등록
			//세션 변수 등록
			session.setAttribute("id", dto.getId());
		}
		
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}
	/*
	 * @Override public int updatemember(MemberDTO dto) { return
	 * dao.updatemember(dto); }
	 */
	 
	
	

	
	

	
	
}