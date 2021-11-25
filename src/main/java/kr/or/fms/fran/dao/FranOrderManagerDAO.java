package kr.or.fms.fran.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDe;
import kr.or.fms.fran.dto.FranOrderVO;

public interface FranOrderManagerDAO {
	
	public List<FranOrderVO> getOrderList(SearchCriteria cri) throws SQLException;
	public int getOrderListCount(SearchCriteria cri) throws SQLException;
	public List<FranOrderDe> getOrderDetail(String orderCode) throws SQLException;
	public int deleteOrder(String orderCode) throws SQLException;
	public int updateOrder(Map<String, String> data) throws SQLException;
}
