package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranNoticeVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dao.FranNoticeDAO;

public class FranNoticeServiceImpl implements FranNoticeService {
	private FranNoticeDAO franNoticeDAO;
	public void setFranNoticeDAO(FranNoticeDAO franNoticeDAO) {
		this.franNoticeDAO = franNoticeDAO;
	}
	
	
	
	@Override
	public List<FranNoticeVO> getFranNoticeList() throws SQLException {
		List<FranNoticeVO> noticeList = franNoticeDAO.selectFranNoticeList();
		return noticeList;
	}

	@Override
	public List<FranNoticeVO> getFranNoticeList(Criteria cri) throws SQLException {
		List<FranNoticeVO> noticeList = franNoticeDAO.selectFranNoticeList(cri);
		return noticeList;
	}

	@Override
	public Map<String, Object> getFranNoticeList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(franNoticeDAO.selectFranNoticeListCount(cri));

		List<FranNoticeVO> noticeList = franNoticeDAO.selectFranNoticeList(cri);
		
		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public FranNoticeVO getFranNoticeDetail(String fNum) throws SQLException {
		FranNoticeVO noticeDetail = franNoticeDAO.selectFranNoticeDetail(fNum);
		return noticeDetail;
	}


	
	
}
