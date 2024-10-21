package kr.ac.workproject.service;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;

public interface MyadteService {


	boolean idCheck(String id);

	void signup(Mydate item);

	boolean loginCheck(Mydate item);

	void comadd(Company item);


}
