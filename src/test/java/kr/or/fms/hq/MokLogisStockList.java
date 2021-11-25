package kr.or.fms.hq;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dao.StockDAO;
import kr.or.fms.hq.dto.FranStockVO;
import kr.or.fms.hq.dto.LogisStockTakingVO;
import kr.or.fms.hq.dto.LogisStockVO;
import kr.or.fms.hq.service.StockListService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokLogisStockList {
	
	@Autowired
	SqlSession session;
	
	@Autowired
	StockDAO stockDAO;
	
	@Autowired
	StockListService stockService;
	
	@Test
	public void stockLogisList() throws SQLException {
		List<LogisStockTakingVO> logisStockTakingList = stockDAO.logisStockTakingList();
		for (LogisStockTakingVO vo : logisStockTakingList) {
			System.out.println(vo.getTaking_date());
		}
	}
	
//	@Test
//	public void stockSearchList() throws SQLException {
//		SearchCriteria cri = new SearchCriteria();
//		Map<String,String> reqMap = new HashMap<>();
//		reqMap.put("fms_goods", "매일");
//		cri.setKeywordMap(reqMap);
//		List<FranStockVO> franStockList = (List<FranStockVO>) stockDAO.franStockList(cri);
//		Assert.assertEquals(3, franStockList.size());
//	}
	
	@Test
	public void stockSearchTakingList() throws SQLException {
		SearchCriteria cri = new SearchCriteria();
		List<LogisStockTakingVO> logisStockTakingList = stockDAO.logisStockTakingList(cri);
		Map<String, Object> list = stockService.getLogisStockTakingList(cri);
		System.out.println(((List<LogisStockTakingVO>) list.get("logisStockTakingList")).size());
		System.out.println(((PageMaker) list.get("pageMaker")).getTotalCount());
		Assert.assertEquals(2, logisStockTakingList.size());
	}
//	@Test
//	public void stockSearchCount() throws SQLException {
//		SearchCriteria cri = new SearchCriteria();
//		Map<String,String> map = new HashMap<>();
//		map.put("fms_goods", "저지방 매일우유");
//		cri.setKeywordMap(map);
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(stockDAO.franStockListCount(cri));
//		System.out.println(pageMaker.getEndPage());
//		
//	}

}
