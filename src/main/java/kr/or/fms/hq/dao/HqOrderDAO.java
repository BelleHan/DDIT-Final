package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.OrderOutCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.fran.dto.FranVO;

public interface HqOrderDAO {
	
	// 리스트 출력
	List<FranOrderVO> selectBoardCriteria(SearchCriteria cri) throws SQLException;
	int selectBoardCriteriaTotalCount(SearchCriteria cri) throws SQLException;
	
	// 가맹점 리스트 (검색 조건)
	List<FranVO> selectFranList() throws SQLException;
	
	// 상세 보기
	List<FranOrderDeVO> selectBoard(String fran_order_code) throws SQLException;
	
	// 상세 총알 리스트
	List<FranOrderDeVO> selectQuickList(FranOrderVO franOrderVO) throws SQLException;
	
	// 총알 변경
	void updateQuickList(FranOrderDeVO franOrderDeVO) throws SQLException;
	
	// 승인 상태 변경
	void updateApprSt(FranOrderVO franOrderVO) throws SQLException;
	
	// 출고 내역 업데이트(총알)
	void updateOutQuick(OrderOutCommand command) throws SQLException;
	
	// 출고 내역 업데이트(일반)
	void updateOutList(OrderOutCommand command) throws SQLException;
	

}
