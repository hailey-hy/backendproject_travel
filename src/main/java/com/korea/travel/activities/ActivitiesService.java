package com.korea.travel.activities;

import java.util.List;

public interface ActivitiesService {

	public List<ActivitiesDTO> activityList(String location);
	/*
	 * // 충청도 
	 * public List<ActivitiesDTO> activityListCcdo(String product); // 경기도
	 * public List<ActivitiesDTO> activityListGgdo(String product); // 경상도 public
	 * List<ActivitiesDTO> activityListGsdo(String product); // 강원도 public
	 * List<ActivitiesDTO> activityListGwdo(String product); // 제주도 public
	 * List<ActivitiesDTO> activityListJjdo(String product); // 전라도 public
	 * List<ActivitiesDTO> activityListJldo(String product);
	 */
}
