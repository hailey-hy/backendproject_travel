package com.korea.travel.purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PurchaseController {

	@Autowired
	@Qualifier("purchaseservice")
	PurchaseService service;
	
	
	  // <1> 데이터 저장 -- 구매목록페이지
	  
		
//		  @RequestMapping(value = "/activities?location=강원도", method = RequestMethod.GET) 
//		  public String insertform() { 
//			  return "activities/activityView"; 
//		  }
		 
	 

	// <1> 데이터 저장 -- 회원가입 데이터베이스 연결
	@RequestMapping(value = "/purchase", method = RequestMethod.GET)
	public ModelAndView insertpurchase(PurchaseDTO dto) {
		// dto.setId(request.getParameter("id")
		/* int result = service.insertpurchase(product, count, date); */
		int result = service.insertpurchase(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("purchaseDTO", dto);
		mv.addObject("result", result); // int
		System.out.println(dto);
		mv.setViewName("purchase");
		return mv;
	}
}
