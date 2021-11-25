package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.ReturnDetailVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.hq.dto.HqGoodsVO;

public interface FranReturnDAO {
	
	List<ReturnVO> selectBoardCriteria(SearchCriteria cri) throws SQLException;
	int selectBoardCriteriaTotalCount(SearchCriteria cri) throws SQLException;
	
	ReturnVO selectBoardByRcode(String return_code) throws SQLException;
	
	void updateReturnSt(ReturnVO returnVO) throws SQLException;
	
	void insertFranReturn(ReturnVO returnVO)throws SQLException;
	void insertFranReturnDe(ReturnDetailVO returnDeVO)throws SQLException;
	void updateFranReturn(ReturnVO returnVO)throws SQLException;
	void updateFranReturnDe(ReturnDetailVO returnDeVO)throws SQLException;
	void deleteFranReturn(String return_code)throws SQLException;
	
	//viewcnt  증가
	void increaseViewCnt(int pno)throws SQLException;
	
	//pds_seq.nextval 가져오기
	int getSeqNextValue() throws SQLException;
	
	//가장최근 return_seq 가져오기
	String getSeqCurrValue() throws SQLException;
	
	List<HqGoodsVO> selectGoodsList(String goods) throws SQLException;
	
	//상세보기
	ReturnVO selectReturnByReturn_code(String return_code) throws SQLException;

}
