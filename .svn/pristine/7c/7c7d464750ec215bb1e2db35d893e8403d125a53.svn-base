package kr.or.fms.hq.security;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

public class HqLoginFailureHandler extends SimpleUrlAuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {

		
		String msg = "";
		//customauthenticationprovider에서 넘어온 exception을 받는데
		//exception의 종류를 알면 그 message를 출력해주고
		//정의하지 않은 exception이 오면 하나로 보낸다.
		if(exception instanceof AuthenticationServiceException || 
				exception instanceof BadCredentialsException) {
			msg = exception.getMessage();
		}else {
			msg = "시스템 장애로 인해 서비스가 불가합니다.";
		}
		
		//super이용하면 하던대로~ 라는 뜻
//		super.onAuthenticationFailure(request, response, exception);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('"+msg+"');");
		out.println("history.go(-1)");
		out.println("</script>");
	}

	
}
