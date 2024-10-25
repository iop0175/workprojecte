package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;

public interface WorkService {

	List<Work> workList();

	List<Work> searchList(String item);

	void add(Work workItem);

	List<VipWork> workVipList();

	void vipadd(VipWork vipwork);

	List<Work> myWork(String comName);

	List<Work> view(String workid);

	Company com(String workid);






}
