package kr.or.fms.sup.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.sup.dto.SalesGoodsVO;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;

public interface SupDAO {
	
	// 로그인(공급업체정보조회)
	SupVO selectSupByCode(String sup_code) throws SQLException;
	//////////////////////////////////////////////////////////////
	
	//등록물품
	List<SupGoodsVO> selectSupGoods(String sup_code)throws SQLException;
	
	//총등록물품갯수
	int selectTotalGoodsCount(String sup_code) throws SQLException;
	
	//요청물품
	List<SalesGoodsVO> selectSalesGoods(String sup_code) throws SQLException;
	//총요청물품갯수
	int selectTotalSalesGoodsCount(String sup_code) throws SQLException;
	

}
