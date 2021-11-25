package kr.or.fms.logis.security;

import java.sql.SQLException;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import kr.or.fms.logis.dao.LogisDAO;
import kr.or.fms.logis.dto.LogisVO;

public class CustomAuthenticationProvider implements AuthenticationProvider {

	private LogisDAO logisDAO;
	public void setLogisDAO(LogisDAO logisDAO) {
		this.logisDAO = logisDAO;
	}

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		// 인증을 거치지 않은 authentication
		//로그인 성공시 loginuser를 만들어
		String login_id = (String) auth.getPrincipal(); //로그인 시도한 id를 가져온다
		String login_pwd = (String) auth.getCredentials(); //로그인 시도한 password를 가져온다
		System.out.println(login_id);
		System.out.println(login_pwd);
		
		LogisVO logis = null;
		try {
			System.out.println("logis");
			logis = logisDAO.selectLogisByCode(login_id);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new AuthenticationServiceException("Internal sever error!"); //sql exception
		}
		
		if(logis != null) {
			if(login_pwd.equals(logis.getLogis_pwd())) {
				UserDetails authUser = new UserLogis(logis);
				
				boolean invalidCheck = authUser.isAccountNonExpired()
						&& authUser.isAccountNonLocked()
						&& authUser.isCredentialsNonExpired() 
						&& authUser.isEnabled();
	
				if(invalidCheck) {
					
					//스프링시큐리티 내부 클래스로 인증 토큰 생성한다.
					//토큰 ->상태유지!
					//얘도 authentication을 상속받아 만든애
					
					UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(authUser.getUsername(),
																	authUser.getPassword(),null);
					
					//전달할 내용을 설정한 후
					result.setDetails(authUser);
					//리턴한다. successHandler로 전송한다
					//UsernamePasswordAuthenticationtoken을 success에서 줘
					//username, password, authority를 뺄 수 있구나
					return result;
					
				}else { //throw도 exception도 return의 한 종류
					throw new BadCredentialsException("로그인이 거부되었습니다.");
				}
			}else {
				throw new BadCredentialsException("패스워드가 일치하지않습니다.");
			}
		}else {
			throw new BadCredentialsException("존재하지 않는 아이디입니다.");
		}
	}	

	@Override
	public boolean supports(Class<?> auth) {
		return auth.equals(UsernamePasswordAuthenticationToken.class);
	}

}
