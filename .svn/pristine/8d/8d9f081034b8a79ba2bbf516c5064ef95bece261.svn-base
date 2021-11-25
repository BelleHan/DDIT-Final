package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.OutVO;

	public interface LogisOutService {
	//물류센터 재고조회
	public Map<String, Object> read(SearchCriteria cri) throws SQLException;
	
	//검색
	public Map<String, Object> getSearchList(SearchCriteria cri) throws SQLException;

	public List<OutVO> getDetail(String ocode) throws SQLException;

	public void modify(Map<String, String> data) throws SQLException;
}
