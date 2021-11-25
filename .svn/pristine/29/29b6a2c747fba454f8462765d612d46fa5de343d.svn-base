package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.fms.command.FranModifyCommand;
import kr.or.fms.command.LogisModifyCommand;
import kr.or.fms.command.PageMaker;
import kr.or.fms.command.SearchCriteria;
import kr.or.fms.command.SupModifyCommand;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.hq.service.ComListService;
import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.sup.dto.SupVO;

@Controller
@RequestMapping("/hq")
public class ComController {
	@Autowired
	ComListService comListService;
	
	@RequestMapping(value="/com/franmodify.do", method=RequestMethod.POST)
	public String franModify(FranModifyCommand modifyReq, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		String url = "redirect:/hq/com/frandetail.do";
		
		FranVO fran = modifyReq.toFranVO();
		
		comListService.modifyFran(fran);
		
		rttr.addAttribute("fcode", fran.getFran_code());
		rttr.addAttribute("from", "modify");
		
		return url;
	}
	
	@RequestMapping("/com/logismodify.do")
	public String logisModify(LogisModifyCommand modifyReq, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		String url = "redirect:/hq/com/logisdetail.do";
		
		LogisVO logis = modifyReq.toLogisVO();
		comListService.modifyLogis(logis);
		
		rttr.addAttribute("lcode", logis.getLogis_code());
		
		return url;
	}

	@RequestMapping("/com/franmodifyForm.do")
	public ModelAndView FranModifyForm(String fcode, ModelAndView mnv) throws Exception {
		String url = "hq/Fran_modify";
		
		FranVO fran = comListService.getFranForModify(fcode);
		
		mnv.addObject("fran", fran);
		mnv.setViewName(url);
		
		return mnv;
	}
	@RequestMapping("/com/supmodifyForm.do")
	public ModelAndView SupModifyForm(String scode, ModelAndView mnv) throws Exception {
		String url = "hq/Sup_modify";
		
		 SupVO sup = comListService.getSupForModify(scode);
		
		mnv.addObject("sup", sup);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value="/com/supmodify.do", method=RequestMethod.POST)
	public String supModify(SupModifyCommand  modifyReq, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		String url = "redirect:/hq/com/supdetail.do";
		
		SupVO sup = modifyReq.toSupVO();
	
		comListService.modifySup(sup);
		
		rttr.addFlashAttribute("from", "modify");
		rttr.addAttribute("scode", sup.getSup_code());
		return url;
	}
	
	@RequestMapping("/com/frandetail.do")
	public ModelAndView Frandetail(String fcode, @RequestParam(defaultValue="")String from, HttpServletRequest request, ModelAndView mnv) throws SQLException {
		
		String url = "hq/Fran_detail";
		
		FranVO fran = null;
		
		fran = comListService.getFran(fcode);
		
		mnv.addObject("fran", fran);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	@RequestMapping("/com/logisdetail.do")
	public ModelAndView Logisdetail(String lcode, HttpServletRequest request, ModelAndView mnv) throws SQLException {
		
		String url = "hq/logis_detail";
		
		LogisVO logis = null;
		
		logis = comListService.getLogis(lcode);
		
		mnv.addObject("logis", logis);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	@RequestMapping("/com/supdetail.do")
	public ModelAndView supdetail(String scode, @RequestParam(defaultValue="")String from, HttpServletRequest request, ModelAndView mnv) throws SQLException {
		
		String url = "hq/Sup_detail";
		
		SupVO sup = null;
	
		
		sup = comListService.GetSup(scode);
		
		mnv.addObject("sup", sup);
		mnv.setViewName(url);
		
		return mnv;
		
		
	}
	
	@RequestMapping(value = "/com/list", method = RequestMethod.GET)
	public ModelAndView comList(SearchCriteria cri, ModelAndView mnv, String from, HttpServletRequest request) throws SQLException {
		String url = "hq/FLS_list";
		if(from!=null && from.equals("fran")) {
			request.setAttribute("from", "fran");
		}
		if(from!=null && from.equals("logis")) {
			request.setAttribute("from", "logis");
		}
		if(from!=null && from.equals("sup")) {
			request.setAttribute("from", "sup");
		}
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		Map<String, Object> franMap = comListService.getFranList(cri);
		List<FranVO> franList= (List<FranVO>) franMap.get("franList");
		PageMaker pageMaker1 = (PageMaker) franMap.get("pageMaker1");
		
		Map<String, Object> logisMap = comListService.getLogisList(cri);
		List<LogisVO> logisList= (List<LogisVO>) logisMap.get("logisList");
		PageMaker pageMaker2 = (PageMaker) logisMap.get("pageMaker2");
		
		Map<String, Object> supMap = comListService.getSupList(cri);
		List<SupVO> supList= (List<SupVO>) supMap.get("supList");
		PageMaker pageMaker3 = (PageMaker) logisMap.get("pageMaker3");
		
		dataMap.put("franList", franList);
		dataMap.put("pageMaker1", pageMaker1);
		dataMap.put("logisList", logisList);
		dataMap.put("pageMaker2", pageMaker2);
		dataMap.put("supList", supList);
		dataMap.put("pageMaker3", pageMaker3);
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
}
