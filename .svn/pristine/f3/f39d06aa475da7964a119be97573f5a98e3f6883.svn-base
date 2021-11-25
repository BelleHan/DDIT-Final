package kr.or.fms.hq.controller;


import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.OrderOutCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.hq.service.HqOrderService;
import kr.or.fms.hq.service.HqReturnService;
import kr.or.fms.service.MenuService;

@Controller
@RequestMapping("/hq")
public class HqOrderController {

	
	@Autowired
	HqOrderService hqOrderService;
	
	@RequestMapping("/order/list")
	public ModelAndView orderList(SearchCriteria cri, FranOrderVO franOrderVo,  ModelAndView mnv, String orderDate)throws SQLException, ParseException{
		String url="hq/order/list";	
		

		
		if(franOrderVo.getFran_appr_st()!=null) {
			cri.getKeywordMap().put("apprSt", String.valueOf(franOrderVo.getFran_appr_st()));
		}
		if(franOrderVo.getOrder_st_code()!=null) {
			cri.getKeywordMap().put("orderSt", franOrderVo.getOrder_st_code());
		}
		
		if(franOrderVo.getFran_code()!=null) {
			cri.getKeywordMap().put("franCode", franOrderVo.getFran_code());
		}
		if(orderDate!=null && !"".equals(orderDate)) {
			
			String[] date = orderDate.split(" - ");
			String startDate = date[0];
			String endDate = date[1];
			
			cri.getKeywordMap().put("startDate", startDate);
			cri.getKeywordMap().put("endDate", endDate);
			
		}	

		cri.setPerPageNum(13);
		
		Map<String, Object> dataMap = hqOrderService.getOrderList(cri);
		
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/order/detail")
	public ModelAndView orderDetail(ModelAndView mnv, String fran_order_code, String fran_appr_st, String fran_code) throws SQLException{
		String url="hq/order/detail";
		
		List<FranOrderDeVO> franOrderDeVO = hqOrderService.readOrder(fran_order_code);
		
		FranOrderVO franOrder = new FranOrderVO();
		franOrder.setFran_code(fran_code);
		franOrder.setFran_order_code(fran_order_code);
		
		List<FranOrderDeVO> QuickList = hqOrderService.getQuickList(franOrder);

		mnv.addObject("fran_appr_st", fran_appr_st);
		mnv.addObject("fran_code", fran_code);
		mnv.addObject("franOrderDeVO", franOrderDeVO);
		mnv.addObject("QuickList", QuickList);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	
//	@RequestMapping(value = "updateQuickList.do", method = RequestMethod.GET)
//	public String updateQuickList(String fran_order_code, String order_detail_num) throws SQLException{
//		
//		String url = "hq/order/quickSuccess";
//		
//		FranOrderDeVO franOrderDeVO = new FranOrderDeVO();
//		
//		franOrderDeVO.setFran_order_code(fran_order_code);
//		franOrderDeVO.setOrder_detail_num(order_detail_num);
//		
//		hqOrderService.modifyQuickList(franOrderDeVO);
//		
//		return url;
//		
//	}
	// "fran_order_code=" + fran_order_code + "&order_detail_num=" + order_detail_num
	@RequestMapping(value="/updateQuickList", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> updateQuickList(String[] fran_order_code, String[]order_detail_num) throws Exception{
		ResponseEntity<String> entity = null;
		
		try {
			for(int i=0; i<fran_order_code.length; i++) {
				
				System.out.println(fran_order_code[i] + "---" + order_detail_num[i]);
				
				FranOrderDeVO franOrderDeVO = new FranOrderDeVO();
				
				franOrderDeVO.setFran_order_code(fran_order_code[i]);
				franOrderDeVO.setOrder_detail_num(order_detail_num[i]);
				
				hqOrderService.modifyQuickList(franOrderDeVO);
			}
			entity = new ResponseEntity<String>(HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

		
//		FranOrderDeVO franOrderDeVO = new FranOrderDeVO();
//		
//		franOrderDeVO.setFran_order_code(franDe.getFran_order_code());
//		franOrderDeVO.setOrder_detail_num(franDe.getOrder_detail_num());
//		
//		try {
//			hqOrderService.modifyQuickList(franOrderDeVO);
//			entity = new ResponseEntity<String>(HttpStatus.OK);
//		} catch (SQLException e) {
//			e.printStackTrace();
//			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
//		}
		
		return entity;
		
	}
	
	@RequestMapping(value = "updateApprSt.do", method = RequestMethod.POST)
	public String updateApprSt(String fran_order_code, String fran_appr_st, String fran_code, 
								String[] hq_goods_code, String[] fran_order_quan, String[] order_detail_st) throws SQLException{
		
		String url = "hq/order/success";
		
		FranOrderVO franOrderVO = new FranOrderVO();
		
		franOrderVO.setFran_order_code(fran_order_code);
		franOrderVO.setFran_appr_st(fran_appr_st);
		
		hqOrderService.modifyApprSt(franOrderVO);
		
		for(int i=0; i<hq_goods_code.length; i++) {
			
			OrderOutCommand command = new OrderOutCommand();
			
			command.setHq_goods_code(hq_goods_code[i]);
			command.setFran_code(fran_code);
			command.setFran_order_quan(Integer.parseInt(fran_order_quan[i]));
			command.setOrder_detail_st(order_detail_st[i]);
			
			hqOrderService.registOutList(command);
			
		}
		
		
		return url;
		
	}

}
