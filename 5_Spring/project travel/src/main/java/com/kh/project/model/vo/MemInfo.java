package com.kh.project.model.vo;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor@Builder
public class MemInfo  implements UserDetails{
	private int memInfoCode;
	private String id;
	private String password;
	private String name;
	private String phone;
	private String role;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities(){
		ArrayList<GrantedAuthority> authList = new ArrayList<>();
		authList.add(new SimpleGrantedAuthority(role));
		return authList;
	}
	
	@Override
	public String getUsername() {
		return id;
	}
}
