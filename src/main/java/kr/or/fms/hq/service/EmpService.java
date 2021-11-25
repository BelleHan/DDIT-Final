package kr.or.fms.hq.service;

import java.sql.SQLException;

import kr.or.fms.exception.InvalidPasswordException;
import kr.or.fms.exception.NotFoundIdException;
import kr.or.fms.hq.dto.HqEmpVO;

public interface EmpService {
		void login(String id, String pwd) throws SQLException, NotFoundIdException, InvalidPasswordException;
		
		HqEmpVO getEmp(String id) throws SQLException;
}
