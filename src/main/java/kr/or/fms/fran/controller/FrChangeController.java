package kr.or.fms.fran.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.fms.command.FranStChangeRegistCommand;
import kr.or.fms.fran.dto.FranStChangeVO;
import kr.or.fms.fran.service.FranStChangeService;

@Controller
@RequestMapping("/fr")
public class FrChangeController {
	
	@Autowired
	FranStChangeService stService;
	
	@RequestMapping("/info/changeForm")
	public String registForm(){
		String url="fr/info/stChange";		
		return url;
	}
	
	@RequestMapping("/info/regist")
	public String regist(FranStChangeRegistCommand regReq, RedirectAttributes rttr, HttpServletRequest request)throws Exception{
		String url="/fr/info/stChange_success";
		
		FranStChangeVO st = regReq.toFranStChangeVO();
		
		stService.regist(st);
		
		rttr.addFlashAttribute("from", "regist");
		
		return url;
	}
	
	

}
