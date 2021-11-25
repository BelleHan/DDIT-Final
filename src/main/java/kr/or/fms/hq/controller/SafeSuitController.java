package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.OutModifyCommand;
import kr.or.fms.command.SafeModifyCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.dto.FranStockVO;
import kr.or.fms.hq.dto.LogisStockTakingVO;
import kr.or.fms.hq.dto.OutVO;
import kr.or.fms.hq.service.StockListService;

@Controller
@RequestMapping("/hq")
public class SafeSuitController {
	
	@Autowired
	StockListService stockListService;
	
	@RequestMapping(value = "/safesuit/list", method = RequestMethod.GET)
	public ModelAndView stockFran(SearchCriteria cri, ModelAndView mnv) throws SQLException {
		String url = "hq/safeSuitList";
		cri.setPerPageNum(10);
		Map<String, Object> dataMap= stockListService.getFranStockList(cri);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/safesuit/searchfran.do", method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> stockSearchFran(@RequestBody Map<String, String> data) throws SQLException {
		ResponseEntity<Map<String,Object>> entity = null;
		SearchCriteria criMap = new SearchCriteria();
		criMap.setKeywordMap(data);
		criMap.setPage(data.get("page"));
		criMap.setPerPageNum(10);
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			
			dataMap= stockListService.getFranStockSearch(criMap);
			
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/safesuit/safemodify", method = RequestMethod.POST)
 	@ResponseBody
 	public ResponseEntity<String> safeModify(@RequestBody SafeModifyCommand regReq) throws SQLException {
 		
 		ResponseEntity<String> entity=null;
 		
 		FranStockVO franStockVO = regReq.toFranSafeVO();
 		
 		try {
 			stockListService.ModifyFranSafeSuit(franStockVO);
 			entity = new ResponseEntity<String>("modify", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
 			entity = new ResponseEntity<String>(e.getMessage(),
					HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}


	
}
