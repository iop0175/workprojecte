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
	public boolean login(Mydate item) {
		Mydate member = dao.item(item.getId());
		if (member != null && item.getPassword().equals(member.getPassword())) {
			BeanUtils.copyProperties(member, item);
			item.setPassword(null);
			return true;
		}
		return false;
	}

}
