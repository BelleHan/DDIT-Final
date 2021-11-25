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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokStockTaking {
	
	@Autowired
	SqlSession session;
	
	@Autowired
	StockDAO stockDAO;
	
	@Test
	public void stockTakingDetail() throws SQLException {
		String takingCode = "LT001=";
		takingCode = takingCode.substring(0,5);
		System.out.println(takingCode);
		List<LogisStockTakingVO> logisStockTakingDetail = stockDAO.getLogisStockTakingDetail(takingCode );
		System.out.println(logisStockTakingDetail.get(0).getHq_goods_name());
	}
	

}
