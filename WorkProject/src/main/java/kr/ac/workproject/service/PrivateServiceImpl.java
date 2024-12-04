package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.PrivateDao;
import kr.ac.workproject.model.Private;
@Service
public class PrivateServiceImpl implements PrivateService {
	@Autowired
	PrivateDao dao;
	@Override
	public void add(Private pri) {
		dao.add(pri);
	}
	@Override
	public List<Private> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}
	@Override
	public List<Private> VipList() {
		// TODO Auto-generated method stub
		return dao.viplist();
	}
	@Override
	public List<Private> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return dao.vipcityList(vipCityName);
	}
	@Override
	public List<Private> cityList(String cityName) {
		// TODO Auto-generated method stub
		return dao.cityList(cityName);
	}
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return dao.cityCount(cityName);
	}
	@Override
	public int fieldsear(String field) {
		// TODO Auto-generated method stub
		return dao.fieldsear(field);
	}
	@Override
	public List<Private> fieldList(String field) {
		// TODO Auto-generated method stub
		return dao.fieldList(field);
	}
	@Override
	public List<Private> fieldVipList(String field) {
		// TODO Auto-generated method stub
		return dao.fieldVipList(field);
	}

}
