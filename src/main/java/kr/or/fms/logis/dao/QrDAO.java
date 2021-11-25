package kr.or.fms.logis.dao;

import java.sql.SQLException;

import kr.or.fms.logis.dto.QrVO;

public interface QrDAO {
	
	QrVO selectQrByWh_code(String wh_code) throws SQLException;
	
	
}
