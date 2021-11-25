package kr.or.fms.sup.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.sup.dto.SalesGoodsVO;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;

public interface SupService {
	
	// 공급업체 로그인
	SupVO getSup(String sup_code) throws SQLException;
	
	List<SupGoodsVO> getSupGoods(String sup_code)throws SQLException;
	
	//총등록물품갯수
	int getTotalCount(String sup_code)throws SQLException;
	
	List<SalesGoodsVO> getSalesGoods(String sup_code) throws SQLException;
	int getTotalSalesGoodsCount(String sup_code) throws SQLException;
	

}
