package kr.or.fms.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

public class CodeDAOImpl implements CodeDAO {

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public String selectComCode(String sup_contract_st) throws SQLException {
		String codeName = session.selectOne("Code-Mapper.selectSupContCode", sup_contract_st);
		return codeName;
	}

}
