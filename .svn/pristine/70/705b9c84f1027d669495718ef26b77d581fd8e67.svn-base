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
import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.fran.service.FranService;

@Controller
@RequestMapping("/fr")
public class FranToFranController {

	@Autowired
	FranService franService;
	
	@RequestMapping(value="/tofran/list")
	public ModelAndView toFranList(SearchCriteria cri,HttpSession session,String laca, String smca, String keyword, ModelAndView mnv
			,@RequestParam Map<String,Object> map)throws Exception {
		String url = "fr/toFran/toFranList1";
		
		cri.setPerPageNum(10);
		
		//로그인한 fran의 세션값 가져오기
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		float fran_latitude = fran.getFran_latitude();
		float fran_longitude = fran.getFran_longitude();
		
		if(smca != null && smca.equals("전체")) {
			smca = "";
		}
		
		cri.getKeywordMap().put("laca", laca);
		cri.getKeywordMap().put("smca", smca);
		cri.getKeywordMap().put("keyword", keyword);
		
		//fran의 위도, 경도
		fran.setFran_latitude(fran_latitude);
		fran.setFran_longitude(fran_longitude);
		
		//반경 5km이내 가맹점
		List<FranVO> nearFranList = franService.getNearFranList(fran);
		Map<String, Object> dataMap = franService.getSearchGoods(cri);
		
		//재고요청한 list가져오기
		List<FranDealVO> franDealList = franService.getFranDealList(fran.getFran_code());
		
		mnv.addObject("map", map);
		mnv.addObject("dataMap", dataMap);
        
		mnv.addObject("nearFranList", nearFranList);
        mnv.addObject("franLatitude",fran_latitude);
        mnv.addObject("franLongitude", fran_longitude);
        
        mnv.addObject("franDealList", franDealList);
        
        mnv.setViewName(url);
	       
       return mnv;
	}

	
	@ResponseBody
	@RequestMapping(value="/goods/searchSmca", method=RequestMethod.POST)
	public List<String> searchSmca(@RequestBody String laca)throws Exception{
		List<String> searchSmcaList = franService.searchSmca(laca);
		return searchSmcaList;
	}

	@RequestMapping(value="/tofran/request")
	public ModelAndView franToFran(HttpSession session, String hq_goods_code, String deal_quan , String[] appr_deal_fran, ModelAndView mnv) throws SQLException{
		String url = "fr/toFran/requestSuccess";
		
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		
		FranDealVO franDeal = new FranDealVO();
		franDeal.setFran_code(fran.getFran_code());
		franDeal.setDeal_quan(Integer.parseInt(deal_quan));
		franDeal.setHq_goods_code(hq_goods_code);
		
		String franDealCode = franService.franDealCode();
		franDeal.setFran_deal_code(franDealCode);
		
		//반경 5km이내의 가맹점에게 재고요청
		for(int i = 0; i<appr_deal_fran.length;i++) {
			
			//내가 아닌 가맹점에 재고요청
			if(!appr_deal_fran[i].equals(fran.getFran_code())) {
				franDeal.setAppr_deal_fran(appr_deal_fran[i]);
				franService.reegistFranDeal(franDeal);
			}
		}
		
		mnv.addObject("hq_goods_code", hq_goods_code);
		mnv.addObject("deal_quan", deal_quan);
		mnv.setViewName(url);
		return mnv;
	}
}
