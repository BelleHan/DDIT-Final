package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.OutVO;

public class LogisOutDAOImpl implements LogisOutDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<OutVO> outList(SearchCriteria cri) throws SQLException {
		int offset=cri.getStartRowNum();
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		List<OutVO> outList = sqlSession.selectList("LogisOut-Mapper.outList", cri, rowBounds);
		return outList;
	}

	@Override
	public int outListCount(SearchCriteria cri) throws SQLException {
		int cnt = 0;
		cnt = sqlSession.selectOne("LogisOut-Mapper.outListCount", cri);
		return cnt;
	}

	@Override
	public List<OutVO> outLocaFran(String logisCode) throws SQLException {
		List<OutVO> list = sqlSession.selectList("LogisOut-Mapper.outLocaFran", logisCode);
		return list;
	}
	@Override
	public List<OutVO> outLocaLogis(String logisCode) throws SQLException {
		List<OutVO> list = sqlSession.selectList("LogisOut-Mapper.outLocaLogis", logisCode);
		return list;
	}

	@Override
	public List<OutVO> getDetail(String ocode) throws SQLException {
		List<OutVO> list = sqlSession.selectList("LogisOut-Mapper.getDetail", ocode);
		return list;
	}

	@Override
	public void updateOut(Map<String, String> data) throws SQLException {
		sqlSession.update("LogisOut-Mapper.updateOut", data);
	}
}
