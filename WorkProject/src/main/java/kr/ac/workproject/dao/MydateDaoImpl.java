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
	public Mydate item(String id) {
		
		return sql.selectOne("mydate.login", id);
	}

}
