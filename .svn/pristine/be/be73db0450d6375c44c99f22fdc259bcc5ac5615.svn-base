package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;

public class SalesDAOImpl implements SalesDAO {
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public List<FranSalesVO> franSalesList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<FranSalesVO> list = session.selectList("Sales-Mapper.getSalesListWithoutGoods", cri, rowBounds);
		return list;
	}

	@Override
	public int franSalesListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Sales-Mapper.getSalesListWithoutGoodsCount",cri);
		return count;
	}

	@Override
	public int amount(SearchCriteria cri) throws SQLException {
		int count=0;		
		Object selectOne = session.selectOne("Sales-Mapper.getSalesListWithoutGoodsAmount",cri);
		if(selectOne != null) {
			count = (int) selectOne;
		}
		return count;
	}

	@Override
	public int sum(SearchCriteria cri) throws SQLException {
		int count=0;		
		Object selectOne = session.selectOne("Sales-Mapper.sum",cri);
		if(selectOne != null) {
			count = (int) selectOne;
		}
		return count;
	}

}
