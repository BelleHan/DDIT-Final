package kr.or.fms.sup.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.sup.dao.SupGoodsDAO;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.dto.SupVO;

public class SupGoodsServiceImpl implements SupGoodsService {

	private SupGoodsDAO supGoodsDAO;
	public void setSupGoodsDAO(SupGoodsDAO supGoodsDAO) {
		this.supGoodsDAO = supGoodsDAO;
	}
	
	@Override
	public Map<String, Object> getSupGoodsList(SearchCriteria cri, HttpSession session) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		//세션값에 저장된 sup_code가져오기
		SupVO sup = (SupVO)session.getAttribute("loginSup");
		cri.getKeywordMap().put("sup_code", sup.getSup_code());
	
		System.out.println("sup_code="+sup.getSup_code());
		
		//현재 page 번호에 맞는 리스트를 perPageNum 개수만큼 가져오기
		List<SupGoodsVO> supGoodsList = supGoodsDAO.selectGoodsCriteria(cri);
		
		//전체 list개수
		int totalCount = supGoodsDAO.selectGoodsCriteriaTotalCount(cri);
		
		List<String> lacaList = supGoodsDAO.selectLaca(sup.getSup_code());
		List<String> smcaList = supGoodsDAO.selectSmca();
		
		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("supGoodsList", supGoodsList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("lacaList", lacaList);
		dataMap.put("smcaList", smcaList);
		
		return dataMap;
	}
	
	@Override
	public Map<String, Object> getGoodsClass() throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<String> lacaList = supGoodsDAO.selectGoodsLaca();
		List<String> smcaList = supGoodsDAO.selectGoodsSmca();
		
		dataMap.put("lacaList", lacaList);
		dataMap.put("smcaList", smcaList);
		
		return dataMap;
	}

	@Override
	public List<String> searchSmca(String sup_goods_laca) throws SQLException {
		List<String> searchSmcaList = supGoodsDAO.searchSmca(sup_goods_laca);
		return searchSmcaList;
	}

	
	@Override
	public Map<String, Object> getSupGoodsListBySupCode(String sup_code) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<SupGoodsVO> supGoodsList = supGoodsDAO.selectSupGoods(sup_code);
		
		dataMap.put("supGoodsListBySupCode", supGoodsList);
		
		return dataMap;
	}

	
	@Override
	public SupGoodsVO getSupGoods(String sup_goods_code) throws SQLException {
		SupGoodsVO supGoods = supGoodsDAO.selectSupGoodsByCode(sup_goods_code);
		return supGoods;
	}

	@Override
	public void regist(SupGoodsVO supGoods) throws SQLException {
		supGoodsDAO.insertSupGoods(supGoods);
	}

	@Override
	public void allRegist(List<SupGoodsVO> supGoodsList) throws SQLException {
		supGoodsDAO.insertExcelSupGoods(supGoodsList);
	}
	
	@Override
	public void modify(SupGoodsVO supGoods) throws SQLException {
		supGoodsDAO.updateSupGoods(supGoods);
	}




//	@Override
//	public List<?> getExcelUpload(String excelFile) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		List<?> list = null;
//		
//		try {
//			Workbook wbs = ExcelUtil.getWorkbook(excelFile);
//			Sheet sheet = (Sheet)wbs.getSheetAt(0);
//			
//			for(int i = sheet.getFirstRowNum()+1; i<=sheet.getLastRowNum();i++) {
//				System.out.println("sheet 반복문");
//				
//				Row row = sheet.getRow(i);
//				
//				map.put("", value)
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//		}

//	}

		
	

}
