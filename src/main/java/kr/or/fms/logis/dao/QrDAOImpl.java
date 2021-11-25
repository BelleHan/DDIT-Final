package kr.or.fms.logis.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.logis.dto.QrVO;

public class QrDAOImpl implements QrDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	@Override
	public QrVO selectQrByWh_code(String wh_code) throws SQLException {
		QrVO qr = session.selectOne("Qr-Mapper.selectQrByWh_code", wh_code);
		return qr;
	}

}
