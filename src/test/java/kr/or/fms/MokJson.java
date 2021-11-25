package kr.or.fms;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.JsonArray;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dao.AttachDAO;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.fran.dao.FranReturnDAO;
import kr.or.fms.fran.dto.FranSalesVO;
import kr.or.fms.fran.service.FranReturnService;
import kr.or.fms.hq.dao.SalesDAO;
import kr.or.fms.hq.service.InOutService;
import kr.or.fms.util.JsonUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokJson {
	
	@Autowired
	SqlSession session;
	
	@Autowired
	InOutService inOutService;
	
	@Autowired
	SalesDAO salesDAO;
	
	@Test
	public void testJsonList() throws SQLException {
		SearchCriteria cri = new SearchCriteria();
		String listToJson = null;
//		String[] split = null;
		try {
			List<FranSalesVO> franSalesList = salesDAO.franSalesList(cri);
			listToJson = JsonUtil.ListToJson(franSalesList);
			
//			split = listToJson.split("}");
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		for (int i = 0 ; i < split.length ; i++) {
//			System.out.println("나와라 " + split[i].substring(1) + "}");
//		}
//		System.out.println(listToJson);
	}
	@Test
	public void testJsonMap() throws SQLException {
		SearchCriteria cri = new SearchCriteria();
		String mapToJson = null;
//		String[] split = null;
		try {
			Map<String, Object> dataMap = inOutService.getOutTakingList(cri);
			mapToJson = JsonUtil.MapToJson(dataMap);
			
//			split = listToJson.split("}");
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		for (int i = 0 ; i < split.length ; i++) {
//			System.out.println("나와라 " + split[i].substring(1) + "}");
//		}
		System.out.println(mapToJson);
	}

}
