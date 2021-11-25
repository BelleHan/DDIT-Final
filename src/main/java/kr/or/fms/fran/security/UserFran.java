package kr.or.fms.fran.security;

import java.util.Collection;


import org.springframework.security.core.GrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;

import kr.or.fms.fran.dto.FranVO;


public class UserFran implements UserDetails {

	private FranVO fran;
	
	public UserFran(FranVO fran) {
		this.fran =fran;
	}
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		//role(String authority) 은 하나여서 반복문을 돌리지 않아도 된다
//		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
//		roles.add(new SimpleGrantedAuthority(logis.getAuthority()));
//		return roles;
		return null;
	}

	//provider가 호출할 메서드
	//membervo와 연결(id,pwd)
	@Override
	public String getPassword() {
		return fran.getFran_pwd();
	}

	@Override
	public String getUsername() {
		return fran.getFran_code();
	}

	
	public FranVO getFranVO() {
		return this.fran;
	}
//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//		return null;
//	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}


	@Override
	public boolean isAccountNonLocked() {
		return true;
	}


	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}


	@Override
	public boolean isEnabled() {
		return true;
	}


}
