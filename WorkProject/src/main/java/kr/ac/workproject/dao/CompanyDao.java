package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;

public interface CompanyDao {

	int cityCount(String cityName);

	List<Work> cityList(String cityName);

	List<VipWork> vipcityList(String vipCityName);

}
