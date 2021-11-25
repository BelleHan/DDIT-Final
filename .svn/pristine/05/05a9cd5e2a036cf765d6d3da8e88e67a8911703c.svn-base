package kr.or.fms.fran;

import java.sql.SQLException;
import java.text.ParseException;

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
public class MokOrderDelete {
	SearchCriteria cri = new SearchCriteria();
	
	@Autowired
	FranOrderManagerDAO orderManagerDAO;

	@Test
	@Rollback
	public void orderDelete() throws SQLException, ParseException {
		String orderCode = "FROR41107";
		
		int i = orderManagerDAO.deleteOrder(orderCode);
		
		System.out.println(i);
	}

}
