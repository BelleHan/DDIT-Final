package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDe;
import kr.or.fms.fran.dto.FranOrderVO;

public class FranOrderManagerDAOImpl implements FranOrderManagerDAO {
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<FranOrderVO> getOrderList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		List<FranOrderVO> list = session.selectList("Orderlist-Mapper.getOrderList", cri, rowBounds);
		return list;
	}

	@Override
	public int getOrderListCount(SearchCriteria cri) throws SQLException {
		int cnt = 0;
		cnt = session.selectOne("Orderlist-Mapper.getOrderListCount", cri);
		return cnt;
	}

	@Override
	public List<FranOrderDe> getOrderDetail(String orderCode) throws SQLException {
		List<FranOrderDe> detailList = session.selectList("Orderlist-Mapper.getOrderDetail", orderCode);
		return detailList;
	}

	@Override
	public int deleteOrder(String orderCode) throws SQLException {
		int cnt = 0;
		cnt = session.update("Orderlist-Mapper.deleteOrder", orderCode);
		return cnt;
	}

	@Override
	public int updateOrder(Map<String, String> data) throws SQLException {
		int cnt = 0;
		cnt = session.update("Orderlist-Mapper.updateOrder", data);
		return cnt;
	}

}
