package kr.or.fms.hq.dao;

import java.sql.SQLException;

import kr.or.fms.hq.dto.HqEmpVO;

public interface EmpDAO {
	HqEmpVO selectEmp(String code) throws SQLException;
}
