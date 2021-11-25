package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.command.buyRequestCommand;
import kr.or.fms.hq.dto.BuyGoodsDeVO;
import kr.or.fms.hq.dto.BuyGoodsVO;
import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.hq.service.BuyGoodsService;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.service.CodeService;
import kr.or.fms.sup.dto.SupGoodsVO;

/**
 * Handles requests for the application home page.
 */
@Controller 
@RequestMapping("/hq")
public class HqGoodsController {
    
    @Autowired
    BuyGoodsService buyGoodsService;

    @Autowired
    CodeService codeService;
	
    private static final Logger logger = LoggerFactory.getLogger(HqController.class);
	

    @RequestMapping("/goods/buy")
    public ModelAndView goodsList(SearchCriteria cri,@RequestParam Map<String,Object> map,String laca, String smca, String keyword, ModelAndView mnv) throws SQLException{
       String url = "hq/goods/buyGoodsList";
       
       cri.setPerPageNum(12);
       
       System.out.println("laca : " + laca);
       System.out.println("smca : " + smca);
       
       cri.getKeywordMap().put("laca", laca);
       cri.getKeywordMap().put("smca", smca);
       cri.getKeywordMap().put("keyword", keyword);
       
       Map<String, Object> dataMap = buyGoodsService.getSupGoodsSearchList(cri);
       
       mnv.addObject("map", map);
       mnv.addObject("dataMap", dataMap);
       mnv.setViewName(url);
       
       return mnv;
    }
    
    @ResponseBody
    @RequestMapping(value="/goods/searchSmca", method=RequestMethod.POST)
    public List<String> searchSmca(@RequestBody String laca)throws Exception{
    	
    	List<String> searchSmcaList = buyGoodsService.searchSmca(laca);
    	
    	return searchSmcaList;
    }

//    @ResponseBody
//    @RequestMapping(value="/goods/searchGoodsList", method=RequestMethod.POST)
//    public ResponseEntity<Map<String, Object>> searchList(@RequestBody Map<String, String> data) throws SQLException{
//    	ResponseEntity<Map<String, Object>> entity = null;
//    	SearchCriteria criMap = new SearchCriteria();
//    	
//    	System.out.println("1234");
//    	
//    	criMap.setKeywordMap(data);
//    	criMap.setPage(data.get("page"));
//    	criMap.setPerPageNum(12);
//    	Map<String, Object> dataMap = new HashMap<String, Object>();
//    	try {
//			dataMap = buyGoodsService.getSupGoodsSearcgList(criMap);
//			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
//		} catch (SQLException e) {
//			e.printStackTrace();
//			entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.INTERNAL_SERVER_ERROR);
//		}
//    	return entity;
//    }
//    
    @RequestMapping("/goods/detail")
    public String detail(@ModelAttribute("sup_goods_code") String sup_goods_code, Model model)throws SQLException{
    	String url = "hq/goods/detail";
    	
    	System.out.println(sup_goods_code);
    	
    	SupGoodsVO supGoods = buyGoodsService.getBuyGoodsByCode(sup_goods_code);
//    	String supContSt = buyGoodsService.getSupContSt(sup_goods_code);
//    	String codeName = codeService.getCodeName(supContSt);
    	
    	model.addAttribute("supGoods", supGoods);
//    	model.addAttribute("codeName", codeName);
    	return url;
    }
    
    //상품비교(선택된 상품들의 상세비교)
	@RequestMapping("/goods/compareGoods")
	public String compareGoods(String goodsDe, Model model)throws SQLException{
		String url = "hq/goods/compareGoods";
		
		//파라미터 배열에 넣어주기
		String[] goods = goodsDe.split(",");

		List<List<SupGoodsVO>> sampleList = new ArrayList<>();
		SupGoodsVO supGoods = new SupGoodsVO();
		List<SupGoodsVO> list = new ArrayList<>();

		//테이블은 물품의 개수/2 의 올림으로 생성되어야 함
		int table = (int) Math.ceil(goods.length / (2.0));

		//goods의 개수반큼 list에 담기
		for(int i=0; i<goods.length;i++) {
			supGoods = buyGoodsService.getBuyGoodsByCode(goods[i]);
			list.add(supGoods);
		}
		System.out.println("listSize!!!!!!!!"+list.size());
		//테이블 생긴 수 만큼 list출력
		for(int j = 0; j<table; j++) { //0,1,2,3,4 => 3
			
			//endIndex
			int endIndex = j*2+2; // (2,4,6)

			//endIndex사이즈가 홀수인 경우 마지막 endIndex list.size()로 저장
			if(list.size()<j*2+2) {
				endIndex = list.size();
			}
			
			List<SupGoodsVO> goodsList = list.subList(j*2, endIndex);
			
			sampleList.add(goodsList);
		}
		
		
		model.addAttribute("sampleList",sampleList);
		
		return url;
	}
	

	//물품구매요청
    @RequestMapping("/goods/request")
    public String buyReq(buyRequestCommand buyReq, HttpSession session)throws SQLException{
    	String url = "hq/goods/buyReqSuccess";
    	
    	HqEmpVO hq = (HqEmpVO)session.getAttribute("loginEmp");
    	
    	BuyGoodsVO buyGoods = buyReq.toBuyGoodsVO();
    	buyGoods.setHq_code(hq.getHq_code());
    	
    	System.out.println(buyGoods.getSup_goods_code());
    	System.out.println(buyGoods.getPur_arrive_loc());
    	System.out.println(buyGoods.getPur_arrive_date());
    	//1.insert buy_goods
    	buyGoodsService.registBuyGoods(buyGoods);
    	

    	return url;
    }

	//물품구매요청  form
	@RequestMapping("/goods/buyReqForm")
	public String buyReqForm(String sup_goods_code, Model model)throws SQLException {
		String url = "hq/goods/buyReqForm";
		
		SupGoodsVO supGoods = buyGoodsService.getBuyGoodsByCode(sup_goods_code);
		List<LogisVO> logisList = buyGoodsService.searchLogis();
    	
    	model.addAttribute("supGoods", supGoods);
    	model.addAttribute("logisList", logisList);
    	
    	return url;
	}
	


}