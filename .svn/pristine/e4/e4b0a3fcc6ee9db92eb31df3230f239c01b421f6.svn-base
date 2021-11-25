package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranVO;

public interface FranListDAO {
	
	// 가맹점정보 조회
	FranVO selectFranByCode(String fcode) throws SQLException;
	
	// 가맹점정보 수정
	void updateFran(FranVO fran) throws SQLException;
	
	//가맹점리스트 조회
	List<FranVO> selectFranList()throws SQLException;
	List<FranVO> selectFranList(Criteria cri)throws SQLException;
	List<FranVO> selectFranList(SearchCriteria cri)throws SQLException;
	
	// 검색 결과의 전체 리스트 개수
	int selectFranListCount(SearchCriteria cri) throws SQLException;

}
