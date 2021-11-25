package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.ReturnVO;

public interface HqReturnDAO {
	
	// 리스트 출력
	List<ReturnVO> selectBoardCriteria(SearchCriteria cri) throws SQLException;
	int selectBoardCriteriaTotalCount(SearchCriteria cri) throws SQLException;
	
	// 상세보기
	ReturnVO selectReturnByReturn_code(String return_code) throws SQLException;
	
	// 승인 상태 변경
	void updateReturnCheckSt(ReturnVO returnVO) throws SQLException;
	

}
