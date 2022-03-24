package com.korea.travel.member;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MemberController {
	

	@Autowired
	@Qualifier("memberservice")
	MemberService service;
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String insertform() {
		return "member/signup";
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public ModelAndView insertresult(MemberDTO dto) {
		//dto.setId(request.getParameter("id")
		int result = service.insertmember(dto);//id,phone,email 중복 불가능
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result); //int
		mv.setViewName("member/signupresult");
		return mv;
	}
	// 로그인 뷰
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
// <2> 수정 -- 회원정보수정 폼 연결 - /membermybatisupdate?id=?
	@RequestMapping(value = "/updatebegin", method = RequestMethod.GET)
	public String updatebegin(String id) {
		return "member/updatebegin"; // 주소 이름 수정 폼
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateform(@RequestParam("id") String id) {
		return "member/updateform"; // 주소 이름 수정 폼
	}
	
	// <2> 수정 -- 회원정보수정 데이터베이스 연결 - 뷰
	// <form action="membermybatisupdate" method="post">
	@RequestMapping(value = "/updateresult", method = RequestMethod.POST)
	public ModelAndView updateresult(MemberDTO dto) { // id(고정), name, address 입력
		// dto.setId(request.getParameter("id")
		int result = service.updatemember(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result); // 업데이트 행의 갯수
		mv.setViewName("member/updateresult");
		return mv;
	}
	
	
	//로그인 처리
	@RequestMapping(value="/logincheck")
	public ModelAndView loginCheck(@ModelAttribute MemberDTO dto, HttpSession session) {
		
		boolean result = service.loginCheck(dto, session); // 구현해야함 서비스 메서드
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("member/login");
		
		if(result) {
			mv.addObject("msg","성공");
		}else {
			mv.addObject("msg","실패");
		}
		
		return mv;
	}
	
	//로그아웃 처리
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session) {
		
		service.logout(session); // 구현해야함
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
		mv.addObject("msg", "logout");
		
		return mv;
	}
	
	/*
	 * @RequestMapping(value="/membermybatisupdate", method = RequestMethod.GET)
	 * public String updateform(String id) { return "mybatis/updateform";}
	 * 
	 * 
	 * 
	 * @RequestMapping(value="/membermybatisupdate", method = RequestMethod.POST)
	 * public ModelAndView updateresult(MemberDTO dto) {//id(고정), name, address 입력
	 * int result = service.updatemember(dto);//id,phone,email 중복 불가능 ModelAndView
	 * mv = new ModelAndView(); mv.addObject("result", result); //int
	 * mv.setViewName("mybatis/updateresult"); return mv; }
	 */
	
	/*
	 * //로그인폼 화면 뷰 보여주는 메소드
	 * 
	 * @RequestMapping(value="/login", method=RequestMethod.GET) public void
	 * loginform() {//뷰 결과 }
	 */

	/*
	 * //로그인 ajax 처리 메소드
	 * 
	 * @RequestMapping(value="/ajax/login", method=RequestMethod.POST , produces =
	 * {"application/json;charset=utf-8"} )
	 * 
	 * @ResponseBody public String loginresult(String id, String password) {
	 * if(id.equals("ajax") && password.equals("1234")) { return
	 * "{\"process\":\"정상로그인\" , \"role\":\"admin\"}"; } else { return
	 * "{\"process\":\"비정상로그인\" , \"role\":\"user\"}"; }
	 * 
	 * }
	 */
		/*url: '<%=request.getContextPath() %>/ajax/myinform',
		data : {'id':$("#id").val(), 'password':$("#password").val() } , 
		type : 'get' ,*/
		
		/*
		 * @RequestMapping(value="/ajax/myinform" , produces =
		 * {"application/json;charset=utf-8"})
		 * 
		 * @ResponseBody public MemberDTO myinform(String id, String password) {
		 * //spring.mybatis 패키지 service dao dto sql-mapping.xml MemberDTO dto =
		 * service.member(id); System.out.println("/ajax/myinform 호출 ==>"+dto); if(dto
		 * == null) { dto = new MemberDTO(); dto.setId("new"); //클라이언트 id == new } else
		 * if(!dto.getPassword().equals(password)) { dto.setPassword("new");
		 * dto.setEmail(null); dto.setName(null); dto.setPhone(null); } return dto;
		 * //3.pom.xml 라이브러리 <dependency> 자바객체를 json 변환 자동 }
		 * 
		 * @RequestMapping(value="/ajax/memberlist" , produces =
		 * {"application/json;charset=utf-8"})
		 * 
		 * @ResponseBody public List<MemberDTO> memberlist(){ List<MemberDTO> list =
		 * service.memberlist();
		 * 
		 * return list;
		 * 
		 * }
		 */
	
	
}
