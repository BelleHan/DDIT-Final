package kr.or.fms.fran.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.fran.dto.FranStChangeVO;

public class FranStChangeDAOImpl implements FranStChangeDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public void insertST(FranStChangeVO stchange) throws SQLException {
		session.update("Fran-Mapper.insertST", stchange);

	}

	@Override
	public void updateST(FranStChangeVO stchange) throws SQLException {
		session.update("Fran-Mapper.updateST", stchange);

	}

	@Override
	public void deleteST(String st_change_code) throws SQLException {
		session.update("Fran-Mapper.deleteST", st_change_code);

	}
	
}
