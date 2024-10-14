package kr.ac.workproject.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDaoImpl implements CompanyDao {
	@Autowired
	SqlSession sql;
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return sql.selectOne("cityCount",cityName);
	}

}
