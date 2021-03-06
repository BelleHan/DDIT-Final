package kr.or.fms.fran.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.dto.MenuVO;
import kr.or.fms.fran.dto.FranContractInfoVO;
import kr.or.fms.fran.dto.FranDealVO;
import kr.or.fms.fran.dto.FranGoodsDeVO;
import kr.or.fms.fran.dto.FranOrderVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.fran.service.FranHomeService;
import kr.or.fms.fran.service.FranService;
import kr.or.fms.hq.dto.HqEmpVO;
import kr.or.fms.service.MenuService;

@Controller
@RequestMapping("/fr")
public class FrController {
	
	@Autowired
	MenuService menuService;
	
	@Autowired
	FranService franService;
	
	@Autowired
	FranHomeService franHomeService;
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String home(Model model) {
		String url = "fr/index_fr";
		try {
			List<MenuVO> menuList = menuService.getFranMenuList();
			model.addAttribute("menuList", menuList);
		} catch (SQLException e) {
			e.printStackTrace();
			url = null;
		}
		
		return url;
	}
	
	/*
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model) {
		String url = "fr/frhome";
		return url;
	}*/
	
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main(Model model, HttpSession session) throws SQLException {
		String url = "fr/frhome";

		FranVO fran = (FranVO)session.getAttribute("loginFran");
		String fran_code = fran.getFran_code();
		
		// ???????????? ??????
		int	franOrderCount = franHomeService.getFranOrderCount(fran_code);
		// ???????????? ??????
		int orderCompletedCount = franHomeService.getOrderCompletedCount(fran_code);
		// ???????????? ??????
		int returnApplyCount = franHomeService.getReturnApplyCount(fran_code);
		// ???????????? ??????
		int returnCompleteCount = franHomeService.getReturnCompleteCount(fran_code);
		// ???????????? ???????????? ??????
		int stockRequestCount = franHomeService.getStockRequestCount(fran_code);
		// ????????? ???????????? ????????????
		int stockAcceptCount = franHomeService.getStockAcceptCount(fran_code);
		
		model.addAttribute("franOrderCount", franOrderCount);
		model.addAttribute("orderCompletedCount", orderCompletedCount);
		model.addAttribute("returnApplyCount", returnApplyCount);
		model.addAttribute("returnCompleteCount", returnCompleteCount);
		model.addAttribute("stockRequestCount", stockRequestCount);
		model.addAttribute("stockAcceptCount", stockAcceptCount);
		
		return url;
	}
	
	@RequestMapping(value="/common/loginFormFran.do",method=RequestMethod.GET)
	public String loginForm(@RequestParam(defaultValue="")String error,HttpServletResponse response) {
		
		String url = "common/loginFormFran";//response??? ??????????????????
		if(error.equals("1")) {
			response.setStatus(302);
		}
		return url;
	}

	@RequestMapping(value = "/common/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		String url = "redirect:/fr";
		session.invalidate();

		return url;
	}

	/* login processing by spring-security
	 * @RequestMapping(value = "/common/login")
	public String login(String id, String pwd, HttpServletRequest request, HttpSession session, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/index.do";

		try {
			memberService.login(id, pwd);
			// ????????? ?????????
			session.setAttribute("loginUser", memberService.getMember(id));
			session.setMaxInactiveInterval(20 * 60); // ??????????????????(???) ????????? 20???
		} catch (NotFoundIDException | InvalidPasswordException e) {
			rttr.addFlashAttribute("message", e.getMessage());
			url = "redirect:/common/loginForm";
		} catch (SQLException e) {
			ExceptionLoggerHelper.write(request, e, memberService);
			e.printStackTrace();
			throw e; // sql??? ????????? ????????? ????????? throw ?????????
		}

		return url;
	}*/
	
	@RequestMapping("/common/loginTimeOut")
	public String loginTimeOut(Model model)throws Exception{
		
		String url ="security/sessionOutFr";
		
		model.addAttribute("message","????????? ?????????????????????");
		return url;
	}
	
	@RequestMapping("/common/loginExpired")
	public String loginExpired(Model model)throws Exception{
		String url ="security/sessionOutFr";

		model.addAttribute("message", "?????? ???????????? ?????????????????????. \\n"+"?????? ??????????????? ?????? ???????????? ???????????? ???????????????.");
		
		return url;
		
	}
	
