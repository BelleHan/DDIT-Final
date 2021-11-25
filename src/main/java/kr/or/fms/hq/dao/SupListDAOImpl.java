package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.sup.dto.SupVO;

public class SupListDAOImpl implements SupListDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session=session;
	}

	@Override
	public List<SupVO> selectSupList() throws SQLException {
		List<SupVO> supList = session.selectList("Hq-Mapper.selectSupList");
		return supList;
	}

	@Override
	public List<SupVO> selectSupList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<SupVO> supList = session.selectList("Hq-Mapper.selectSupList", null, rowBounds);
		return supList;
	}

	@Override
	public List<SupVO> selectSupList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<SupVO> supList = session.selectList("Hq-Mapper.selectSearchSupList",cri,rowBounds);
		return supList;
	}

	@Override
	public int selectSupListCount(SearchCriteria cri) throws SQLException {
		int count=0;		
		count=session.selectOne("Hq-Mapper.selectSupListCount",cri);
		return count;
	}

	@Override
	public SupVO selectSupByCode(String scode) throws SQLException {
		SupVO sup = session.selectOne("Hq-Mapper.selectSupByCode", scode);
		return sup;
	}

	@Override
	public void updateSup(SupVO sup) throws SQLException {
		session.update("Hq-Mapper.updateSup", sup);
	}



}
