package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.model.Work;

public interface CompanyDao {

	int cityCount(String cityName);

	List<Work> cityList(String cityName);

	List<Work> vipcityList(String vipCityName);

	Long comBrn(String comName);

	Company mycom(String comName);

	void addcom(Signcom signcom);

	void delcom(Signcom signcom);

	int fieldsear(String field);

	List<Work> fieldList(String field);

	List<Work> fieldVipList(String field);

	Company view(String company);

	List<Work> workListmajor();

	List<Work> workVipListmajor();

	List<Work> workListsmall();

	List<Work> workVipListsmall();

	List<Work> mywork(String comname);

	List<Signcom> mysign(String comname);

}
