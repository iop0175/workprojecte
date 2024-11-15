package kr.ac.workproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Mydate;
import kr.ac.workproject.model.Payment;
import kr.ac.workproject.model.Signcom;
@Repository
public class MydateDaoImpl implements MydateDao {
	@Autowired
	SqlSession sql;

	@Override
	public String idCheck(String id) {
		// TODO Auto-generated method stub
		return sql.selectOne("mydate.idCheck",id);
	}
	@Override
	public void signup(Mydate item) {
		sql.insert("mydate.signup",item);
		
	}
	@Override
	public Mydate loginCheck(Mydate item) {
		return sql.selectOne("mydate.loginCheck", item);
	}
	@Override
	public void comadd(Company item) {
		sql.insert("mydate.comadd",item);	
		sql.update("mydate.cominput",item);
	}
	@Override
	public int comcheck(String comname) {
		// TODO Auto-generated method stub
		return sql.selectOne("mydate.comcheck", comname);
	}
	@Override
	public void addvip(Payment payment) {
		sql.insert("mydate.addvip", payment);
	}
	@Override
	public void updatevip(Payment payment) {
		sql.update("mydate.updatevip", payment);
		
	}
	@Override
	public void old(Signcom signcom) {
		sql.insert("mydate.old",signcom);
	}
	@Override
	public List<Signcom> signcom(String comName) {
		
		return sql.selectList("mydate.signcom", comName);
	}
	@Override
	public int oldaddch(String id) {
		// TODO Auto-generated method stub
		return sql.selectOne("mydate.oldaddch", id);
	}
	
}
