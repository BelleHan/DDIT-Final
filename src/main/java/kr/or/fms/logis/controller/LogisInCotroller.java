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
import kr.or.fms.logis.dto.InLogisVO;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.service.LogisInService;

@Controller
@RequestMapping("/logis")
public class LogisInCotroller {

	@Autowired
	LogisInService logisInService;

	@RequestMapping(value = "/in", method = RequestMethod.GET)
	public ModelAndView in(SearchCriteria cri, ModelAndView mnv, HttpSession session) throws SQLException {
		String url = "logis/in/list";
		LogisVO logis = (LogisVO) session.getAttribute("loginLogis");
		
		cri.getKeywordMap().put("logis_code", logis.getLogis_code());
		Map<String, Object> dataMap = logisInService.read(cri);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}

	@ResponseBody
	@RequestMapping(value = "/in/search.do", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> inSearch(@RequestBody Map<String, String> data, HttpSession session) throws SQLException {

		ResponseEntity<Map<String, Object>> entity = null;
		SearchCriteria cri = new SearchCriteria();
		LogisVO logis = (LogisVO) session.getAttribute("loginLogis");
		cri.setKeywordMap(data);
		cri.getKeywordMap().put("logis_code", logis.getLogis_code());
		cri.setPage(data.get("page"));
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			dataMap = logisInService.getSearchList(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}

	@ResponseBody
	@RequestMapping(value = "/in/detail", method = RequestMethod.POST)
	public ResponseEntity<List<InLogisVO>> inDetail(@RequestBody String iCode) throws SQLException {
		iCode = iCode.substring(0, 6);
		ResponseEntity<List<InLogisVO>> entity = null;
		try {

			List<InLogisVO> inDetail = logisInService.getDetail(iCode);

			entity = new ResponseEntity<List<InLogisVO>>(inDetail, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<InLogisVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}
	
	@ResponseBody
	@RequestMapping(value = "/in/modify", method = RequestMethod.POST)
	public ResponseEntity<String> inModify(@RequestBody Map<String, String> data) throws SQLException {
		ResponseEntity<String> entity = null;
		try {
			
			logisInService.modify(data);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	@ResponseBody
	@RequestMapping(value = "/in/delete", method = RequestMethod.POST)
	public ResponseEntity<String> inDelete(@RequestBody Map<String, String> data, HttpSession session) throws SQLException {
		ResponseEntity<String> entity = null;
		LogisVO logis = (LogisVO) session.getAttribute("loginLogis");
		data.put("logis_code", logis.getLogis_code());
		try {
			logisInService.delete(data);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}

}
