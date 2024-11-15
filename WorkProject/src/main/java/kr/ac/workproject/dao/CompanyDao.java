package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.model.Work;

public interface CompanyDao {

	int cityCount(String cityName);

	List<Work> cityList(String cityName);

	List<Work> vipcityList(String vipCityName);

	int comBrn(String comName);

	Company mycom(String comName);

	void addcom(Signcom signcom);

	void delcom(Signcom signcom);

}
