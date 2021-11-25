package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;

public interface SalesService {
	//전체, 지역, 가맹점 조회 (물품 x)
	public Map<String, Object> getList(SearchCriteria cri) throws SQLException;
	//전체, 지역, 가맹점 조회(물품 o)
	public Map<String, Object> getListWithGoods(SearchCriteria cri) throws SQLException;
}
