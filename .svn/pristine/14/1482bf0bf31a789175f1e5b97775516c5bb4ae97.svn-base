package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.logis.dto.LogisContractInfoVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.dto.LogisWhVO;

public interface LogisDAO {

	//물류센터정보조회
	LogisVO selectLogisByCode(String logis_code)throws SQLException;
	
	//오배송, 미승인 상태 건 불러오기
	int selectReturnCount()throws SQLException;
	
	//각 logis가 소유한 창고 정보
	List<LogisWhVO> selectLogisWh(String logis_code)throws SQLException;
	
	//현재 계약중인 업체
	int selectLogisHq(String logis_code)throws SQLException;
	
	//top5물품
	List<LogisWhVO> selectTopGoods(String logis_code)throws SQLException;
	
	//계약중인 업체 정보
	List<LogisContractInfoVO> selectContractHq(String logis_code)throws SQLException;
}
