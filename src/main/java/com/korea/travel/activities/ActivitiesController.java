package com.korea.travel.activities;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ActivitiesController {
	
	@Autowired
	@Qualifier("activitiesservice")
	ActivitiesService service;
	
	// 1. 여행지티켓 메인 뷰
	@RequestMapping("/activities/main")
	public ModelAndView mainView() throws Exception {
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("activities/activities_main");
		return mv; 
	}
	
	// 2. 전체 뷰
	@RequestMapping("/activities")
	public ModelAndView activityView(@RequestParam("location") String location) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ActivitiesDTO> list = service.activityList(location);
		mv.addObject("activityLocationList", list);
		mv.setViewName("activities/activityView");
		return mv; 
	}
	
	/*
	 * // 2. 충청도 뷰
	 * 
	 * @RequestMapping("/activities") public ModelAndView ccdoView(String location)
	 * throws Exception { ModelAndView mv = new ModelAndView(); List<ActivitiesDTO>
	 * list = service.activityListCcdo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_ccdo"); return mv; }
	 * 
	 * // 3. 경기도 뷰
	 * 
	 * @RequestMapping("/activities/ggdo") public ModelAndView ggdoView(String
	 * location) throws Exception { ModelAndView mv = new ModelAndView();
	 * List<ActivitiesDTO> list = service.activityListGgdo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_ggdo"); return mv; }
	 * 
	 * // 4. 경상도 뷰
	 * 
	 * @RequestMapping("/activities/gsdo") public ModelAndView gsdoView(String
	 * location) throws Exception { ModelAndView mv = new ModelAndView();
	 * List<ActivitiesDTO> list = service.activityListGsdo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_gsdo"); return mv; } // 5. 강원도 뷰
	 * 
	 * @RequestMapping("/activities/gwdo") public ModelAndView gwdoView(String
	 * location) throws Exception { ModelAndView mv = new ModelAndView();
	 * List<ActivitiesDTO> list = service.activityListGwdo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_gwdo"); return mv; }
	 * 
	 * // 6. 제주도 뷰
	 * 
	 * @RequestMapping("/activities/jjdo") public ModelAndView jjdoView(String
	 * location) throws Exception { ModelAndView mv = new ModelAndView();
	 * List<ActivitiesDTO> list = service.activityListJjdo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_jjdo"); return mv; }
	 * 
	 * // 7. 전라도
	 * 
	 * @RequestMapping("/activities/jldo") public ModelAndView jldoView(String
	 * location) throws Exception { ModelAndView mv = new ModelAndView();
	 * List<ActivitiesDTO> list = service.activityListJldo(location);
	 * mv.addObject("activityLocationList", list);
	 * mv.setViewName("activities/activities_jldo"); return mv; }
	 */
	

}
