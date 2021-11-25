package kr.or.fms.dao;

import java.sql.SQLException;

public interface CodeDAO {

	//물품구매시 계약코드
	String selectComCode(String sup_contract_st)throws SQLException;
}
