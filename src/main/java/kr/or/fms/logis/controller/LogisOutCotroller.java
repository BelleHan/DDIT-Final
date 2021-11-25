package kr.or.fms.logis.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import kr.or.fms.hq.dto.OutVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.service.LogisOutService;

@Controller
@RequestMapping("/logis")
public class LogisOutCotroller {

	@Autowired
	LogisOutService logisOutService;

	@RequestMapping(value = "/out", method = RequestMethod.GET)
	public ModelAndView out(SearchCriteria cri, ModelAndView mnv, HttpSession session) throws SQLException {
		String url = "logis/out/list";
		LogisVO logis = (LogisVO) session.getAttribute("loginLogis");
		
		cri.getKeywordMap().put("logis_code", logis.getLogis_code());
		Map<String, Object> dataMap = logisOutService.read(cri);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}

	@ResponseBody
	@RequestMapping(value = "/out/search.do", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> outSearch(@RequestBody Map<String, String> data, HttpSession session) throws SQLException {

		ResponseEntity<Map<String, Object>> entity = null;
		SearchCriteria cri = new SearchCriteria();
		LogisVO logis = (LogisVO) session.getAttribute("loginLogis");
		cri.setKeywordMap(data);
		cri.getKeywordMap().put("logis_code", logis.getLogis_code());
		cri.setPage(data.get("page"));
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			dataMap = logisOutService.getSearchList(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}

	@ResponseBody
	@RequestMapping(value = "/out/detail", method = RequestMethod.POST)
	public ResponseEntity<List<OutVO>> outDetail(@RequestBody String ocode) throws SQLException {
		System.out.println(ocode);
		ocode = ocode.substring(0, 6);
		System.out.println(ocode);
		ResponseEntity<List<OutVO>> entity = null;
		try {

			List<OutVO> outDetail = logisOutService.getDetail(ocode);

			entity = new ResponseEntity<List<OutVO>>(outDetail, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<OutVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/out/modify", method = RequestMethod.POST)
	public ResponseEntity<String> outModify(@RequestBody Map<String, String> data) throws SQLException {
		ResponseEntity<String> entity = null;
		try {
			
			logisOutService.modify(data);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}

}
