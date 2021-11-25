package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dao.StockDAO;
import kr.or.fms.hq.dto.FranStockVO;
import kr.or.fms.hq.dto.LogisStockTakingVO;
import kr.or.fms.hq.dto.LogisStockVO;

public class StockListServiceImpl implements StockListService {

	private StockDAO stockDAO;

	public StockDAO getStockDAO() {
		return stockDAO;
	}

	public void setStockDAO(StockDAO stockDAO) {
		this.stockDAO = stockDAO;
	}

	@Override
	public void ModifyFranSafeSuit(FranStockVO franStockVO) throws SQLException {
		stockDAO.updateFranSafeSuit(franStockVO);
		
	}
	@Override
	public List<FranStockVO> getFranStockList() throws SQLException {
		List<FranStockVO> franStockList = stockDAO.franStockList();
		return franStockList;
	}

	@Override
	public List<FranStockVO> getFranStockList(Criteria cri) throws SQLException {
		List<FranStockVO> franStockList = stockDAO.franStockList(cri);
		return franStockList;
	}

	@Override
	public Map<String, Object> getFranStockList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.franStockListCount(cri));

		List<FranStockVO> franStockList = stockDAO.franStockList(cri);
		dataMap.put("franStockList", franStockList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public Map<String, Object> getFranStockSearch(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<FranStockVO> franStockList = stockDAO.franStockList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.franStockListCount(cri));

		dataMap.put("franStockList", franStockList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public List<LogisStockVO> getLogisStockList() throws SQLException {
		List<LogisStockVO> logisStockList = stockDAO.logisStockList();
		return logisStockList;
	}

	@Override
	public List<LogisStockVO> getLogisStockList(Criteria cri) throws SQLException {
		List<LogisStockVO> logisStockList = stockDAO.logisStockList(cri);
		return logisStockList;
	}

	@Override
	public Map<String, Object> getLogisStockList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.logisStockListCount(cri));

		List<LogisStockVO> logisStockList = stockDAO.logisStockList(cri);
		dataMap.put("logisStockList", logisStockList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public Map<String, Object> getLogisStockSearch(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<LogisStockVO> logisStockList = stockDAO.logisStockList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.logisStockListCount(cri));

		dataMap.put("logisStockList", logisStockList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public List<LogisStockTakingVO> getLogisStockTakingList() throws SQLException {
		List<LogisStockTakingVO> logisStockTakingList = stockDAO.logisStockTakingList();
		return logisStockTakingList;
	}

	@Override
	public List<LogisStockTakingVO> getLogisStockTakingList(Criteria cri) throws SQLException {
		List<LogisStockTakingVO> logisStockTakingList = stockDAO.logisStockTakingList(cri);
		return logisStockTakingList;
	}

	@Override
	public Map<String, Object> getLogisStockTakingList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<LogisStockTakingVO> LogisStockTakingList = stockDAO.logisStockTakingList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.franStockTakingListCount(cri));

		dataMap.put("logisStockTakingList", LogisStockTakingList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public Map<String, Object> getLogisStockTakingSearchList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 날짜변환
		Map<String, String> data = cri.getKeywordMap();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
		String startDate = null;
		if (data.get("start_date") != null) {
			startDate = data.get("start_date");
			try {
				Date sDate = simpleDateFormat.parse(startDate);
				cri.setStartDate(sDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

		String endDate = null;
		if (data.get("end_date") != null) {
			try {
				endDate = data.get("end_date");
				Date eDate = simpleDateFormat.parse(endDate);
				cri.setEndDate(eDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

		List<LogisStockTakingVO> LogisStockTakingList = stockDAO.logisStockTakingList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.franStockTakingListCount(cri));

		dataMap.put("logisStockTakingList", LogisStockTakingList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}
	
	@Override
	public List<LogisStockTakingVO> getLogisStockTakingDetail(String takingCode) throws SQLException {
		List<LogisStockTakingVO> takingDetail = stockDAO.getLogisStockTakingDetail(takingCode);
		return takingDetail;
	}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	@Override
	public List<LogisStockVO> getLogisStock() throws SQLException {
		List<LogisStockVO> logisStock = stockDAO.logisStock();
		return logisStock;
	}

	@Override
	public List<LogisStockVO> getLogisStock(Criteria cri) throws SQLException {
		List<LogisStockVO> logisStock = stockDAO.logisStock(cri);
		return logisStock;
	}

	@Override
	public Map<String, Object> getLogisStock(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.logisStockCount(cri));

		List<LogisStockVO> logisStock = stockDAO.logisStock(cri);
		dataMap.put("logisStock", logisStock);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public Map<String, Object> getLogisStockSearch2(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<LogisStockVO> logisStock = stockDAO.logisStock(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(stockDAO.logisStockCount(cri));

		dataMap.put("logisStock", logisStock);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	

}
