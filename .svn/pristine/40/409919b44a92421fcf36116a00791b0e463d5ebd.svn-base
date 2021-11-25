package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranVO;

public class FranListDAOImpl implements FranListDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public List<FranVO> selectFranList() throws SQLException {
		List<FranVO> franList = session.selectList("Hq-Mapper.selectFranList");
		return franList;
	}

	@Override
	public List<FranVO> selectFranList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<FranVO> franList = session.selectList("Hq-Mapper.selectFranList", null, rowBounds);
		return franList;
	}

	@Override
	public List<FranVO> selectFranList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<FranVO> franList = session.selectList("Hq-Mapper.selectSearchFranList",cri,rowBounds);
		return franList;
	}

	@Override
	public int selectFranListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Hq-Mapper.selectFranListCount",cri);
		return count;
	}

	@Override
	public FranVO selectFranByCode(String fcode) throws SQLException {
		FranVO fran = session.selectOne("Hq-Mapper.selectFranByCode", fcode);
		return fran;
	}

	@Override
	public void updateFran(FranVO fran) throws SQLException {
		session.update("Hq-Mapper.updateFran", fran);
		
	}

}
