package kr.ac.workproject.dao;

import java.util.List;

import kr.ac.workproject.model.Contract;
import kr.ac.workproject.model.Vendor;

public interface ContractDao {

	void vendor(Vendor vendor);

	List<Vendor> mycon(String workNum);

	Vendor fianl(String vendorNum);

	void fianlcon(Contract contract);

}
