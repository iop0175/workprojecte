package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.WorkDao;
import kr.ac.workproject.model.Company;
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
	@Override
	public List<Work> workVipList() {
		// TODO Auto-generated method stub
		return dao.WorkVipList();
	}
	@Override
	public void vipadd(Work vipwork) {
		// TODO Auto-generated method stub
		dao.vipadd(vipwork);
	}
	@Override
	public List<Work> myWork(String comName) {
		// TODO Auto-generated method stub
		return dao.myWork(comName);
	}
	@Override
	public Work view(String workid) {
		// TODO Auto-generated method stub
		return dao.view(workid);
	}
	@Override
	public Company com(String workid) {
		// TODO Auto-generated method stub
		return dao.com(workid);
	}
	@Override
	public List<Work> seide(String workid) {
		// TODO Auto-generated method stub
		return dao.side(workid);
	}

}
