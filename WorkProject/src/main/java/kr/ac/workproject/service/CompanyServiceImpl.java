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
	public Long comBrn(String comName) {
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
	@Override
	public int fieldsear(String field) {
		// TODO Auto-generated method stub
		return dao.fieldsear(field);
	}
	@Override
	public List<Work> fieldList(String field) {
		// TODO Auto-generated method stub
		return dao.fieldList(field);
	}
	@Override
	public List<Work> fieldVipList(String field) {
		// TODO Auto-generated method stub
		return dao.fieldVipList(field);
	}
	@Override
	public Company view(String company) {
		// TODO Auto-generated method stub
		return dao.view(company);
	}
	@Override
	public List<Work> workListmajor() {
		// TODO Auto-generated method stub
		return dao.workListmajor();
	}
	@Override
	public List<Work> workVipListmajor() {
		// TODO Auto-generated method stub
		return dao.workVipListmajor();
	}
	@Override
	public List<Work> workListsmall() {
		// TODO Auto-generated method stub
		return dao.workListsmall();
	}
	@Override
	public List<Work> workVipListsmall() {
		// TODO Auto-generated method stub
		return dao.workVipListsmall();
	}
	@Override
	public List<Work> mywork(String comname) {
		// TODO Auto-generated method stub
		return dao.mywork(comname);
	}
	@Override
	public List<Signcom> mysign(String comname) {
		// TODO Auto-generated method stub
		return dao.mysign(comname);
	}

}
