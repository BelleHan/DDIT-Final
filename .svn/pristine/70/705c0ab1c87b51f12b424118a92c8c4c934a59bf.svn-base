package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.FranStockVO;
import kr.or.fms.hq.dto.LogisStockTakingVO;
import kr.or.fms.hq.dto.LogisStockVO;

public class StockDAOImpl implements StockDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}
	
	@Override
	public List<FranStockVO> franStockList() throws SQLException {
		List<FranStockVO> franList = session.selectList("Stock-Mapper.franStockList");
		return franList;
	}

	@Override
	public List<FranStockVO> franStockList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<FranStockVO> franList = session.selectList("Stock-Mapper.franStockSearchList", null, rowBounds);
		return franList;
	}

	@Override
	public List<FranStockVO> franStockList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<FranStockVO> franList = session.selectList("Stock-Mapper.franStockSearchList", cri, rowBounds);
		return franList;
	}

	@Override
	public int franStockListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Stock-Mapper.franStockListCount",cri);
		return count;
	}

	@Override
	public List<LogisStockVO> logisStockList() throws SQLException {
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockList");
		return logisList;
	}

	@Override
	public List<LogisStockVO> logisStockList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockSearchList", null, rowBounds);
		return logisList;
	}

	@Override
	public List<LogisStockVO> logisStockList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockSearchList", cri, rowBounds);
		return logisList;
	}

	@Override
	public int logisStockListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Stock-Mapper.logisStockListCount",cri);
		return count;
	}

	@Override
	public List<LogisStockTakingVO> logisStockTakingList() throws SQLException {
		List<LogisStockTakingVO> logisTakingList = session.selectList("Stock-Mapper.logisStockTakingList");
		return logisTakingList;
	}
	
	@Override
	public List<LogisStockTakingVO> logisStockTakingList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<LogisStockTakingVO> logisTakingList = session.selectList("Stock-Mapper.logisStockTakingSearchList", null, rowBounds);
		return logisTakingList;
	}
	
	@Override
	public List<LogisStockTakingVO> logisStockTakingList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<LogisStockTakingVO> logisTakingList = session.selectList("Stock-Mapper.logisStockTakingSearchList", cri, rowBounds);
		return logisTakingList;
	}

	@Override
	public int franStockTakingListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Stock-Mapper.logisStockTakingSearchCount",cri);
		return count;
	}
	
	@Override
	public List<LogisStockTakingVO> getLogisStockTakingDetail(String takingCode) throws SQLException {
		List<LogisStockTakingVO> takingDetail = session.selectList("Stock-Mapper.getLogisStockTakingDetail", takingCode);
		return takingDetail;
	}
	@Override
	public void updateFranSafeSuit(FranStockVO franStockVO) throws SQLException {
		
		session.update("Stock-Mapper.updateFranSafeSuit", franStockVO);
	}

/////////////////////////////////////////////////웅////////////////////////////////////////////////////////////////////////////
	@Override
	public List<LogisStockVO> logisStock() throws SQLException {
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockList2");
		return logisList;
	}

	@Override
	public List<LogisStockVO> logisStock(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockSearchList2", null, rowBounds);
		return logisList;
	}

	@Override
	public List<LogisStockVO> logisStock(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<LogisStockVO> logisList = session.selectList("Stock-Mapper.logisStockSearchList2", cri, rowBounds);
		return logisList;
	}

	@Override
	public int logisStockCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Stock-Mapper.logisStockListCount",cri);
		return count;
	}

	
	

}
