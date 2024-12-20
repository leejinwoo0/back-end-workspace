package com.kh.pet.model.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member implements UserDetails {
    private String id;         // 아이디
    private String password;   // 비밀번호
    private String name;       // 이름
    private String phone;      // 전화번호
    private String address;    // 주소
    private String email;      // 이메일
    private String role;       // 역할 (예: ROLE_MEMBER, ROLE_ADMIN 등)
  
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // return authorities based on role, e.g., SimpleGrantedAuthority
        return List.of(new SimpleGrantedAuthority(this.role));
    }

    @Override
    public String getUsername() {
        return this.id;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true; // 계정 만료 여부를 설정할 수 있습니다.
    }

    @Override
    public boolean isAccountNonLocked() {
        return true; // 계정 잠금 여부를 설정할 수 있습니다.
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true; // 자격 증명(비밀번호) 만료 여부를 설정할 수 있습니다.
    }

    @Override
    public boolean isEnabled() {
        return true; // 계정 활성화 여부를 설정할 수 있습니다.
    }
}
