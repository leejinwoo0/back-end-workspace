package com.kh.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


import com.kh.pet.model.vo.Member;

import mapper.MemberMapper;

@Service
public class MemberService implements UserDetailsService{

    @Autowired
    private MemberMapper memberMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    // 회원 목록 조회
    public List<Member> getMemberList() {
        return memberMapper.getMemberList();
    }
    
   
    // 아이디 중복 체크
    public boolean check(String id) {
        Member member = memberMapper.checkId(id);
        System.out.println("회원가입");
        System.out.println(member);
        return member == null; // null이면 중복이 아님
    }

    // 회원가입
    public boolean signUp(Member member) {
        // 비밀번호 암호화
        member.setPassword(passwordEncoder.encode(member.getPassword()));
        return memberMapper.signUp(member) == 1; // INSERT 성공 시 1 반환
    }

    // 회원정보 수정
    public boolean updateProfile(Member member) {
        // 비밀번호 변경 요청 시 암호화
    	 System.out.println("member"+member.getPassword());
        if (member.getPassword() != null && !member.getPassword().isEmpty()) {
            member.setPassword(passwordEncoder.encode(member.getPassword()));
            
           
        }
        return memberMapper.updateMember(member) == 1; // UPDATE 성공 시 1 반환
    }

    // 회원탈퇴
    public boolean deleteAccount(String id) {
    	System.out.println("회원탈퇴");
        System.out.println(id);
        return memberMapper.deleteMember(id) == 1; // DELETE 성공 시 1 반환
    }

    // 아이디로 회원 정보 가져오기
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	System.out.println(username);
    	
        Member member = memberMapper.checkId(username);
        System.out.println("Member" + member);
      
        if (member == null) {
            throw new UsernameNotFoundException("User not found with username: " + username);
        }

        // 비밀번호 확인은 Spring Security가 내부적으로 처리하므로 제거합니다.
        
        return member; // UserDetails 객체 반환
    }
}
