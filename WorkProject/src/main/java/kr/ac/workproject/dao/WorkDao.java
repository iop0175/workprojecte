package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;

public interface WorkDao {

	List<Work> workList();

	List<Work> searchList(String item);

	void add(Work workItem);

	List<VipWork> WorkVipList();

	void vipadd(VipWork vipwork);

}
