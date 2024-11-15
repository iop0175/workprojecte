package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.CompanyDao;
import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Signcom;
import kr.ac.workproject.model.Work;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	CompanyDao dao;
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return dao.cityCount(cityName);
	}
	@Override
	public List<Work> cityList(String cityName) {
		// TODO Auto-generated method stub
		return dao.cityList(cityName);
	}
	@Override
	public List<Work> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return dao.vipcityList(vipCityName);
	}
	@Override
	public int comBrn(String comName) {
		// TODO Auto-generated method stub
		return dao.comBrn(comName);
	}
	@Override
	public Company mycom(String comName) {
		// TODO Auto-generated method stub
		return dao.mycom(comName);
	}
	@Override
	public void addcom(Signcom signcom) {
		dao.addcom(signcom);
		
	}
	@Override
	public void delcom(Signcom signcom) {
		dao.delcom(signcom);
		
	}

}
