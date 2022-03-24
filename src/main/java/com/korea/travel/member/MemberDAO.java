package com.korea.travel.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("memberdao")
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	//회원가입
	public int insertmember(MemberDTO dto) {
		
	  int insertrow = session.insert("insertmember", dto); return insertrow; 
	}
	 
	// <2> 수정
		public int updatemember(MemberDTO dto) {
			return session.update("updatemember", dto); // id, name, address' - 수정된 행의 갯수 리턴

	}
		
	//로그인 체크
	public boolean loginCheck(MemberDTO dto) {
		System.out.println("===> Mybatis로 loginCheck() 기능 처리");
		String name = session.selectOne("loginCheck", dto);
		
		// 검색이 안되면 0을 반환해주기 때문에 0과 비교해서 참이면 false, 틀리면 true를 반환
		return (Integer.parseInt(name)==0)?false:true;
	}
	
	//로그 아웃
	public void logout(HttpSession session) {
		System.out.println("===> 로그아웃 기능 처리");
		session.invalidate();
	}
	 
	
	
	/*
	 * public int updatemember(MemberDTO dto) { return
	 * session.update("updatemember", dto);//id, name, address }
	 */
	

		
	
	
}
