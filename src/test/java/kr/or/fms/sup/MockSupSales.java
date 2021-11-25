package kr.or.fms.sup;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.or.fms.hq.dto.InVO;
import kr.or.fms.sup.dao.SupSalesDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MockSupSales {
	
	@Autowired
	SqlSession session;
	
	@Autowired
	private SupSalesDAO	dao;
	
	@Test
	public void selectEmp() throws SQLException {
		InVO inVO = new InVO();
		inVO.setGoods_pur_code("BG0006");
		inVO.setIn_date("2021-11-04");
		inVO.setIn_loca("SU0001");
		inVO.setIn_num(5);
		inVO.setLogis_code("L001");
		inVO.setSup_goods_code("SG0010");
		int i = session.update("SupSales-Mapper.insertInList", inVO);
		System.out.println("=================" + i);
	}

}
