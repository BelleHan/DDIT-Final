package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;

public interface FranSalesDAO {
	
	List<FranSalesVO> selectSalesCriteria(SearchCriteria cri) throws SQLException;

	int selectSalesCriteriaTotalCount(SearchCriteria cri) throws SQLException;

}
