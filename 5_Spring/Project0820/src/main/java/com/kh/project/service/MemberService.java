package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Member;
import mapper.MemberMapper;

@Service
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;
    
    /**
     * ID 중복 체크
     * @param id 체크할 ID
     * @return true면 중복, false면 사용 가능
     */
    public boolean check(String id) {
        Member vo = memberMapper.check(id);
        return vo != null; // ID가 이미 존재하면 true
    }
    
    /**
     * 로그인 처리
     * @param vo 로그인 시 입력한 ID와 비밀번호
     * @return 로그인 성공 시 Member 객체, 실패 시 null
     */
    public Member login(Member vo) {
        return memberMapper.login(vo);
    }

    /**
     * 회원가입 처리
     * @param vo 회원가입 정보가 담긴 Member 객체
     * @return 회원가입 성공 시 true, 실패 시 false
     */
    public boolean signUp(Member vo) {
        try {
            int result = memberMapper.signUp(vo);
            return result == 1; // 삽입된 레코드 수가 1이면 성공
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    // 회원정보 수정
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
    
    public void delete(int no) {
    	memberMapper.delete(no);
    }
    
}
