package kr.ac.workproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Contract;
import kr.ac.workproject.model.Vendor;
@Repository
public class ContractDaoImpl implements ContractDao {
	@Autowired
	SqlSession sql;
	@Override
	public void vendor(Vendor vendor) {
		sql.insert("contract.vendor", vendor);
	}
	@Override
	public List<Vendor> mycon(String workNum) {
		// TODO Auto-generated method stub
		return sql.selectList("contract.mycon",workNum);
	}
	@Override
	public Vendor fianl(String vendorNum) {
		// TODO Auto-generated method stub
		return sql.selectOne("contract.fianl", vendorNum);
	}
	@Override
	public void fianlcon(Contract contract) {
		sql.insert("contract.fianlcon", contract);
		
	}

}
