package kr.or.fms.hq.service;

import java.sql.SQLException;

import kr.or.fms.exception.InvalidPasswordException;
import kr.or.fms.exception.NotFoundIdException;
import kr.or.fms.hq.dao.EmpDAO;
import kr.or.fms.hq.dto.HqEmpVO;

public class EmpServiceImpl implements EmpService {
	
	private EmpDAO empDAO;
	public void setEmpDAO(EmpDAO empDAO) {
		this.empDAO = empDAO;
	}

	@Override
	public void login(String code, String pwd) throws SQLException, NotFoundIdException, InvalidPasswordException {
		HqEmpVO emp = empDAO.selectEmp(code);
		if (emp == null) throw new NotFoundIdException();
		if (!pwd.equals(emp.getEmp_pwd())) throw new InvalidPasswordException();
	}

	@Override
	public HqEmpVO getEmp(String code) throws SQLException {
		HqEmpVO emp = empDAO.selectEmp(code);
		return emp;
	}

}
