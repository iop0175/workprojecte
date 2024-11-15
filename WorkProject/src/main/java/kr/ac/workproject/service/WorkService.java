package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Work;

public interface WorkService {

	List<Work> workList();

	List<Work> searchList(String item);

	void add(Work workItem);

	List<Work> workVipList();

	void vipadd(Work vipwork);

	List<Work> myWork(String comName);

	Work view(String workid);

	Company com(String workid);

	List<Work> seide(String workid);






}
