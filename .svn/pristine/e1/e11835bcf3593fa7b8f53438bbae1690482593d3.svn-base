package kr.or.fms.hq.controller;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.hq.service.HqReturnService;
import kr.or.fms.service.MenuService;

@Controller
@RequestMapping("/hq")
public class HqReturnController {
	
	@Autowired
	MenuService menuService;
	
	@Autowired
	HqReturnService hqReturnService;
	
	@Resource(name="fileUploadPath")
	private String fileUploadPath;
	
	
	@RequestMapping("/return/list")
	public ModelAndView returnList(SearchCriteria cri, ModelAndView mnv)throws SQLException{
		String url="hq/return/list";		
		cri.setPerPageNum(19);
		Map<String,Object> dataMap = hqReturnService.getReturnList(cri);
		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	@RequestMapping("/return/detail.do")
	public ModelAndView detail(String return_code, String from, ModelAndView mnv) throws SQLException {
		
		String url = "hq/return/detail";
		System.out.println("return_code : " + return_code);
	
		ReturnVO returnVO = new ReturnVO();
		returnVO = hqReturnService.read(return_code);
		
		
		List<AttachVO> attachList = hqReturnService.getAttachByAttach_no(returnVO.getReturn_code());
		if (returnVO != null && attachList != null) {
			returnVO.setAttachList(attachList);
		}
		mnv.addObject("returnVO", returnVO);
		mnv.addObject("attachList", attachList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	@RequestMapping("/return/getFile.do")
	public String getFile(String attach_no, Model model) throws Exception {
		
		String url = "downloadFile";
		
		AttachVO attach = hqReturnService.selectAttachDownload(attach_no);
		
		model.addAttribute("savedPath", attach.getFile_location());
		model.addAttribute("fileName", attach.getFile_name());
		
		return url;
		
	}
	
	@RequestMapping(value = "updateReturnCheckSt.do", method = RequestMethod.GET)
	public String updateReturnSt(String rcode, String returnCheckSt) throws SQLException {
		
		String url = "hq/return/success";
		
		ReturnVO returnVO = new ReturnVO();
		
		System.out.println(rcode);
		System.out.println(returnCheckSt);
		
		
		returnVO.setReturn_code(rcode);
		returnVO.setReturn_check_st(returnCheckSt);
		
		
		hqReturnService.modify(returnVO);
		
		return url;
	}
	

}
