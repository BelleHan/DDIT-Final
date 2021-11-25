package kr.or.fms.hq.security;

import java.sql.SQLException;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import kr.or.fms.hq.dao.EmpDAO;
import kr.or.fms.hq.dto.HqEmpVO;

public class HqCustomAuthenticationProvider implements AuthenticationProvider {

	private EmpDAO empDAO;
	public void setEmpDAO(EmpDAO empDAO) {
		this.empDAO = empDAO;
	}

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		// 인증을 거치지 않은 authentication
		String login_id = (String) auth.getPrincipal(); 
		String login_pwd = (String) auth.getCredentials();
		
		HqEmpVO emp = null;
		try {
			emp = empDAO.selectEmp(login_id);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new AuthenticationServiceException("Internal sever error!"); //sql exception
		}
		
		if(emp != null) {
			if(login_pwd.equals(emp.getEmp_pwd())) {
				UserDetails authUser = new UserHqEmp(emp);
				
				boolean invalidCheck = authUser.isAccountNonExpired()
						&& authUser.isAccountNonLocked()
						&& authUser.isCredentialsNonExpired() 
						&& authUser.isEnabled();
	
				if(invalidCheck) {
					
					UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(authUser.getUsername(),
																	authUser.getPassword(),null);
					result.setDetails(authUser);
					return result;
					
				}else { 
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
