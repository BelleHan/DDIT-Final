package kr.or.fms.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import kr.or.fms.logis.dto.LogisVO;

@ControllerAdvice
public class ExceptionControllerAdvicer {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(ExceptionControllerAdvicer.class);
	
	@ExceptionHandler(SQLException.class)
	public String sqlExceptionPage(Exception e,Model model,HttpSession session){
		String url="error/sqlException";
		
		logger.info(e.toString());
		
		LogisVO loginLogis = (LogisVO)session.getAttribute("loginLogis");
		
		model.addAttribute("exception",e);
		model.addAttribute("user",loginLogis!=null ? loginLogis.getLogis_name()+"님":"");
		
		
		return url;		
	}
}






