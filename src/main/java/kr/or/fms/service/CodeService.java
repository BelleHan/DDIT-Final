package kr.or.fms.service;

import java.sql.SQLException;

public interface CodeService {

	//계약상태 출력
	public String getCodeName(String sup_contract_st) throws SQLException;
}
