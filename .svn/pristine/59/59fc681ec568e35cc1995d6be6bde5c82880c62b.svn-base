package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.logis.dto.InLogisVO;
import kr.or.fms.logis.dto.LogisWhVO;
import kr.or.fms.sup.dto.InGoodsVO;

public interface LogisInDAO {
	public List<InLogisVO> inList(SearchCriteria cri) throws SQLException;
	public int inListCount(SearchCriteria cri) throws SQLException;
	
	//도착지정보조회
	public List<LogisWhVO> inWh(String logisCode) throws SQLException;
	public List<InGoodsVO> inSup(String logisCode) throws SQLException;
	public List<InLogisVO> getDetail(String iCode) throws SQLException;
	public void updateIn(Map<String, String> data) throws SQLException;
	public void deletInDetail(Map<String, String> data) throws SQLException;
	
}
