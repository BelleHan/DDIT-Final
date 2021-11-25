package kr.or.fms.fran.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.fran.dto.FranAppliDocVO;
import kr.or.fms.fran.dto.FranVO;

public class FranApplyDAOImpl implements FranApplyDAO{
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public void insertFranApply(FranAppliDocVO franAppliDocVO) throws SQLException {
		session.update("FrApply-Mapper.insertFranApply", franAppliDocVO);
		
	}

	@Override
	public void insertFran(FranVO franVO) throws SQLException {
		session.update("FrApply-Mapper.insertFran", franVO);
		
	}

	@Override
	public String getFranApplySeqCurr() throws SQLException {
		String fran_applidoc_code = session.selectOne("FrApply-Mapper.selectFranApplySeqCurr");
	
		return fran_applidoc_code;
	}

}
