package kr.or.fms.hq.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.hq.dto.HqEmpVO;

public class EmpDAOImpl implements EmpDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public HqEmpVO selectEmp(String code) throws SQLException {
		HqEmpVO emp = session.selectOne("Hq-Mapper.selectEmp", code);
		return emp;
	}

}
