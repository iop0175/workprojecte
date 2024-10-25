package kr.ac.workproject.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Company;
import kr.ac.workproject.model.VipWork;
import kr.ac.workproject.model.Work;
@Repository
public class WorkDaoImpl implements WorkDao {
	@Autowired
	SqlSession sql;
	@Override
	public List<Work> workList() {

		return sql.selectList("work.worklist");
	}
	@Override
	public List<Work> searchList(String item) {
		// TODO Auto-generated method stub
		return sql.selectList("work.searchList",item);
	}
	@Override
	public void add(Work workItem) {
		sql.insert("work.add",workItem);
		
	}
	@Override
	public List<VipWork> WorkVipList() {
		// TODO Auto-generated method stub
		return sql.selectList("work.vipList");
	}
	@Override
	public void vipadd(VipWork vipwork) {
		sql.insert("work.vipadd",vipwork);
		
	}
	@Override
	public List<Work> myWork(String comName) {
		// TODO Auto-generated method stub
		return sql.selectList("work.myWork", comName);
	}
	@Override
	public List<Work> view(String workid) {
		// TODO Auto-generated method stub
		return sql.selectList("work.view", workid);
	}
	@Override
	public Company com(String workid) {
		// TODO Auto-generated method stub
		return sql.selectOne("work.com",workid);
	}


}
