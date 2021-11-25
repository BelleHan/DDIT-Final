package kr.or.fms.hq;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
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
import kr.or.fms.fran.dto.FranSalesVO;
import kr.or.fms.hq.dao.SalesDAO;
import kr.or.fms.hq.service.SalesService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokSalesList {
	private SearchCriteria cri = new SearchCriteria();
	private Map<String, String> map = new HashMap<>();
	private PageMaker pageMaker = new PageMaker();
	
	@Autowired
	SqlSession session;
	@Autowired
	SalesService service;
	@Autowired
	SalesDAO dao;
	
//	@Test
//	public void getAllList() throws SQLException {
//		List<FranSalesVO> list = session.selectList("Sales-Mapper.getSalesListWithoutGoods", cri);
//		System.out.println(list.size());
//		Assert.assertEquals(1194, list.size());
//	}
//	@Test
//	public void getAllListCount() throws SQLException {
//		int i = session.selectOne("Sales-Mapper.getSalesListWithoutGoodsCount",cri);
//		Assert.assertEquals(1194, i);
//	}
//	//지역검색 오케이
//	@Test
//	public void testLocalNum() throws SQLException {
//		Map<String, String> map = new HashMap<>();
//		map.put("fms_local", "044");
//		cri.setKeywordMap(map);
//		
//		List<FranSalesVO> list = session.selectList("Sales-Mapper.getSalesListWithoutGoods", cri);
//		System.out.println(list.size());
//		Assert.assertEquals(702, list.size());
//	}

//	@Test
//	public void goodsTestService() throws SQLException {
//		map.put("fms_fran", "F003");
//		cri.setKeywordMap(map);
//		Map<String, Object> jsonMap = service.getList(cri);
//		List<FranSalesVO> list = dao.franSalesList(cri);
//		List<FranSalesVO> list = (List<FranSalesVO>) jsonMap.get("franSalesList");
//		
//		Assert.assertEquals(14, list.size());
//	}
	@Test
	public void goodsTest() throws SQLException {
		map.put("fms_goods", "hg0001");
		map.put("fms_fran", "F001");
		cri.setKeywordMap(map);
//		Map<String, Object> jsonMap = service.getList(cri);
		List<FranSalesVO> list = dao.franSalesList(cri);
//		List<FranSalesVO> list = (List<FranSalesVO>) jsonMap.get("franSalesList");
		
		Assert.assertEquals(14, list.size());
	}
//	@Test
//	public void goodsTestDAO() throws SQLException {
//		map.put("fran_code", "F003");
//		cri.setKeywordMap(map);
//		List<FranSalesVO> list = session.selectList("Sales-Mapper.getSalesListWithoutGoods", cri);
//		
//		Assert.assertEquals(63, list.size());
//	}
//	@Test
//	public void goodsTest2() throws SQLException {
//		map.put("fran_code", "F008");
//		cri.setKeywordMap(map);
//		Map<String, Object> map2= service.getList(cri);
////		cri.setKeywordMap(map);
////		List<FranSalesVO> list = dao.franSalesList(cri);
//		List<FranSalesVO> list = (List<FranSalesVO>) map2.get("franSalesList");
//		Assert.assertEquals(20, list.size());
//	}
//	@Test
//	public void dateTest() throws SQLException {
//		cri.setPerPageNum(20);
//		int amount = 0;
//		amount = dao.amount(cri);
//		System.out.println(amount);
//		
//	}
	

}
