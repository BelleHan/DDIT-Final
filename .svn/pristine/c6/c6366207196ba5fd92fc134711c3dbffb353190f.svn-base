package kr.or.fms.service;

import java.sql.SQLException;

import kr.or.fms.dao.CodeDAO;

public class CodeServiceImpl implements CodeService {

	private CodeDAO codeDAO;
	public void setCodeDAO(CodeDAO codeDAO) {
		this.codeDAO = codeDAO;
	}
	@Override
	public String getCodeName(String sup_contract_st) throws SQLException {
		String codeName = codeDAO.selectComCode(sup_contract_st);
		return codeName;
	}

}
