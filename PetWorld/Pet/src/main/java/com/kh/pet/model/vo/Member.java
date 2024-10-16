package com.kh.pet.model.vo;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Member implements UserDetails {
	
	private String id;
	private String pwd;
	private String password;
	private String name;
	private String phone;
	private String address;
	private String email;
	private String role;  // 회원(ROLE_MEMBER) , 펫서비스사(ROLE_SERVICE), 관리자(ROLE_ADMIN)


@Override
public Collection<? extends GrantedAuthority> getAuthorities() {
	ArrayList<GrantedAuthority> authList = new ArrayList<>();
	authList.add(new SimpleGrantedAuthority(role));
	return authList;
}

@Override
public String getUsername() {
	return id;
  }
}