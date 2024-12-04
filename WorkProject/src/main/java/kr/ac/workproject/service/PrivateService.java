package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Private;

public interface PrivateService {

	void add(Private pri);

	List<Private> list();

	List<Private> VipList();

	List<Private> vipcityList(String vipCityName);

	List<Private> cityList(String cityName);

	int cityCount(String cityName);

	int fieldsear(String field);

	List<Private> fieldList(String field);

	List<Private> fieldVipList(String field);

}
