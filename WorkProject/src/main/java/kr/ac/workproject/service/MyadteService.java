package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Payment;
import kr.ac.workproject.model.Signcom;

public interface MyadteService {


	boolean idCheck(String id);

	void signup(Mydate item);

	boolean loginCheck(Mydate item);

	void comadd(Company item);

	boolean comcheck(String comname);

	void addvip(Payment payment);

	void old(Signcom signcom);

	List<Signcom> signcom(String comName);

	boolean oldaddch(String id);


}
