package kr.ac.workproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.CompanyDao;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	CompanyDao dao;
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return dao.cityCount(cityName);
	}

}
