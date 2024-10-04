package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.WorkDao;
import kr.ac.workproject.model.Work;
@Service
public class WorkServiceImpl implements WorkService {
	@Autowired
	WorkDao dao;
	@Override
	public List<Work> workList() {
		
		return dao.workList();
	}
	@Override
	public List<Work> searchList(String item) {
		// TODO Auto-generated method stub
		return dao.searchList(item);
	}
	@Override
	public void add(Work workItem) {
		 dao.add(workItem);
		
	}

}
