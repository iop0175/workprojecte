package kr.ac.workproject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Private;
@Repository
public class PrivateDaoImpl implements PrivateDao {
	@Autowired
	SqlSession sql;
	@Override
	public void add(Private pri) {
		sql.insert("private.add", pri);
	}
	@Override
	public List<Private> list() {
		// TODO Auto-generated method stub
		return sql.selectList("private.list");
	}
	@Override
	public List<Private> viplist() {
		// TODO Auto-generated method stub
		return sql.selectList("private.viplist");
	}
	@Override
	public List<Private> vipcityList(String vipCityName) {
		// TODO Auto-generated method stub
		return sql.selectList("private.vipcityList", vipCityName);
	}
	@Override
	public List<Private> cityList(String cityName) {
		// TODO Auto-generated method stub
		return sql.selectList("private.cityList", cityName);
	}
	@Override
	public int cityCount(String cityName) {
		// TODO Auto-generated method stub
		return sql.selectOne("private.cityCount", cityName);
	}
	@Override
	public int fieldsear(String field) {
		// TODO Auto-generated method stub
		return sql.selectOne("private.fieldsear", field);
	}
	@Override
	public List<Private> fieldList(String field) {
		// TODO Auto-generated method stub
		return sql.selectList("private.fieldList", field);
	}
	@Override
	public List<Private> fieldVipList(String field) {
		// TODO Auto-generated method stub
		return sql.selectList("private.fieldVipList",field);
	}

}
