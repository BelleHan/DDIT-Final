package kr.or.fms.logis;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sound.midi.Soundbank;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.controller.StockController;
import kr.or.fms.hq.dao.StockDAO;
import kr.or.fms.hq.dto.FranStockVO;
import kr.or.fms.hq.dto.LogisStockTakingVO;
import kr.or.fms.hq.service.StockListService;
import kr.or.fms.logis.dto.LogisWhVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokWhGoods {
	
	@Autowired
	SqlSession session;
	
	@Autowired
	StockListService stockListService;
	
	@Test
	public void whList() throws SQLException {
		LogisWhVO logisWhVO = new LogisWhVO();
		logisWhVO.setHq_goods_code("hg0002");
		logisWhVO.setWh_name("테스트창고");
		logisWhVO.setLogis_code("L003");
		List<LogisWhVO> logisWh = session.selectList("LStock-Mapper.selectStockByHq_goods_code", logisWhVO);
		System.out.println(logisWh.size());
	}
//	@Test
//	public void stockTakingSearchTest() throws SQLException {
//		
//		Map<String,String> data = new HashMap<>();
//		/*data.put("fms_logis", "L001");*/
//		data.put("start_date", "20211001");
//		data.put("end_date", "20221105");
//		SearchCriteria criMap = new SearchCriteria();
//		
//		criMap.setKeywordMap(data);
//		criMap.setPage(data.get("page"));
//		criMap.setPerPageNum(13);
//		Map<String, Object> dataMap = new HashMap<String, Object>();
//			
//		dataMap= stockListService.getLogisStockTakingSearchList(criMap);
//		
//		List<LogisStockTakingVO> list = (List<LogisStockTakingVO>) dataMap.get("logisStockTakingList");
//		System.out.println("---------------");
//		System.out.println(list.size());
//		
//	}
}
