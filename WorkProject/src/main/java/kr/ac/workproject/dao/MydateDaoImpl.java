package kr.ac.workproject.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Mydate;
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

}
