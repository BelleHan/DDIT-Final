package kr.or.fms.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import kr.or.fms.logis.dto.LogisVO;
import kr.or.fms.logis.service.LogisService;

public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		
		UserDetails user = (UserDetails)authentication.getPrincipal();
		String username = user.getUsername();
		
		ApplicationContext ctx = new GenericXmlApplicationContext("classpath:kr/or/fms/context/root-context.xml");
		LogisService service = ctx.getBean("logisService",LogisService.class);
		
		try {
			LogisVO loginLogis = service.getLogis(username);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginLogis", loginLogis);
			session.setMaxInactiveInterval(60*60);//20초 /초단위
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		super.onAuthenticationSuccess(request, response, authentication);
	}

}
