package kr.or.fms.fran.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranGoodsDeVO;
import kr.or.fms.fran.dto.FranOrderDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.fran.service.FranOrderService;
import kr.or.fms.hq.dto.HqGoodsVO;
import kr.or.fms.hq.service.BuyGoodsService;
import kr.or.fms.sup.dto.SupGoodsVO;

@Controller
@RequestMapping("/fr")
public class FrOrderController {

	@Autowired
	FranOrderService franOrderService;
	@Autowired
	BuyGoodsService buyGoodsService;
	
    @RequestMapping("/order/list")
    public ModelAndView hqGoodsList(SearchCriteria cri, HttpSession session,String laca, String smca,@RequestParam Map<String,Object> map, ModelAndView mnv) throws SQLException{
        String url="fr/order/list10";
        
        //가맹점 지역코드 세션값으로 받아오기
        FranVO fran = (FranVO)session.getAttribute("loginFran");
        String fran_local_num = fran.getFran_local_num();
        String fran_code = fran.getFran_code();
        
        //대분류, 소분류 
        cri.getKeywordMap().put("laca", laca);
        cri.getKeywordMap().put("smca", smca);

        //지역번호를 통해 물품마다 총알배송 가능한지 확인
        Map<String, Object> dataMap = franOrderService.getOrderGoodsSearchList(cri,fran_local_num);
        List<FranGoodsDeVO> recList = franOrderService.getRecList(fran);

        mnv.addObject("map", map);
        mnv.addObject("dataMap", dataMap);
        mnv.addObject("recList", recList);
        mnv.setViewName(url);
        
        return mnv;
    }
    
    @ResponseBody
    @RequestMapping(value="/goods/searchList", method=RequestMethod.POST)
    public List<HqGoodsVO> searchList(HttpSession session, @RequestParam String laca,@RequestParam String smca,@RequestParam String keyword )throws Exception{
    		    	
    	HqGoodsVO hqGoods = new HqGoodsVO();
    	
    	System.out.println(hqGoods);
    	SupGoodsVO supGoodsVo = new SupGoodsVO();
    	supGoodsVo.setSup_goods_laca(laca);
    	supGoodsVo.setSup_goods_smca(smca);
    	supGoodsVo.setSup_goods_name(keyword);
    	hqGoods.setSupGoodsVO(supGoodsVo);
    	
    	//가맹점 지역코드 세션값으로 받아오기
        FranVO fran = (FranVO)session.getAttribute("loginFran");
        hqGoods.setFranVO(fran);
    	List<HqGoodsVO> orderGoodsList = franOrderService.getSearchOrderList(hqGoods);
    	
    	return orderGoodsList;   	
    }
    
    @ResponseBody
    @RequestMapping(value="/goods/searchSmca2", method=RequestMethod.POST)
    public List<String> searchSmca(@RequestBody String laca)throws Exception{
    	List<String> searchSmcaList =franOrderService.searchSmca(laca);
    	return searchSmcaList;
    }
    
    //발주
    @RequestMapping(value="/order/insertOrder",method=RequestMethod.POST)
    public String insertOrder(String[] hq_goods_code, String[] fran_order_quan, String[] fran_order_price, String[] order_detail_st, HttpSession session)throws SQLException{
    	String url = "fr/order/orderSuccess";
    	
    	//세션에서 fran_code값 가져오기
    	FranVO fran = (FranVO)session.getAttribute("loginFran");
    	String fran_code = fran.getFran_code();
    	String fran_order_code = null;
    	//fran_order에 insert되는 fran_order_price(발주총금액)
    	int priceSum = 0;
    	
    	FranOrderVO franOrderVO = new FranOrderVO();
    	FranOrderDeVO franOrderDeVO = new FranOrderDeVO();
  
    	for(int i=0; i<hq_goods_code.length; i++) {
    		System.out.println(hq_goods_code[i]);
    		System.out.println(fran_order_quan[i]);
    		System.out.println(order_detail_st[i]);
    		System.out.println(fran_order_price[i]);
    	}
    	
    	
    	//총금액
    	for(int i = 0; i<hq_goods_code.length;i++) {
    		priceSum += Integer.parseInt(fran_order_price[i]);
    	}
    	
    	System.out.println(">>>>>>>>>>>>>"+priceSum);
    	
    		franOrderVO.setFran_order_price(priceSum);
    		franOrderVO.setFran_code(fran_code);
    		
    		System.out.println(franOrderVO.getFran_order_price());
    		System.out.println(franOrderVO.getFran_code());
    		
    		//1.franOrder table insert
    		franOrderService.registFranOrder(franOrderVO);
    		
    		//2.franOrder의 fran_order_code값 가져오기
    		fran_order_code = franOrderService.getFranOrderCode();
    		
    		for(int i = 0; i<hq_goods_code.length; i++) {
    		System.out.println("fran_order_code"+fran_order_code);
    		
    		franOrderDeVO.setFran_order_code(fran_order_code);
    		franOrderDeVO.setHq_goods_code(hq_goods_code[i]);
    		franOrderDeVO.setFran_order_quan(Integer.parseInt(fran_order_quan[i]));
    		franOrderDeVO.setFran_order_price(Integer.parseInt(fran_order_price[i]));
    		franOrderDeVO.setOrder_detail_st(order_detail_st[i]);
    		
    		//3.franOrderDetail table insert
    		franOrderService.registFranOrderDe(franOrderDeVO);
    		
    		System.out.println("success");
    	}
    	
    	return url;
    }
    
    //    @RequestMapping(value="/order/move", method = RequestMethod.POST)
//    public ResponseEntity<List<HqGoodsVO>> orderMove(@ResponseBody ) 
    
//    public String GoodsMove(List<HqGoodsVO> Model model) throws SQLException{
//    	String url="fr/order/move";
//    	
//    	
//    	List<HqGoodsVO> orderGoodsList = franOrderService.getOrderGoodsList();
//    	model.addAttribute("orderGoodsList", orderGoodsList);
//    	
//    	return url;
//    }

}
