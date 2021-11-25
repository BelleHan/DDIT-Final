package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dao.GoodsBuyDAO;
import kr.or.fms.hq.dto.BuyGoodsTotalVO;

public class GoodsBuyServiceImpl implements GoodsBuyService {
	
	private GoodsBuyDAO goodsBuyDAO;
	public void setGoodsBuyDAO(GoodsBuyDAO goodsBuyDAO) {
		this.goodsBuyDAO = goodsBuyDAO;
	}
	@Override
	public Map<String, Object> getGoodsList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<BuyGoodsTotalVO> goodsList = goodsBuyDAO.selectGoodsCriteria(cri);
		// 전체 board 개수
		int totalCount = goodsBuyDAO.selectGoodsCriteriaTotalCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("goodsList", goodsList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

}
