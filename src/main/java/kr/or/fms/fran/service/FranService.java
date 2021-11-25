package kr.or.fms.fran.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranContractInfoVO;
import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dto.HqEmpVO;

public interface FranService {

	//가맹점페이지 조회
	FranContractInfoVO getFranContInfo(String fran_code)throws SQLException;
	
	//가맹점 조회
	FranVO getFran(String fran_code)throws SQLException;
	
	//가맹점 당당 사원 조회
	HqEmpVO getFranEmp(String fran_code)throws SQLException;
	
	//주변가맹점 list
	List<FranVO> getNearFranList(FranVO fran)throws SQLException;
	
	//물품검색 list
	Map<String, Object> getSearchGoods(SearchCriteria cri)throws SQLException;
	
	//대분류 콤보박스
	List<String> getLaca()throws SQLException;
	
	//소분류 콤보박스
	List<String> getSmca()throws SQLException;
	
	//대분류 적용시 소분류
	List<String> searchSmca(String sup_goods_laca)throws SQLException;
	
	
	//거래코드 만들기
	String franDealCode()throws SQLException;
	
	//가맹점 거래 요청 insert2
	void reegistFranDeal(FranDealVO franDealVO)throws SQLException;
	
	//가맹점 거래요청 후 list(오늘날짜기준)
	List<FranDealVO> getFranDealList(String fran_code)throws SQLException;
}
