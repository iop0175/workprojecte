package kr.ac.workproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.Signcom;
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
	public List<Work> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return sql.selectList("company.vipcityList",vipCityName);
	}
	@Override
	public int comBrn(String comName) {
		// TODO Auto-generated method stub
		return sql.selectOne("company.comBrn", comName);
	}
	@Override
	public Company mycom(String comName) {
		// TODO Auto-generated method stub
		return sql.selectOne("company.mycom",comName);
	}
	@Override
	public void addcom(Signcom signcom) {
		sql.update("company.addcom",signcom);
		sql.delete("company.delcom", signcom);
	}
	@Override
	public void delcom(Signcom signcom) {
		sql.delete("company.delcom", signcom);
		
	}

}
