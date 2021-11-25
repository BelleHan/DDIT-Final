package kr.or.fms.fran.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranOrderDe;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.fran.service.FranOrderManageService;

@Controller
@RequestMapping("/fr")
public class FrOrderManagerController {
	
	@Autowired
	FranOrderManageService service;
	
	@RequestMapping("/order/manage")
	public ModelAndView orderManage(SearchCriteria cri, ModelAndView mnv, HttpSession session) throws SQLException {
		String url = "fr/order/manage";
		FranVO fran= (FranVO) session.getAttribute("loginFran");
		cri.getKeywordMap().put("fran_code", fran.getFran_code());
		Map<String, Object> orderList = service.getOrderList(cri);
		mnv.addAllObjects(orderList);
		mnv.setViewName(url);
		return mnv;
	}
	@ResponseBody
	@RequestMapping(value = "/order/search.do", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> orderManageSearch(@RequestBody Map<String, String> data,  HttpSession session) throws SQLException {
		
		/** 파라미터 조회 */
		
		
		/** 파라미터 검증 */
		
		/** 결과 타입 객체생성 */
		ResponseEntity<Map<String, Object>> entity = null;
		
		/** 서비스 호출 (서비스 전송 파라미터 구성 -> 서비스 호출) */
		SearchCriteria cri = new SearchCriteria();
		cri.setKeywordMap(data);
		cri.setPage(data.get("page"));
		FranVO fran= (FranVO) session.getAttribute("loginFran");
		cri.getKeywordMap().put("fran_code", fran.getFran_code());
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			dataMap= service.getOrderList(cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		/** Client 전송 데이터 및 View Page 구성 */
		return entity;
	}
	@ResponseBody
	@RequestMapping(value = "/order/detail.do", method = RequestMethod.POST)
	public ResponseEntity<List<FranOrderDe>> orderManageDetail(@RequestBody String orderCode) throws SQLException {
		System.out.println(orderCode);
		orderCode = orderCode.substring(0,orderCode.length()-1);
		System.out.println(orderCode);
		ResponseEntity<List<FranOrderDe>> entity = null;
		try {
			
			List<FranOrderDe> orderDetail = service.getOrderDetail(orderCode);
			
			entity = new ResponseEntity<List<FranOrderDe>>(orderDetail, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<FranOrderDe>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	@RequestMapping("/order/delete.do")
	public String deleteOrder(@RequestParam("orderCode")String code, RedirectAttributes rttr) throws SQLException {
		String url = "redirect:/fr/order/manage";
		
		service.delete(code);
		
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value = "/order/update.do", method = RequestMethod.POST)
	public String updateOrder(@RequestBody Map<String, String> data) throws SQLException {

		int cnt = service.update(data);
		String scs = null;
		if (cnt != 0) {
			scs = "test";
		}

		return scs;
	}
}
