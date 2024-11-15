package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Contract;
import kr.ac.workproject.model.Vendor;

public interface ContractService {

	void vendor(Vendor vendor);

	List<Vendor> mycon(String workNum);

	Vendor fianl(String vendorNum);

	void fianlcon(Contract contract);

}
