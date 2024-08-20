package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Member;
import com.kh.project.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 중복체크
	@ResponseBody
	@PostMapping("/check")
	public boolean check(String id) {
		System.out.println(id);
		return memberService.check(id);
	}
	
	// 로그인
	@PostMapping("/login")
	public String login(Member vo, HttpServletRequest request) {
		Member result = memberService.login(vo);
		if(result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", result);
			return "redirect:/";
		}
		return "login";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원가입
	@PostMapping("/signUp")
	public String signUp(Member vo, HttpServletRequest request) {
	    try {
	        boolean isRegistered = memberService.signUp(vo);
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
	
	  // 로그인 페이지 이동
    @GetMapping("/login")
    public String login() {
        return "login"; 
    }

    // 회원가입 페이지 이동
    @GetMapping("/signUp")
    public String signUp() {
        return "signUp"; 
    }
    
    // 회원정보수정 페이지 이동
    @GetMapping("/update")
    public String update() {
    	return "redirect:/";
    }
    
    // 마이페이지 이동
    @GetMapping("/mypage")
    public String mypage() {
    	return "mypage";
    }
    
 // 회원정보수정
    @PostMapping("/update")
    public String update(Member vo, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Member currentMember = (Member) session.getAttribute("vo");

            if (currentMember != null) {
                vo.setId(currentMember.getId()); // 현재 사용자의 ID를 유지
                vo.setMemCode(currentMember.getMemCode()); // 고유 회원 코드 유지
                boolean isUpdated = memberService.update(vo);

                if (isUpdated) {
                    session.setAttribute("vo", vo); // 업데이트된 정보를 세션에 저장
                    return "redirect:/"; // 수정 성공 시 메인 페이지로 리다이렉트
                } else {
                    request.setAttribute("errorMessage", "회원정보 수정에 실패했습니다. 다시 시도해주세요.");
                    return "update"; // 실패 시 다시 회원정보수정 페이지로 이동
                }
            } else {
                return "redirect:/login"; // 세션에 사용자가 없을 경우 로그인 페이지로 리다이렉트
            }
        } catch (Exception e) {
            request.setAttribute("errorMessage", "회원정보 수정 중 오류가 발생했습니다: " + e.getMessage());
            return "update"; // 예외 발생 시 다시 회원정보수정 페이지로 이동
        }
    }
}
