package kr.ac.workproject.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.workproject.model.Work;
@Repository
public class WorkDaoImpl implements WorkDao {
	@Autowired
	SqlSession sql;
	@Override
	public List<Work> workList() {

		return sql.selectList("work.worklist");
	}

}
