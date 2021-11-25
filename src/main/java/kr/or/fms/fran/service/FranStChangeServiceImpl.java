package kr.or.fms.fran.service;

import java.sql.SQLException;

import kr.or.fms.fran.dao.FranStChangeDAO;
import kr.or.fms.fran.dto.FranStChangeVO;

public class FranStChangeServiceImpl implements FranStChangeService {
	
	private FranStChangeDAO stDAO;
	public void setStDAO(FranStChangeDAO stDAO) {
		this.stDAO = stDAO;
	}
	@Override
	public void regist(FranStChangeVO stchange) throws SQLException {
		stDAO.insertST(stchange);
	}

	@Override
	public void modify(FranStChangeVO stchange) throws SQLException {
		stDAO.updateST(stchange);
	}

	@Override
	public void remove(String st_change_code) throws SQLException {
		stDAO.deleteST(st_change_code);
	}

}
