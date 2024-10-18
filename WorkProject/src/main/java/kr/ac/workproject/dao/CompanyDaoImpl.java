package kr.ac.workproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;

@Repository
public class CompanyDaoImpl implements CompanyDao {
	@Autowired
	SqlSession sql;
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return sql.selectOne("company.cityCount",cityName);
	}
	@Override
	public List<Work> cityList(String cityName) {
		// TODO Auto-generated method stub
		return sql.selectList("company.cityList", cityName);
	}
	@Override
	public List<VipWork> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return sql.selectList("company.vipcityList",vipCityName);
	}

}
