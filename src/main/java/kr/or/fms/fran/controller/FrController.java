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
		
		// 발주신청 건수
		int	franOrderCount = franHomeService.getFranOrderCount(fran_code);
		// 발주완료 건수
		int orderCompletedCount = franHomeService.getOrderCompletedCount(fran_code);
		// 반품신청 건수
		int returnApplyCount = franHomeService.getReturnApplyCount(fran_code);
		// 반품완료 건수
		int returnCompleteCount = franHomeService.getReturnCompleteCount(fran_code);
		// 가맹점간 재고요청 건수
		int stockRequestCount = franHomeService.getStockRequestCount(fran_code);
		// 가맹점 재고요청 승인건수
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
		
		String url = "common/loginFormFran";//response가 화면결정인자
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
			// 로그인 성공시
			session.setAttribute("loginUser", memberService.getMember(id));
			session.setMaxInactiveInterval(20 * 60); // 세션유지단위(초) 현재는 20분
		} catch (NotFoundIDException | InvalidPasswordException e) {
			rttr.addFlashAttribute("message", e.getMessage());
			url = "redirect:/common/loginForm";
		} catch (SQLException e) {
			ExceptionLoggerHelper.write(request, e, memberService);
			e.printStackTrace();
			throw e; // sql이 틀렸기 때문에 반드시 throw 해야함
		}

		return url;
	}*/
	
	@RequestMapping("/common/loginTimeOut")
	public String loginTimeOut(Model model)throws Exception{
		
		String url ="security/sessionOutFr";
		
		model.addAttribute("message","세션이 만료되었습니다");
		return url;
	}
	
	@RequestMapping("/common/loginExpired")
	public String loginExpired(Model model)throws Exception{
		String url ="security/sessionOutFr";

		model.addAttribute("message", "중복 로그인이 확인되었습니다. \\n"+"다시 로그인하면 다른 장치에서 로그인은 취소됩니다.");
		
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
		//세션값 가져오기
		HttpSession session = request.getSession();
		
		//세션 안에 저장된 값이 여러개라면 담아줄 데이터 vo객체 생성후 캐스팅
		FranVO franCont =(FranVO) session.getAttribute("loginFran");
		
		System.out.println(franCont.getFran_code());
		FranContractInfoVO franContInfo = franService.getFranContInfo(franCont.getFran_code());
		
		HqEmpVO franEmp = franService.getFranEmp(franCont.getFran_code());
		
		model.addAttribute("franContInfo",franContInfo);
		model.addAttribute("franEmp", franEmp);
		return url;
	}
	
	//가맹점간 거래 요청 확인Form
	@RequestMapping("/toFran/accept")
	public ModelAndView acceptForm(ModelAndView mnv, HttpSession session)throws SQLException{
		String url = "fr/toFran/acceptForm";

		FranGoodsDeVO franGoodsDe = new FranGoodsDeVO();
		FranVO fran = (FranVO)session.getAttribute("loginFran");
		String fran_code = fran.getFran_code();
		
		//거래요청 list출력
		List<FranDealVO> franDealList = franHomeService.franDealList(fran_code);
		//거래요청 물품에 대한 재고 정보
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
			//거래요청 물품에 대한 내 가맹점의 재고조회
			//안녕핫
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
	
	//거래요청 승낙
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
	//거래요청 거절
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