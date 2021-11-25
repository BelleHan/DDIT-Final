package kr.or.fms.fran.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.fms.command.FranApplyReqRegistCommand;
import kr.or.fms.command.FranReturnReqRegistCommand;
import kr.or.fms.dto.AttachVO;
import kr.or.fms.dto.ReturnDetailVO;
import kr.or.fms.dto.ReturnVO;
import kr.or.fms.fran.dto.FranAppliDocVO;
import kr.or.fms.fran.dto.FranVO;
import kr.or.fms.fran.service.FranApplyService;
import kr.or.fms.util.GetAttachesAsMultipartFiles;

@Controller

public class FrApplyController {
	
	
	@Autowired
	FranApplyService franApplyService;
	
	@Resource(name="fileUploadPath")
	private String fileUploadPath;
	
	private static final Logger logger = LoggerFactory.getLogger(FrApplyController.class);
		
	
	@RequestMapping("/hq/common/apply")
  	public String registForm() {
  		String url = "hq/franApplyForm";
  		System.out.println("apply url = " + url);
  		return url;
  	}

	
	@RequestMapping(value="/hq/common/regist" , method=RequestMethod.POST)
	public String regist(FranApplyReqRegistCommand registReq, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		
		String url = "hq/franApplyFormsuccess";
		System.out.println(url);
		
		FranVO franVO = registReq.tofranVO();
		String franCode = franApplyService.getFranApplySeqCurr();
		franVO.setFran_code(franCode);
		
		franApplyService.registFran(franVO);
		
		String newFranCode = franApplyService.getFranApplySeqCurr();
	    FranAppliDocVO franAppliDocVO = registReq.toFranAppliDocVO();
	    franAppliDocVO.setFran_code(newFranCode);
	    
		List<AttachVO> attachList = GetAttachesAsMultipartFiles.save(registReq.getUploadFile(), fileUploadPath);
		
		franAppliDocVO.setAttachList(attachList);
		System.out.println("첨부파일리스트=============" + attachList);
		franApplyService.registFranApply(franAppliDocVO);
		
		rttr.addFlashAttribute("from", "regist");
		
		return url;
	}
	
	
	
}
