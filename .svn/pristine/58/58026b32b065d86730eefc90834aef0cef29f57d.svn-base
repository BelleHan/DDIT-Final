package kr.or.fms.sup.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.fms.sup.dto.SalesGoodsVO;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;

public class SupDAOImpl implements SupDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public SupVO selectSupByCode(String sup_code) throws SQLException {
		SupVO sup = session.selectOne("Sup-Mapper.selectSupByCode", sup_code);			
		return sup;
	}

	@Override
	public List<SupGoodsVO> selectSupGoods(String sup_code) throws SQLException {
		List<SupGoodsVO> supGoods = session.selectList("SupMain-Mapper.selectSupGoodsList", sup_code);
		return supGoods;
	}

	@Override
	public int selectTotalGoodsCount(String sup_code) throws SQLException {
		int count = session.selectOne("SupMain-Mapper.selectTotalGoodsCount", sup_code);
		return count;
	}

	@Override
	public List<SalesGoodsVO> selectSalesGoods(String sup_code) throws SQLException {
		List<SalesGoodsVO> salesGoods = session.selectList("SupMain-Mapper.selectSalesGoodsList", sup_code);
		return salesGoods;
	}

	@Override
	public int selectTotalSalesGoodsCount(String sup_code) throws SQLException {
		int count = session.selectOne("SupMain-Mapper.selectTotalSalesGoodsCount", sup_code);
		return count;
	}



}
