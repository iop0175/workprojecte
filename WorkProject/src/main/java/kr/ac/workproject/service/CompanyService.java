package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;

public interface CompanyService {

	int cityCount(String cityName);

	List<Work> cityList(String cityName);

	List<VipWork> vipcityList(String vipCityName);

}
