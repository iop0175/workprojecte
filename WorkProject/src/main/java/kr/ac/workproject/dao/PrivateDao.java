package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Private;

public interface PrivateDao {

	void add(Private pri);

	List<Private> list();

	List<Private> viplist();

	List<Private> vipcityList(String vipCityName);

	List<Private> cityList(String cityName);

	int cityCount(String cityName);

	int fieldsear(String field);

	List<Private> fieldList(String field);

	List<Private> fieldVipList(String field);

}
