package kr.ac.workproject.service;


import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.MydateDao;
import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Payment;
import kr.ac.workproject.model.Signcom;

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

	@Override
	public void comadd(Company item) {
		dao.comadd(item);
		
	}

	@Override
	public boolean comcheck(String comname) {
		if (dao.comcheck(comname) == 0) {
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	public void addvip(Payment payment) {
		dao.addvip(payment);
		dao.updatevip(payment);
	}

	@Override
	public void old(Signcom signcom) {
		dao.old(signcom);
		
	}

	@Override
	public List<Signcom> signcom(String comName) {
		return dao.signcom(comName);
	}

	@Override
	public boolean oldaddch(String id) {
		if (dao.oldaddch(id)== 0) {
			return true;
		}
		return false;
	}
}