package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.OrderOutCommand;
import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dao.HqOrderDAO;

public class HqOrderServiceImpl implements HqOrderService {

	private HqOrderDAO hqOrderDAO;
	public void setHqOrderDAO(HqOrderDAO hqOrderDAO) {
		this.hqOrderDAO = hqOrderDAO;
	}
	
	@Override
	public Map<String, Object> getOrderList(SearchCriteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<FranOrderVO> orderList = hqOrderDAO.selectBoardCriteria(cri);
		List<FranVO> franList = hqOrderDAO.selectFranList();
		
		int totalCount = hqOrderDAO.selectBoardCriteriaTotalCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("orderList", orderList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("franList", franList);
		
		return dataMap;
		
	}

	@Override
	public List<FranOrderDeVO> readOrder(String fran_order_code) throws SQLException {
		
		List<FranOrderDeVO> franOrder = hqOrderDAO.selectBoard(fran_order_code);
		return franOrder;
	}

	@Override
	public List<FranOrderDeVO> getQuickList(FranOrderVO franOrderVO) throws SQLException {
		
		List<FranOrderDeVO> quickOrder = hqOrderDAO.selectQuickList(franOrderVO);
		return quickOrder;
		
	}

	@Override
	public void modifyQuickList(FranOrderDeVO franOrderDeVO) throws SQLException {
		
		hqOrderDAO.updateQuickList(franOrderDeVO);
		
	}

	@Override
	public void modifyApprSt(FranOrderVO franOrderVO) throws SQLException {
		
		hqOrderDAO.updateApprSt(franOrderVO);
		
	}

	@Override
	public void registOutList(OrderOutCommand command) throws SQLException {
		
		if (command.getOrder_detail_st().equals("1")) {
			hqOrderDAO.updateOutList(command);
		} else if (command.getOrder_detail_st().equals("2")) {
			hqOrderDAO.updateOutQuick(command);
		}
		
	}



}
