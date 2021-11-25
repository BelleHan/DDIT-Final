package kr.or.fms.logis.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.logis.dto.LStockTakingVO;
import kr.or.fms.logis.dto.LogisWhVO;

public interface LogisStockService {
	
	// 물류센터재고리스트조회
	Map<String,Object> getStockList(SearchCriteria cri, HttpSession session)throws SQLException;
	
	//창고콤보박스
	List<LogisWhVO> getWhCombo(String logis_code) throws SQLException;
	//대분류콤보박스
	List<String> getLaca() throws SQLException;
	//소분류콤보박스
	List<String> getSmca() throws SQLException;
	
	List<LogisWhVO> getStock(LogisWhVO logisWhVO)throws SQLException;
	List<LogisWhVO> getStockForModify(LogisWhVO logisWhVO)throws SQLException;
	
	void modify(LogisWhVO logisWhVO)throws SQLException;
	
	//재고실사
	// 물류센터재고실사리스트조회
	Map<String,Object> getTakingList(SearchCriteria cri, HttpSession session)throws SQLException;
	
	//문자 발송
   void certifiedPhoneNumber(String cellNum, String url);
   
   //실사코드상세
   List<LStockTakingVO> getCode(LStockTakingVO taking_code) throws SQLException;
   
   //실사코드상세(시퀀스생성포함)
   int getNewCode() throws SQLException;
   
   //실사디테일 insert
   void registTemp(Map<String, String> data) throws SQLException;

   void updateTemp(Map<String, String> data) throws SQLException;

   void registData(Map<String, String> data) throws SQLException;


}
