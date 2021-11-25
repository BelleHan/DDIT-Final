package kr.or.fms.logis.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.logis.dto.InLogisVO;
import kr.or.fms.logis.dto.LogisWhVO;
import kr.or.fms.sup.dto.InGoodsVO;

public class LogisInDAOImpl implements LogisInDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<InLogisVO> inList(SearchCriteria cri) throws SQLException {
		int offset=cri.getStartRowNum();
		int limit=cri.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);
		List<InLogisVO> inList = sqlSession.selectList("LogisIn-Mapper.inList", cri, rowBounds);
		return inList;
	}

	@Override
	public int inListCount(SearchCriteria cri) throws SQLException {
		int cnt = 0;
		cnt = sqlSession.selectOne("LogisIn-Mapper.inListCount", cri);
		return cnt;
	}

	@Override
	public List<LogisWhVO> inWh(String logisCode) throws SQLException {
		List<LogisWhVO> list = sqlSession.selectList("LogisIn-Mapper.inWh", logisCode);
		return list;
	}
	@Override
	public List<InGoodsVO> inSup(String logisCode) throws SQLException {
		List<InGoodsVO> list = sqlSession.selectList("LogisIn-Mapper.inSup", logisCode);
		return list;
	}

	@Override
	public List<InLogisVO> getDetail(String iCode) throws SQLException {
		List<InLogisVO> list = sqlSession.selectList("LogisIn-Mapper.getDetail", iCode);
		return list;
	}

	@Override
	public void updateIn(Map<String, String> data) throws SQLException {
		sqlSession.update("LogisIn-Mapper.updateIn", data);
	}

	@Override
	public void deletInDetail(Map<String, String> data) throws SQLException {
		sqlSession.update("LogisIn-Mapper.deletInDetail", data);
	}
}
