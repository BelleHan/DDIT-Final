package kr.or.fms.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dto.HqGoodsVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.dto.LogisWhVO;
import kr.or.fms.sup.dto.SupVO;

public interface KeywordService {
	
	public List<HqGoodsVO> goods() throws SQLException;

	public List<String> local() throws SQLException;
	
	List<LogisVO> logis() throws SQLException;

	List<FranVO> fran() throws SQLException;

	List<SupVO> sup() throws SQLException;

	List<String> laca() throws SQLException;

	List<String> smca() throws SQLException;
	
	List<LogisVO> log() throws SQLException;
	
	List<HqGoodsVO> hq() throws SQLException;
	
	List<FranVO> outFran() throws SQLException;
	
	List<LogisVO> outLogis() throws SQLException;
	
	List<LogisWhVO> wh(String fmsLogis) throws SQLException;
	List<LogisWhVO> whcn(String fmsLogis) throws SQLException;

	///////////////////////////////////////////////////
	
	List<LogisWhVO> logisWh() throws SQLException;

	public HqGoodsVO goodsde(String code) throws SQLException;

	public LogisWhVO getlogisGoods(Map<String, String> data) throws SQLException;
}
