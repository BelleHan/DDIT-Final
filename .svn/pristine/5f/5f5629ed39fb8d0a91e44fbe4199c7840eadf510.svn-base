package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.sup.dto.SupVO;

public interface ComListService {
	
	// 가맹점상세보기
	FranVO getFran(String fcode) throws SQLException;
	// 물류센터상세보기
	LogisVO getLogis(String lcode) throws SQLException;
	
	// 가맹점수정
	void modifyFran(FranVO fran) throws SQLException;
	// 물류센터수정
	void modifyLogis(LogisVO logis) throws SQLException;
	
	// 가맹점 수정화면 상세
	FranVO getFranForModify(String fcode) throws SQLException;
	// 물류센터 수정화면 상세
	LogisVO getLogisForModify(String lcode) throws SQLException;
	
	// 가맹점리스트조회
	List<FranVO> getFranList()throws SQLException;
	List<FranVO> getFranList(Criteria cri)throws SQLException;
	Map<String, Object> getFranList(SearchCriteria cri)throws SQLException;
	// 물류센터리스트조회
	List<LogisVO> getLogisList()throws SQLException;
	List<LogisVO> getLogisList(Criteria cri)throws SQLException;
	Map<String, Object> getLogisList(SearchCriteria cri)throws SQLException;
	
	
	//공급업체 상세보기
	SupVO GetSup(String scode)throws SQLException;
	//공급업체 리스트 조회
	List<SupVO> getSupList()throws SQLException;
	List<SupVO> getSupList(Criteria cri)throws SQLException;
	Map<String, Object> getSupList(SearchCriteria cri)throws SQLException;
	
	//공급업체 수정
	void modifySup(SupVO sup)throws SQLException;
	//공급업체 수정화면 상세
	SupVO getSupForModify(String scode) throws SQLException;

}
