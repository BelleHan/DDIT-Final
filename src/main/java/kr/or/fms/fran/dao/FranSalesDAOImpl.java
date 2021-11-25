package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;

public class FranSalesDAOImpl implements FranSalesDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public List<FranSalesVO> selectSalesCriteria(SearchCriteria cri) throws SQLException {

		int offset=cri.getStartRowNum();
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);		
		
		List<FranSalesVO> salesList=
				session.selectList("FranSales-Mapper.selectSearchBoardList",cri,rowBounds);
		
		return salesList;
	}

	@Override
	public int selectSalesCriteriaTotalCount(SearchCriteria cri) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
