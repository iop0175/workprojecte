package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.model.Work;

public interface CompanyService {

	int cityCount(String cityName);

	List<Work> cityList(String cityName);

	List<Work> vipcityList(String vipCityName);

	int comBrn(String comName);

	Company mycom(String comName);

	void addcom(Signcom signcom);

	void delcom(Signcom signcom);

}
