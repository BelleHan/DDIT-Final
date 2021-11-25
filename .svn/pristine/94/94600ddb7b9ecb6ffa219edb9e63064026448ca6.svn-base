package kr.or.fms.fran.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.util.descriptor.web.FragmentJarScannerCallback;

import kr.or.fms.fran.dao.FranHomeDAO;
import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranGoodsDeVO;


public class FranHomeServiceImpl implements FranHomeService{
	
	
	private FranHomeDAO franHomeDAO;
	public void setFranHomeDAO(FranHomeDAO franHomeDAO) {
		this.franHomeDAO = franHomeDAO;
	}
	
	@Override
	public int getFranOrderCount(String fran_code) throws SQLException {
		int selectFranOrderCount = franHomeDAO.selectFranOrderCount(fran_code);
		return selectFranOrderCount;
	}

	@Override
	public int getOrderCompletedCount(String fran_code) throws SQLException {
		int selectOrderCompletedCount = franHomeDAO.selectOrderCompletedCount(fran_code);
		return selectOrderCompletedCount;
	}

	@Override
	public int getReturnApplyCount(String fran_code) throws SQLException {
		int selectReturnApplyCount = franHomeDAO.selectReturnApplyCount(fran_code);
		return selectReturnApplyCount;
	}

	@Override
	public int getReturnCompleteCount(String fran_code) throws SQLException {
		int selectReturnCompleteCount = franHomeDAO.selectReturnCompleteCount(fran_code);
		return selectReturnCompleteCount;
	}

	@Override
	public int getStockRequestCount(String fran_code) throws SQLException {
		int selectStockRequestCount = franHomeDAO.selectStockRequestCount(fran_code);
		return selectStockRequestCount;
	}
	//재고 승낙개수
	@Override
	public int getStockAcceptCount(String fran_code) throws SQLException {
		int selectStockAcceptCount = franHomeDAO.selectStockAcceptCount(fran_code);
		return selectStockAcceptCount;
	}

	@Override
	public List<FranDealVO> franDealList(String fran_code) throws SQLException {
		List<FranDealVO> franDealList = franHomeDAO.selectDealList(fran_code);
		return franDealList;
	}

	@Override
	public List<FranGoodsDeVO> franDealGoods(String fran_code) throws SQLException {
		List<FranGoodsDeVO> franGoodsList = franHomeDAO.franGoodsDe(fran_code);
		return franGoodsList;
	}

	@Override
	public void acceptDeal(FranDealVO franDealVO) throws SQLException {
		franHomeDAO.acceptDeal(franDealVO);
	}

	@Override
	public void denyDeal(FranDealVO franDealVO) throws SQLException {
		franHomeDAO.denyDeal(franDealVO);
	}

	@Override
	public void cancelDeal(FranDealVO franDealVO) throws SQLException {
		franHomeDAO.cancelDeal(franDealVO);
	}

	

}
