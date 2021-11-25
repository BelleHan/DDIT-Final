package kr.or.fms.sup.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.fms.command.InRegistCommand;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.command.SupGoodsModifyCommand;
import kr.or.fms.command.SupGoodsdRegistCommand;
import kr.or.fms.dto.MenuVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.hq.dto.BuyGoodsVO;
import kr.or.fms.hq.dto.InVO;
import kr.or.fms.service.MenuService;
import kr.or.fms.sup.dto.SupGoodsVO;
import kr.or.fms.sup.service.SupGoodsService;
import kr.or.fms.sup.service.SupSalesService;
import kr.or.fms.sup.service.SupService;
import kr.or.fms.util.MakeFileName;

@Controller
@RequestMapping("/sup")
public class SupSalesController {
	
	@Autowired
	private SupSalesService supSalesService;
	
	
	@RequestMapping("/sales/list")
	public ModelAndView returnList(SearchCriteria cri, ModelAndView mnv)throws SQLException{
		String url="sup/sales/list";		
		
		Map<String,Object> dataMap = supSalesService.getBuyList(cri);
		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}

	
	@RequestMapping(value = "updateBuySt.do", method = RequestMethod.POST)
	public String updateBuySt(InRegistCommand inReq, String[] goods_pur_code, String[] sup_goods_code, String[] logis_code, String[] in_date, int[] in_num, String[] in_loca) throws SQLException, ParseException {
		
//		String url = "redirect:/sup/sales/list.do";
		String url = "sup/sales/success";
		
		
 
        SimpleDateFormat recvSimpleFormat = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
 
        SimpleDateFormat tranSimpleFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

		
		
		for(int i=0; i<goods_pur_code.length; i++) {
			
			supSalesService.updateBuyst(goods_pur_code[i]);
			
			InVO inVO = inReq.toInVO();
			
			
			Date data = recvSimpleFormat.parse(in_date[i]);
			String strDate = tranSimpleFormat.format(data);
			
			inVO.setGoods_pur_code(goods_pur_code[i]);
			inVO.setSup_goods_code(sup_goods_code[i]);
			inVO.setLogis_code(logis_code[i]);
			inVO.setIn_date_schedule(strDate);
			inVO.setIn_num(in_num[i]);
			inVO.setIn_loca(in_loca[i]);
			
			supSalesService.registInList(inVO);
			
		}
		
		return url;
	}
	
	
	
}