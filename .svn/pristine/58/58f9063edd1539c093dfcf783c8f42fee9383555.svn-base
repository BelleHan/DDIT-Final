package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.ReturnVO;

public interface ReturnService {
	
	// 목록조회	
	Map<String,Object> getReturnList(SearchCriteria cri)throws SQLException;
	
	// 상세보기
	ReturnVO getReturn(String rcode)throws SQLException;
	
	// 반품상태 변경
	void modify(ReturnVO returnVO)throws SQLException;

}
