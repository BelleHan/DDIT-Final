package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.BuyGoodsDeVO;
import kr.or.fms.hq.dto.BuyGoodsVO;
import kr.or.fms.hq.dto.HqGoodsVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.sup.dto.SupGoodsVO;

public interface BuyGoodsDAO {

	//검색조건 list
	List<SupGoodsVO> selectBuyGoodsCriteria(SearchCriteria cri) throws SQLException;
	
	//검색한 총 list수
	int selectBuyGoodsCriteriaTotalCount(SearchCriteria cri) throws SQLException;

	//대분류콤보박스
	List<String> selectLaca() throws SQLException;
	//소분류콤보박스
	List<String> selectSmca() throws SQLException;
	
	//대분류 선택 시 대분류에 포함된 소분류 출력
	List<String> searchSmca(String sup_goods_laca) throws SQLException;
	
	//물류센터 선택
	List<LogisVO> searchLogis()throws SQLException;
	//물품상세비교
	List<SupGoodsVO> selectCompareGoods(SupGoodsVO supGoodsVO) throws SQLException;
	
	//sup_goods를 공급하는 공급업체 정보
	SupGoodsVO supGoods(String sup_goods_code)throws SQLException;
	
	//sup의 본사와의 계약상태
	String supContSt(String sup_goods_code)throws SQLException;
	
	//구매테이블 insert
	void insertBuyGoods(BuyGoodsVO buyGoods) throws SQLException;
	
	//구매테이블의 goods_pur_code가져오기
	String selectPurCode()throws SQLException;
	
	//구매상세테이블 insert
	void insertBuyGoodsDe(BuyGoodsDeVO buyGoodsDe)throws SQLException;
	
	//구매테이블 update
	void updateBuyGoods(BuyGoodsVO buyGoods)throws SQLException;
	
	//본사물품 테이블 insert
	void insertHqGoods(HqGoodsVO hqGoods)throws SQLException;
	
	

}
