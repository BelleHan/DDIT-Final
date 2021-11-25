package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.OutVO;

public interface LogisOutDAO {
	public List<OutVO> outList(SearchCriteria cri) throws SQLException;
	public int outListCount(SearchCriteria cri) throws SQLException;
	
	//도착지정보조회
	public List<OutVO> outLocaFran(String logisCode) throws SQLException;
	public List<OutVO> outLocaLogis(String logisCode) throws SQLException;
	public List<OutVO> getDetail(String ocode) throws SQLException;
	public void updateOut(Map<String, String> data) throws SQLException;
	
}
