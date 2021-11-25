package kr.or.fms.hq.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.fms.command.OrderOutCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.fran.dto.FranVO;

public class HqOrderDAOImpl implements HqOrderDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<FranOrderVO> selectBoardCriteria(SearchCriteria cri) throws SQLException {

		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<FranOrderVO> boardList =
				session.selectList("HqOrder-Mapper.selectOrderList",cri,rowBounds);
		
		return boardList;
		
	}

	@Override
	public int selectBoardCriteriaTotalCount(SearchCriteria cri) throws SQLException {
		
		int count = session.selectOne("HqOrder-Mapper.selectOrderListCount",cri);
		return count;
		
	}

	@Override
	public List<FranVO> selectFranList() throws SQLException {

		List<FranVO> franList = session.selectList("HqOrder-Mapper.selectFranList");
		return franList;
		
	}

	@Override
	public List<FranOrderDeVO> selectBoard(String fran_order_code) throws SQLException {
		
		List<FranOrderDeVO> franOrder = session.selectList("HqOrder-Mapper.selectOrderDetail", fran_order_code);
		return franOrder;
		
	}

	@Override
	public List<FranOrderDeVO> selectQuickList(FranOrderVO franOrderVO) throws SQLException {
		
		List<FranOrderDeVO> quickOrder = session.selectList("HqOrder-Mapper.selectOrderDetailQuick", franOrderVO);
		return quickOrder;
	}

	@Override
	public void updateQuickList(FranOrderDeVO franOrderDeVO) throws SQLException {
		
		session.update("HqOrder-Mapper.updateQuickList", franOrderDeVO);
		
	}

	@Override
	public void updateApprSt(FranOrderVO franOrderVO) throws SQLException {
		
		session.update("HqOrder-Mapper.updateApprSt", franOrderVO);
		
	}

	@Override
	public void updateOutQuick(OrderOutCommand command) throws SQLException {
		
		session.update("HqOrder-Mapper.insertOutQuick", command);
		
	}

	@Override
	public void updateOutList(OrderOutCommand command) throws SQLException {
		
		session.update("HqOrder-Mapper.insertOutList1", command);
		session.update("HqOrder-Mapper.insertOutList2", command);
		
	}



}
