package com.korea.travel.activities;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("activitiesdao")
public class ActivitiesDAO {

	@Autowired
	SqlSession session; 

	public List<ActivitiesDTO> activityLocationList(String location){
		List<ActivitiesDTO> list = session.selectList("locationsearch",location);
		return list; 
	}
	
	
}
