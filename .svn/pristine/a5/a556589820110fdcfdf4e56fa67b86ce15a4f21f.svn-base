package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.OrderOutCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;

public interface HqOrderService {
	
	 // 목록조회	
	Map<String,Object> getOrderList(SearchCriteria cri)throws SQLException;
	
	// 상세보기
	List<FranOrderDeVO> readOrder(String fran_order_code) throws SQLException;
	
	// 총알 리스트
	List<FranOrderDeVO> getQuickList(FranOrderVO franOrderVO) throws SQLException;
	
	// 총알 변경
	void modifyQuickList(FranOrderDeVO franOrderDeVO) throws SQLException;
	
	// 승인 상태 변경
	void modifyApprSt(FranOrderVO franOrderVO) throws SQLException;
	
	// 출고 내역 업데이트
	void registOutList(OrderOutCommand command) throws SQLException;

}
