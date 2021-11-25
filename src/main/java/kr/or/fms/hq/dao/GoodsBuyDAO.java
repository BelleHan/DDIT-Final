package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.BuyGoodsTotalVO;

public interface GoodsBuyDAO {
	
	List<BuyGoodsTotalVO> selectGoodsCriteria(SearchCriteria cri) throws SQLException;

	int selectGoodsCriteriaTotalCount(SearchCriteria cri) throws SQLException;

}
