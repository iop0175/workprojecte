package kr.ac.workproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.workproject.dao.ContractDao;
import kr.ac.workproject.model.Contract;
import kr.ac.workproject.model.Vendor;
@Service
public class ContractServiceImpl implements ContractService {
	@Autowired
	ContractDao dao;
	@Override
	public void vendor(Vendor vendor) {
		dao.vendor(vendor);
	}
	@Override
	public List<Vendor> mycon(String workNum) {
		// TODO Auto-generated method stub
		return dao.mycon(workNum);
	}
	@Override
	public Vendor fianl(String vendorNum) {
		// TODO Auto-generated method stub
		return dao.fianl(vendorNum);
	}
	@Override
	public void fianlcon(Contract contract) {
		dao.fianlcon(contract);
		
	}


}
