package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.logis.dto.LogisContractInfoVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.dto.LogisWhVO;

public class LogisDAOImpl implements LogisDAO {

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public LogisVO selectLogisByCode(String logis_code) throws SQLException {
		LogisVO logis = session.selectOne("Logis-Mapper.selectLogisByCode", logis_code);
		return logis;
	}

	//오배송, 미승인 상태
	@Override
	public int selectReturnCount() throws SQLException {
		int count = session.selectOne("Logis-Mapper.selectReturnCount");
		return count;
	}

	//logis소유한 창고정보
	@Override
	public List<LogisWhVO> selectLogisWh(String logis_code) throws SQLException {
		List<LogisWhVO> logisWh =session.selectList("Logis-Mapper.selectLogidWhInfo", logis_code);
		return logisWh;
		
	}

	//현재 계약중인 업체
	@Override
	public int selectLogisHq(String logis_code) throws SQLException {
		int count = session.selectOne("Logis-Mapper.selectLogisHq", logis_code);
		return count;
	}

	//계약중인 업체정보
	@Override
	public List<LogisWhVO> selectTopGoods(String logis_code) throws SQLException {
		List<LogisWhVO> topGoodsList = session.selectList("Logis-Mapper.selectTopGoods", logis_code);
		return topGoodsList;
	}

	@Override
	public List<LogisContractInfoVO> selectContractHq(String logis_code) throws SQLException {
		List<LogisContractInfoVO> contractHq = session.selectList("Logis-Mapper.selectHq", logis_code);
		return contractHq;
	}

}
