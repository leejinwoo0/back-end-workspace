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
public class MemberService implements UserDetailsService {

	  @Autowired(required = false)
	    private MemberMapper memberMapper;
	    
	    
	    @Autowired
		private PasswordEncoder bcpe;
	   
	    
	    //중복체크
	    public boolean check(String id) {
	        Member vo = memberMapper.check(id);
	        return vo != null; // ID가 이미 존재하면 true
	    }
	    
	    public Member login(Member vo) {
	        return memberMapper.login(vo);
	    }

	    // 회원가입
	    public boolean signUp(Member vo) {
	        try {
	        	vo.setPassword(bcpe.encode(vo.getPassword()));
	            int result = memberMapper.signup(vo);
	            return result == 1; // 삽입된 레코드 수가 1이면 성공
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	    
	    // 회원정보 수정 
	    public boolean update(Member vo) {
	        try {
	            int result = memberMapper.update(vo);
	            return result > 0;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
	    
	    // 회원 탈퇴
	    public boolean delete(Member vo) {
	       try {
	    	   int result = memberMapper.delete(vo);
	    	   return result < 0;
	       } catch (Exception e) {
	    	  e.printStackTrace();
	    	  return false;
	       }	
	       
	    }
	    
	    
	    
	    public List<Member> memberList(String id) {
	    	return memberMapper.memberList(id);
	    }
	    
	    
		@Override
		public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
			return memberMapper.check(username);
		}
}
