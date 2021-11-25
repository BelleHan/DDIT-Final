package kr.or.fms.hq.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.fms.command.SearchCriteria;
import kr.or.fms.fran.dto.FranNoticeVO;
import kr.or.fms.hq.service.FranNoticeService;

@Controller
@RequestMapping("/hq")
public class FranNoticeController {
	@Autowired
	FranNoticeService franNoticeService;
	
	@RequestMapping("/com/board")
	public ModelAndView noticeList(SearchCriteria cri, ModelAndView mnv)throws SQLException{
		String url="hq/franNotice/list";		
		
		Map<String,Object> dataMap = franNoticeService.getFranNoticeList(cri);
		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}

	@RequestMapping("/com/post")
	public ModelAndView detail(String fNum, String from, ModelAndView mnv) throws SQLException {
		
		String url = "hq/franNotice/post";
		 FranNoticeVO franNotice = new FranNoticeVO();
		 franNotice = franNoticeService.getFranNoticeDetail(fNum);
		 
		mnv.addObject("franNotice", franNotice);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	

	
}
