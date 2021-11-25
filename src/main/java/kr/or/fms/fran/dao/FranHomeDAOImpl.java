package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranGoodsDeVO;

public class FranHomeDAOImpl implements FranHomeDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public int selectFranOrderCount(String fran_code) throws SQLException {
		int count = session.selectOne("FranHome-Mapper.selectFranOrderCount",fran_code);
		return count;
	}

	@Override
	public int selectOrderCompletedCount(String fran_code) throws SQLException {
		int count = session.selectOne("FranHome-Mapper.selectOrderCompletedCount",fran_code);
		return count;
	}


	@Override
	public int selectReturnApplyCount(String fran_code) throws SQLException {
		int count = session.selectOne("FranHome-Mapper.selectReturnApplyCount",fran_code);
		return count;
	}


	@Override
	public int selectReturnCompleteCount(String fran_code) throws SQLException {
		int count = session.selectOne("FranHome-Mapper.selectReturnCompleteCount",fran_code);
		return count;
	}


	@Override
	public int selectStockRequestCount(String fran_code) throws SQLException {
		int count = session.selectOne("FranHome-Mapper.selectStockRequestCount",fran_code);
		return count;
	}

	//가맹점 재고승낙개수
	@Override
	public int selectStockAcceptCount(String fran_code) throws SQLException {
		int dealCount = session.selectOne("FranHome-Mapper.selectStockAcceptCount", fran_code);
		return dealCount;
	}
	
	@Override
	public List<FranDealVO> selectDealList(String fran_code) throws SQLException {
		List<FranDealVO> dealList = session.selectList("FranToFran-Mapper.selectDealList", fran_code);
		return dealList;
	}


	@Override
	public List<FranGoodsDeVO> franGoodsDe(String fran_code) throws SQLException {
		List<FranGoodsDeVO> franGoodsDeList = session.selectList("FranToFran-Mapper.dealGoodsList", fran_code);
		return franGoodsDeList;
	}

	//거래승낙
	@Override
	public void acceptDeal(FranDealVO franDealVO) throws SQLException {
		session.update("FranToFran-Mapper.acceptDeal", franDealVO);
	}

	//거래거절
	@Override
	public void denyDeal(FranDealVO franDealVO) throws SQLException {
		session.update("FranToFran-Mapper.denyDeal", franDealVO);
	}

	//다른가맹점 요청 취소
	@Override
	public void cancelDeal(FranDealVO franDealVO) throws SQLException {
		session.update("FranToFran-Mapper.deleteOtherDeal", franDealVO);
	}


	
	

}
