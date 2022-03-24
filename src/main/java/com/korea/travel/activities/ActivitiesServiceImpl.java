package com.korea.travel.activities;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("activitiesservice")
public class ActivitiesServiceImpl implements ActivitiesService{

	@Autowired
	@Qualifier("activitiesdao")
	ActivitiesDAO dao;
	
	@Override
	public List<ActivitiesDTO> activityList(String location) {
		return dao.activityLocationList(location);
	}
	/*public List<ActivitiesDTO> activityListCcdo(String product) {
		return dao.activityLocationList(product);
	}

	@Override
	public List<ActivitiesDTO> activityListGgdo(String product) {
		return dao.activityLocationList(product);
	}

	@Override
	public List<ActivitiesDTO> activityListGsdo(String product) {
		return dao.activityLocationList(product);
	}

	@Override
	public List<ActivitiesDTO> activityListGwdo(String product) {
		return dao.activityLocationList(product);
	}

	@Override
	public List<ActivitiesDTO> activityListJjdo(String product) {
		return dao.activityLocationList(product);
	}

	@Override
	public List<ActivitiesDTO> activityListJldo(String product) {
		return dao.activityLocationList(product);
	}
*/
}
