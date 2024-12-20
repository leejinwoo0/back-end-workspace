package com.kh.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.pet.model.vo.Member;
import com.kh.pet.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;
    
    @Autowired
	private PasswordEncoder bcpe;

    // 회원 목록 조회
    @GetMapping("/member/list")
    public String getMemberList(Model model) {
        List<Member> members = memberService.getMemberList();
        model.addAttribute("members", members);
        return "member/list"; // 회원 목록 페이지
    }
    

    // 중복체크
    @ResponseBody
    @PostMapping("/check")
    public boolean check(String id) {
        return memberService.check(id);
    }
    

    // 회원가입
    @PostMapping("/signUp")
    public String signUp(Member member, HttpServletRequest request) {
        try {
            if ("member".equals(member.getRole())) {
                member.setRole("ROLE_MEMBER");
            } else {
                member.setRole("ROLE_PETSITTER");
            }
            boolean isRegistered = memberService.signUp(member);
            if (isRegistered) {
                return "redirect:/login"; // 회원가입 성공 후 로그인 페이지로 리다이렉트
            } else {
                request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
                return "signUp"; // 실패 시 다시 회원가입 페이지로 이동
            }
        } catch (Exception e) {
            request.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다: " + e.getMessage());
            return "signUp"; // 예외 발생 시 다시 회원가입 페이지로 이동
        }
    }

    // 회원정보 수정
    @PostMapping("/mypage/update")
    public String updateProfile(Member member, HttpServletRequest request, Model model) {
        try {
           Authentication auth = SecurityContextHolder.getContext().getAuthentication();
          Member currentUser = (Member) auth.getPrincipal();
            member.setId(currentUser.getId()); // 현재 사용자의 ID 유지
//            System.out.println(currentUser.getId());
            boolean isUpdated = memberService.updateProfile(member);
            
            if (isUpdated) {
                return "redirect:/login"; // 수정 성공 시 로그인 페이지로 리다이렉트
            } else {
                model.addAttribute("errorMessage", "정보 수정에 실패했습니다. 다시 시도해주세요.");
                return "mypage"; // 실패 시 다시 회원정보수정 페이지로 이동
            }
        } catch (Exception e) {
            model.addAttribute("errorMessage", "정보 수정 중 오류가 발생했습니다: " + e.getMessage());
            return "mypage/update"; // 예외 발생 시 다시 회원정보수정 페이지로 이동
        }
    }

    // 회원탈퇴
    @PostMapping("/mypage/delete")
    public String deleteAccount(HttpServletRequest request, Model model) {
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            Member currentUser = (Member) authentication.getPrincipal();
           // System.out.println("컨트롤러 - 현재 사용자: " + currentUser.getId());
            boolean isDeleted = memberService.deleteAccount(currentUser.getId());
           // System.out.println("컨트롤러 - 서비스 호출 결과: " + isDeleted);
            if (isDeleted) {
                SecurityContextHolder.clearContext(); // 인증 정보 삭제
                
                return "redirect:/login"; // 로그인 페이지로 리다이렉트
            } else {
                model.addAttribute("errorMessage", "회원탈퇴에 실패했습니다. 다시 시도해주세요.");
                return "mypage"; // 실패 시 다시 회원정보 수정 페이지로 이동
            }
        } catch (Exception e) {
            model.addAttribute("errorMessage", "회원탈퇴 중 오류가 발생했습니다: " + e.getMessage());
            return "mypage"; // 예외 발생 시 다시 회원정보 수정 페이지로 이동
        }
    }
    
    // 로그인
    @RequestMapping("/loginSuccess")
    public String loginSuccess(HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = (Member) authentication.getPrincipal();  // 로그인된 사용자 정보 가져오기
        
        
        // 세션에 사용자 ID 저장
        HttpSession session = request.getSession();
        session.setAttribute("userId", member.getUsername());
        
        return "index";  // 마이페이지로 리다이렉트
    }
    
    
    
}
