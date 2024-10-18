package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.CompanyDao;
import kr.ac.workproject.model.VipWork;
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
	public List<VipWork> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return dao.vipcityList(vipCityName);
	}

}
