package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Payment;
import kr.ac.workproject.model.Signcom;

public interface MydateDao {


	String idCheck(String id);

	void signup(Mydate item);

	Mydate loginCheck(Mydate item);

	void comadd(Company item);

	int comcheck(String comname);

	void addvip(Payment payment);

	void updatevip(Payment payment);

	void old(Signcom signcom);

	List<Signcom> signcom(String comName);

	int oldaddch(String id);

}
