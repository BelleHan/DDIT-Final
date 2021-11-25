package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;

public interface SalesDAO {
	
	//매출리스트 조회
	List<FranSalesVO> franSalesList(SearchCriteria cri)throws SQLException;
	//매출리스트 개수
	int franSalesListCount(SearchCriteria cri) throws SQLException;
	//해당 리스트의 평균매출
	int amount(SearchCriteria cri) throws SQLException;
	int sum(SearchCriteria cri) throws SQLException;
}
