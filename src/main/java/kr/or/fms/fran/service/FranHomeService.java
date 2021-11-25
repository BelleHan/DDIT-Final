package kr.or.fms.fran.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranGoodsDeVO;

public interface FranHomeService {
	
	//발주신청
	int getFranOrderCount(String fran_code )throws SQLException;
		
	//발주완료
	int getOrderCompletedCount(String fran_code )throws SQLException;
		
	//반품신청
	int getReturnApplyCount(String fran_code )throws SQLException;
	
	//빈품완료
	int getReturnCompleteCount(String fran_code )throws SQLException;
	
	//가맹점간 재고요청
	int getStockRequestCount(String fran_code )throws SQLException;	
	
	//재고승낙개수
	int getStockAcceptCount(String fran_code)throws SQLException;
		
	//가맹점 재고요청 내용 조회(거래내용)
	List<FranDealVO> franDealList(String fran_code)throws SQLException;
	
	//재고요청 물품에 대한 재고조회
	List<FranGoodsDeVO> franDealGoods(String fran_code)throws SQLException;
	
	//당장거래승낙
	void acceptDeal(FranDealVO franDealVO)throws SQLException;
	//거절
	void denyDeal(FranDealVO franDealVO)throws SQLException;
	//거래승낙시 타 가맹점 요청 삭제
	void cancelDeal(FranDealVO franDealVO)throws SQLException;
}
