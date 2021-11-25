package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.logis.dto.LogisContractInfoVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.dto.LogisWhVO;

public interface LogisService {
	
	//logis조회
	LogisVO getLogis(String logis_code)throws SQLException;

	//오배송, 미승인
	int getReturnCount()throws SQLException;
	
	//logis가 소유한 창고정보
	List<LogisWhVO> getLogisWh(String logis_code)throws SQLException;
	
	//현재 계약중인 업체
	int getLogisHq(String logis_code)throws SQLException;
	
	//물품5
	List<LogisWhVO> getTopGoods(String logis_code)throws SQLException;
	
	//계약중인 업체 정보
	List<LogisContractInfoVO> getContractHq(String logis_code)throws SQLException;
}
