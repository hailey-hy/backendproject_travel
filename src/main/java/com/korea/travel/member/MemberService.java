package com.korea.travel.member;

import javax.servlet.http.HttpSession;



public interface MemberService {
	public int insertmember(MemberDTO dto);
	//public int updatemember(MemberDTO dto);
	
	
	public int updatemember(MemberDTO dto); 
	
	//로그인 체크
	public boolean loginCheck(MemberDTO dto,HttpSession session);
	
	//로그 아웃
	public void logout(HttpSession session);

	
	

}
