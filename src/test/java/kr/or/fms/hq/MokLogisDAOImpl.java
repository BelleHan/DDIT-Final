package kr.or.fms.hq;

import java.sql.SQLException;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import kr.or.fms.hq.dao.LogisListDAO;
import kr.or.fms.logis.dto.LogisVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokLogisDAOImpl {
	
	@Autowired
	private LogisListDAO logisListDAO;
	
	@Test
	public void selectEmp() throws SQLException {
		String logiscode = "L001";
		List<LogisVO> logisList = (List<LogisVO>) logisListDAO.selectLogisBycode(logiscode);
//		System.out.println(logisList.get(0).getLogis_code());
		Assert.assertEquals(1, logisList.size());
	}

}
