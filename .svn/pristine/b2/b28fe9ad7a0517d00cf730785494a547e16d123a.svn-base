package kr.or.fms.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		String url = "redirect:/";
		return url;
	}
	@RequestMapping(value = "/keyword")
	public String keyword(HttpSession session) {
		String url = "common/keyword";
		return url;
	}
	@RequestMapping(value = "/keywordlocal")
	public String keywordLocal(HttpSession session) {
		String url = "common/keyword_local";
		return url;
	}
	@RequestMapping(value = "/keywordfran")
	public String keywordFran(HttpSession session) {
		String url = "common/keyword_fran";
		return url;
	}
	@RequestMapping(value = "/keywordlogis")
	public String keywordLogis(HttpSession session) {
		String url = "common/keyword_logis";
		return url;
	}
	@RequestMapping(value = "/keywordsup")
	public String keywordSup(HttpSession session) {
		String url = "common/keyword_sup";
		return url;
	}
	@RequestMapping(value = "/keywordgoods")
	public String keywordGoods(HttpSession session) {
		String url = "common/keyword_hqgoods";
		return url;
	}
	@RequestMapping(value = "/keywordlaca")
	public String keywordLaca(HttpSession session) {
		String url = "common/keyword_laca";
		return url;
	}
	@RequestMapping(value = "/keywordsmca")
	public String keywordSmca(HttpSession session) {
		String url = "common/keyword_smca";
		return url;
	}
}
