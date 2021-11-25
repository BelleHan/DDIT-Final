package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.OutVO;
import kr.or.fms.logis.dao.LogisOutDAO;

public class LogisOutServiceImpl implements LogisOutService {

	private LogisOutDAO logisOutDAO;
	public void setLogisOutDAO(LogisOutDAO logisOutDAO) {
		this.logisOutDAO = logisOutDAO;
	}


	@Override
	public Map<String, Object> read(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		String logisCode = cri.getKeywordMap().get("logis_code");
		cri.setPerPageNum(12);
		List<OutVO> outList = logisOutDAO.outList(cri);
		List<OutVO> outLocaFran = logisOutDAO.outLocaFran(logisCode);
		List<OutVO> outLocaLogis = logisOutDAO.outLocaLogis(logisCode);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(logisOutDAO.outListCount(cri));
		
		dataMap.put("outList", outList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("outLocaFran", outLocaFran);
		dataMap.put("outLocaLogis", outLocaLogis);
		return dataMap;
	}


	@Override
	public Map<String, Object> getSearchList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		cri.setPerPageNum(12);
		List<OutVO> outList = logisOutDAO.outList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(logisOutDAO.outListCount(cri));
		
		dataMap.put("outList", outList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}


	@Override
	public List<OutVO> getDetail(String ocode) throws SQLException {
		List<OutVO> outdetail = logisOutDAO.getDetail(ocode);
		return outdetail;
	}


	@Override
	public void modify(Map<String, String> data) throws SQLException {
		logisOutDAO.updateOut(data);
	}

}
