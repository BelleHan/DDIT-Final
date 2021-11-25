package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.hq.service.BuyGoodsService;
import kr.or.fms.hq.service.GoodsBuyService;
import kr.or.fms.sup.dto.SupGoodsVO;

@Controller
@RequestMapping("/hq")
public class GoodsBuyController {
	
	@Autowired
	GoodsBuyService goodsBuyService;
	
	@Autowired
	BuyGoodsService buyGoodsService;
	
	@RequestMapping("/goods/manage")
	public ModelAndView goodsList(SearchCriteria cri, ModelAndView mnv, String keyword)throws SQLException{
		String url="hq/goods/goodsList";
		cri.setPerPageNum(20);
		cri.getKeywordMap().put("keyword", keyword);
		Map<String,Object> dataMap = goodsBuyService.getGoodsList(cri);
		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/goods/detail2")
    public String detail(@ModelAttribute("sup_goods_code") String sup_goods_code, Model model)throws SQLException{
    	String url = "hq/goods/detail2";
    	
    	System.out.println(sup_goods_code);
    	
    	SupGoodsVO supGoods = buyGoodsService.getBuyGoodsByCode(sup_goods_code);
//    	String supContSt = buyGoodsService.getSupContSt(sup_goods_code);
//    	String codeName = codeService.getCodeName(supContSt);
    	
    	model.addAttribute("supGoods", supGoods);
//    	model.addAttribute("codeName", codeName);
    	return url;
    }	
	
	
	

}
