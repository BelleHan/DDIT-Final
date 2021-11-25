package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.logis.dao.LogisInDAO;
import kr.or.fms.logis.dto.InLogisVO;
import kr.or.fms.logis.dto.LogisWhVO;
import kr.or.fms.sup.dto.InGoodsVO;

public class LogisInServiceImpl implements LogisInService {

	private LogisInDAO logisInDAO;
	public void setLogisInDAO(LogisInDAO logisInDAO) {
		this.logisInDAO = logisInDAO;
	}


	@Override
	public Map<String, Object> read(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		String logisCode = cri.getKeywordMap().get("logis_code");
		cri.setPerPageNum(12);
		List<InLogisVO> inList = logisInDAO.inList(cri);
		List<LogisWhVO> inWh= logisInDAO.inWh(logisCode);
		List<InGoodsVO> inSup = logisInDAO.inSup(logisCode);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(logisInDAO.inListCount(cri));
		
		dataMap.put("inList", inList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("inWh", inWh);
		dataMap.put("inSup", inSup);
		return dataMap;
	}


	@Override
	public Map<String, Object> getSearchList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		cri.setPerPageNum(12);
		List<InLogisVO> inList = logisInDAO.inList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(logisInDAO.inListCount(cri));
		
		dataMap.put("inList", inList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}


	@Override
	public List<InLogisVO> getDetail(String iCode) throws SQLException {
		List<InLogisVO> indetail = logisInDAO.getDetail(iCode);
		return indetail;
	}


	@Override
	public void modify(Map<String, String> data) throws SQLException {
		logisInDAO.updateIn(data);
	}


	@Override
	public void delete(Map<String, String> data) throws SQLException {
		logisInDAO.deletInDetail(data);
	}

}
