package kr.ac.workproject.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.MydateDao;
import kr.ac.workproject.model.Mydate;

@Service
public class MydateServiceImpl implements MyadteService {
	@Autowired
	MydateDao dao;


	@Override
	public boolean idCheck(String id) {
		if (dao.idCheck(id) == null) {
			return true;
		}
		return false;
	}

	@Override
	public void signup(Mydate item) {
		dao.signup(item);

	}

	@Override
	public boolean loginCheck(Mydate item) {
		Mydate idCheck = dao.loginCheck(item);
		if (idCheck.getId().equals(item.getId()) && idCheck.getPassword().equals(item.getPassword())) {
			BeanUtils.copyProperties(idCheck, item);
			item.setPassword(null);
			return true;
		}
		return false;
	}
}