package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.BuyGoodsTotalVO;

public class GoodsBuyDAOImpl implements GoodsBuyDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	@Override
	public List<BuyGoodsTotalVO> selectGoodsCriteria(SearchCriteria cri) throws SQLException {
		int offset=cri.getStartRowNum();
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);		
		
		List<BuyGoodsTotalVO> boardList=
				session.selectList("GoodsBuy-Mapper.selectSearchGoodsList",cri,rowBounds);
		
		return boardList;
	}
	@Override
	public int selectGoodsCriteriaTotalCount(SearchCriteria cri) throws SQLException {
		int count=session.selectOne("GoodsBuy-Mapper.selectSearchGoodsListCount",cri);
		return count;
	}

}
