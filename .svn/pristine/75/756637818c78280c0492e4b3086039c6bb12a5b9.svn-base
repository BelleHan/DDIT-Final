package kr.or.fms.fran;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dao.FranOrderManagerDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokOrderUpdate {
	SearchCriteria cri = new SearchCriteria();
	
	@Autowired
	FranOrderManagerDAO orderManagerDAO;
	
	@Autowired
	SqlSession session;

	@Test
	@Rollback
	public void orderUpdate() throws SQLException, ParseException {
		Map<String,String> map = new HashMap<>();
		map.put("order_code", "FROR41116");
		map.put("order_detail_num", "0001");
		map.put("goods_code", "hg0006");
		map.put("order_quan", "100");
		map.put("order_price", "1");
		int i = session.update("Orderlist-Mapper.updateOrder", map);
		System.out.println(i);
	}

}
