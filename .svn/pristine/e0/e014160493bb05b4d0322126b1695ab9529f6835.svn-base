package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;
import kr.or.fms.hq.dao.SalesDAO;

public class SalesServiceImpl implements SalesService {
	
	private SalesDAO salesDAO;
	public void setSalesDAO(SalesDAO salesDAO) {
		this.salesDAO = salesDAO;
	}

	@Override
	public Map<String, Object> getList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = new PageMaker();
		
		cri.setPerPageNum(20);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(salesDAO.franSalesListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		
		List<FranSalesVO> franSalesList = salesDAO.franSalesList(cri);
		int amount = 0;
		
		if (franSalesList != null) {
			amount = salesDAO.sum(cri);
			dataMap.put("franSalesList", franSalesList);
			dataMap.put("sum", amount);
		}
		return dataMap;
	}

	@Override
	public Map<String, Object> getListWithGoods(SearchCriteria cri) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



}
