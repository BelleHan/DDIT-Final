package kr.or.fms.sup.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.BuyGoodsVO;
import kr.or.fms.hq.dto.InVO;

public interface SupSalesService {
	
	// 목록 조회
	Map<String, Object> getBuyList(SearchCriteria cri) throws SQLException;
	
	// 승인상태 변경
	void updateBuyst(String bCode) throws SQLException;
	
	// 입고내역 자동 등록
	void registInList(InVO inVO) throws SQLException;

}
