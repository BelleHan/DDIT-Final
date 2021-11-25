package kr.or.fms.hq.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.fms.command.Criteria;
import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.dao.FranListDAO;
import kr.or.fms.hq.dao.LogisListDAO;
import kr.or.fms.hq.dao.SupListDAO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.sup.dto.SupVO;

public class ComListServiceImpl implements ComListService {

	private FranListDAO franListDAO;
	public void setFranListDAO(FranListDAO franListDAO) {
		this.franListDAO = franListDAO;
	}
	
	private LogisListDAO logisListDAO;
	public void setLogisListDAO(LogisListDAO logisListDAO) {
		this.logisListDAO = logisListDAO;
	}
	
	private SupListDAO supListDAO;
	public void setSupListDAO(SupListDAO supListDAO) {
		this.supListDAO = supListDAO;
	}

	@Override
	public List<FranVO> getFranList() throws SQLException {
		List<FranVO> franList = franListDAO.selectFranList();
		
		return franList;
	}

	@Override
	public List<FranVO> getFranList(Criteria cri) throws SQLException {
		List<FranVO> franList = franListDAO.selectFranList(cri);
		return franList;
	}

	@Override
	public Map<String, Object> getFranList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(franListDAO.selectFranListCount(cri));

		List<FranVO> franList = franListDAO.selectFranList(cri);
		
		dataMap.put("franList", franList);
		dataMap.put("pageMaker1", pageMaker);

		return dataMap;
	}

	@Override
	public List<LogisVO> getLogisList() throws SQLException {
		List<LogisVO> logisList = logisListDAO.selectLogisList();
		return logisList;
	}

	@Override
	public List<LogisVO> getLogisList(Criteria cri) throws SQLException {
		List<LogisVO> logisList = logisListDAO.selectLogisList(cri);
		return logisList;
	}

	@Override
	public Map<String, Object> getLogisList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(logisListDAO.selectLogisListCount(cri));
		List<LogisVO> logisList = logisListDAO.selectLogisList(cri);

		dataMap.put("logisList", logisList);
		dataMap.put("pageMaker2", pageMaker);

		return dataMap;
	}

	@Override
	public FranVO getFran(String fcode) throws SQLException {
		FranVO fran = franListDAO.selectFranByCode(fcode);
		return fran;
	}

	@Override
	public void modifyFran(FranVO fran) throws SQLException {
		franListDAO.updateFran(fran);
	}

	@Override
	public FranVO getFranForModify(String fcode) throws SQLException {
		FranVO fran = franListDAO.selectFranByCode(fcode);
		return fran;
	}

	@Override
	public LogisVO getLogis(String lcode) throws SQLException {
		LogisVO logis = logisListDAO.selectLogisBycode(lcode);
		return logis;
	}

	@Override
	public void modifyLogis(LogisVO logis) throws SQLException {
		logisListDAO.updateLogis(logis);
	}

	@Override
	public LogisVO getLogisForModify(String lcode) throws SQLException {
		LogisVO logis = logisListDAO.selectLogisBycode(lcode);
		return logis;
	}

	@Override
	public List<SupVO> getSupList() throws SQLException {
		List<SupVO> supList = supListDAO.selectSupList();
		return supList;
	}

	@Override
	public List<SupVO> getSupList(Criteria cri) throws SQLException {
		List<SupVO> supList = supListDAO.selectSupList(cri);
		return supList;
	}

	@Override
	public Map<String, Object> getSupList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(supListDAO.selectSupListCount(cri));
		List<SupVO> supList = supListDAO.selectSupList(cri);

		dataMap.put("supList", supList);
		dataMap.put("pageMaker3", pageMaker);

		return dataMap;
	}

	@Override
	public SupVO GetSup(String scode) throws SQLException {
		
		SupVO sup = supListDAO.selectSupByCode(scode);
		return sup;
	}

	@Override
	public void modifySup(SupVO sup) throws SQLException {
		supListDAO.updateSup(sup);
		
	}

	@Override
	public SupVO getSupForModify(String scode) throws SQLException {
		SupVO sup = supListDAO.selectSupByCode(scode);
		return sup;
	}
	
}
