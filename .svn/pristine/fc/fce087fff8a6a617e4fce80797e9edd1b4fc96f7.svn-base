package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranSalesVO;
import kr.or.fms.hq.service.SalesService;

@RequestMapping("hq")
@Controller
public class SalesController {
	
	@Autowired
	SalesService service;
	
	@RequestMapping("/sales/fran")
	public ModelAndView franSales(SearchCriteria cri, ModelAndView mnv) throws SQLException {
		String url = "hq/sales/sales_fran";
		Map<String, Object> dataMap = service.getList(cri);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/sales/franSearch", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> franSalesSearch(@RequestBody Map<String, String> data) throws SQLException {
		ResponseEntity<Map<String, Object>> entity = null;
		SearchCriteria cri = new SearchCriteria();
		if (data != null) {
			cri.setKeywordMap(data);
			cri.setPage(data.get("page"));
		}
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			dataMap= service.getList(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
		
	}
	
}