	@RequestMapping("/getMcode")
	@ResponseBody
	public ResponseEntity<MenuVO> getMcode(String mName)throws Exception{
		
		ResponseEntity<MenuVO> entity = null;
		try {
				MenuVO menu = menuService.getMenuByMname(mName);
				
				entity = new ResponseEntity<MenuVO>(menu, HttpStatus.OK) ;
		}catch(SQLException e) {
				entity = new ResponseEntity<MenuVO>(HttpStatus.INTERNAL_SERVER_ERROR) ;
		}
	
		
		return entity;
	}
 
//	@RequestMapping(value = "/main", method = RequestMethod.GET)
//	public String main() throws Exception {
//		return "common/main";
//	}
	
	@RequestMapping("/info/page")
	public String franInfo(Model model, HttpServletRequest request)throws SQLException{
		String url = "fr/info/franPage";
		//????????? ????????????
		HttpSession session = request.getSession();
		
		//?????? ?????? ????????? ?????? ??????????????? ????????? ????????? vo?????? ????????? ?????????
		FranVO franCont =(FranVO) session.getAttribute("loginFran");
		
		System.out.println(franCont.getFran_code());
		FranContractInfoVO franContInfo = franService.getFranContInfo(franCont.getFran_code());
		
		HqEmpVO franEmp = franService.getFranEmp(franCont.getFran_code());
		
		model.addAttribute("franContInfo",franContInfo);
		model.addAttribute("franEmp", franEmp);
		return url;
	}
	
	//???????????? ?????? ?????? ??????Form
	@RequestMapping("/toFran/accept")
	public ModelAndView acceptForm(ModelAndView mnv, HttpSession session)throws SQLException{
		String url = "fr/toFran/acceptForm";

		FranGoodsDeVO franGoodsDe = new FranGoodsDeVO();
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		String fran_code = fran.getFran_code();
		
		//???????????? list??????
		List<FranDealVO> franDealList = franHomeService.franDealList(fran_code);
		//???????????? ????????? ?????? ?????? ??????
		List<FranGoodsDeVO> goodsList = franHomeService.franDealGoods(fran_code);
		
//		List<List<FranGoodsDeVO>> franGoodsDeList =new ArrayList<>();
//		List<FranGoodsDeVO> lists = new ArrayList<>(); 
		
//		Set<String> goodsCodeSet = new HashSet<String>();
		
//		for(int i = 0; i<franDealList.size(); i++) {
//			
//			String hq_goods_code = franDealList.get(i).getHq_goods_code();
//			
//			goodsCodeSet.add(hq_goods_code);		
//					
//		}
			
			//franGoodsDe.setFran_code(fran_code);
			//franGoodsDe.setHq_goods_code(hq_goods_code);
			
			//System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>"+hq_goods_code);
			//???????????? ????????? ?????? ??? ???????????? ????????????
			//?????????
//			lists.add(franGoodsDe);
		
		//String[] goodsCodeList = (String[])goodsCodeSet.toArray();
		
//		List<String> goodsCodeList = new ArrayList<String>(goodsCodeSet);
		
//		lists = franHomeService.franDealGoods(franGoodsDe);
//		franGoodsDeList.add(lists);
//		System.out.println("???????????????????????????"+lists.size());
		
//		mnv.addObject("franGoodsDeList", lists);
		
		mnv.addObject("franDealList", franDealList);
		mnv.addObject("goodsList", goodsList);
		mnv.setViewName(url);
	
		return mnv;
	}
	
	//???????????? ??????
	@RequestMapping("/toFran/dealSuccess")
	public String dealSuccess(String fran_deal_code, HttpSession session) throws SQLException{
		String url = "fr/toFran/dealSuccess";
		
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		String fran_code = fran.getFran_code();
		
		FranDealVO franDealVO = new FranDealVO();
		franDealVO.setFran_code(fran_code);
		franDealVO.setFran_deal_code(fran_deal_code);
		
		System.out.println("??????????????????"+fran_deal_code);
		franHomeService.acceptDeal(franDealVO);
		franHomeService.cancelDeal(franDealVO);
		
		return url;
		
	}
	//???????????? ??????
	@RequestMapping(value="/toFran/dealDeny" , method=RequestMethod.POST)
	public String dealDeny( String fran_deal_code, HttpSession session) throws SQLException{
		String url = "fr/toFran/dealDeny";
		
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		String fran_code = fran.getFran_code();
	
		FranDealVO franDealVO = new FranDealVO();
		franDealVO.setFran_code(fran_code);
		franDealVO.setFran_deal_code(fran_deal_code);
		
		franHomeService.denyDeal(franDealVO);
		
		return url;
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}