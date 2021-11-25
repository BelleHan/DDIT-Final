package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranContractInfoVO;
import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.hq.dto.HqGoodsVO;

public interface FranDAO {

	//가맹점 정보조회(가맹점페이지)
	FranContractInfoVO selectFranInfo(String fran_code)throws SQLException;
	
	//가맹점 조회
	FranVO selectFranBycode(String fran_code)throws SQLException;
	
	HqEmpVO selectFranEmp(String fran_code)throws SQLException;

	//주변가맹점 list
	List<FranVO> selectNearFran(FranVO fran) throws SQLException;
	
	//재고요청할 물품조회
	List<HqGoodsVO> searchGoods(SearchCriteria cri)throws SQLException;
	
	//재고요청할 물품 총개수
	int searchGoodsCount(SearchCriteria cri)throws SQLException;
	
	//대분류
	List<String> selectLaca()throws SQLException;
	
	//소분류
	List<String> selectSmca()throws SQLException;
	
	//대분류 적용시 소분류
	List<String> searchSmca(String sup_goods_laca)throws SQLException;
	
	//가맹점간 거래코드 생성
	String getFranDealCode()throws SQLException;
	
	//가맹점간 거래 insert2
	void insertFranToFran(FranDealVO franDealVO)throws SQLException;
	
	//거래요청 list(오늘날짜 기준)
	List<FranDealVO> selectFranDealList(String fran_code)throws SQLException;
}
