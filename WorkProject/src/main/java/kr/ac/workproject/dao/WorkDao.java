package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Work;

public interface WorkDao {

	List<Work> workList();

	List<Work> searchList(String item);

	void add(Work workItem);

	List<Work> WorkVipList();

	void vipadd(Work vipwork);

	List<Work> myWork(String comName);

	Work view(String workid);

	Company com(String workid);

	List<Work> side(String workid);

}
