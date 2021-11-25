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

import kr.or.fms.hq.dao.EmpDAO;
import kr.or.fms.hq.dao.LogisListDAO;
import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.logis.dto.LogisVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:kr/or/fms/context/root-context.xml")
@Transactional
public class MokemlDAOImpl {
	
	@Autowired
	private EmpDAO empDAO;
	
	@Test
	public void selectEmp() throws SQLException {
		HqEmpVO selectEmp = empDAO.selectEmp("tt");
		System.out.println(selectEmp.getEmp_no());
	}

}
