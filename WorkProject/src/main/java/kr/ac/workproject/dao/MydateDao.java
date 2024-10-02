package kr.ac.workproject.dao;

import kr.ac.workproject.model.Mydate;

public interface MydateDao {


	String idCheck(String id);

	void signup(Mydate item);

	Mydate loginCheck(Mydate item);

}
