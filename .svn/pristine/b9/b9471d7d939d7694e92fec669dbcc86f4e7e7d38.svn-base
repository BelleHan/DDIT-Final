package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.logis.dto.LogisVO;

public interface LogisListDAO {
	//물류센터
	List<LogisVO> selectLogisList()throws SQLException;
	List<LogisVO> selectLogisList(Criteria cri)throws SQLException;
	List<LogisVO> selectLogisList(SearchCriteria cri)throws SQLException;
	
	// 검색 결과의 전체 리스트 개수
	int selectLogisListCount(SearchCriteria cri) throws SQLException;
	
	// 상세조회
	LogisVO selectLogisBycode(String lcode);
	
	// 수정
	int updateLogis(LogisVO logis);

}
