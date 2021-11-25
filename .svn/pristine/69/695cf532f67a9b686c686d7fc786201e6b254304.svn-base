package kr.or.fms.sup.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.fms.sup.dao.SupDAO;
import kr.or.fms.sup.dto.SalesGoodsVO;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;

public class SupServiceImpl implements SupService {
	
	private SupDAO supDAO;
	public void setSupDAO(SupDAO supDAO) {
		this.supDAO = supDAO;
	}

	@Override
	public SupVO getSup(String sup_code) throws SQLException {
		SupVO sup = supDAO.selectSupByCode(sup_code);
		return sup;
	}

	@Override
	public List<SupGoodsVO> getSupGoods(String sup_code) throws SQLException {
		List<SupGoodsVO> supGoods = supDAO.selectSupGoods(sup_code);
		return supGoods;
	}

	@Override
	public int getTotalCount(String sup_code) throws SQLException {
		int totalCount = supDAO.selectTotalGoodsCount(sup_code);
		return totalCount;
	}

	@Override
	public List<SalesGoodsVO> getSalesGoods(String sup_code) throws SQLException {
		List<SalesGoodsVO> salesGoods = supDAO.selectSalesGoods(sup_code);
		return salesGoods;
	}

	@Override
	public int getTotalSalesGoodsCount(String sup_code) throws SQLException {
		int totalCount = supDAO.selectTotalSalesGoodsCount(sup_code);
		return totalCount;
	}

}
