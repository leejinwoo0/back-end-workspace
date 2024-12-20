package com.kh.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pet.model.vo.Member;
import com.kh.pet.model.vo.Reservation;
import com.kh.pet.service.ReservationService;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class PageController {
	
	
	 

	
	//메인 페이지
	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	// 회원가입 페이지
	@GetMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	// 로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	/*
	 * @GetMapping("mypage") public String mypage() { System.out.println("asdasd");
	 * return "mypage"; }
	 */
	
	//@GetMapping("/mypage")
	//public String mypage(Model model) {
	  //  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    //Member member = (Member) authentication.getPrincipal();
	    //String role = member.getRole();
	    
	    // 현재 회원 ID로 예약 목록 가져오기
	   // Reservation reservations = reservationService.getReservationListById(member.getId());
	    //model.addAttribute("reservations", reservations);
	    
	   // if (role.equals("ROLE_PETSITTER")) {
	     //   return "petsitterpage";
	   // } else if (role.equals("ROLE_MEMBER")) {
	    //    return "mypage"; // mypage.jsp로 이동
	   // }
	   // return "adminpage";
//	}
	// 회원정보수정 페이지
	@GetMapping("/update")
	public String update() {
		return "update";
	}
	
	// 회원탈퇴 페이지
	@GetMapping("/delete")
	public String delete() {
		return "delete";
	}
	
	// 자주받는 질문 페이지
	@GetMapping("/FAQ")
	public String FAQ() {
		return "FAQ";
	}
	// 서비스 종류 페이지
	@GetMapping("/service")
	public String service() {
		return "service";
	}

	 //리뷰
	//@GetMapping("/review")
	//public String review() {
	//	return "review";
	//}
	
    //리뷰 작성
	@GetMapping("/reviewForm")
	public String reviewForm() {
		return "reviewForm";
	}
	
	//리뷰 수정
	@GetMapping("/reviewUpdate")
	public String reviewUpdate() {
		return "reviewUpdate";
	}
	// 상담 게시판
	@GetMapping("/chat")
	public String chat() {
		return "chat";
	}
	
	// 상담 게시판 작성
	@GetMapping("/chatForm")
	public String chstForm() {
		return "chatForm";
	}
	// 예약
	@GetMapping("/reservation")
	public String reservation() {
		return "reservation";
	}
	
	 //펫케어사 소개 페이지
	//@GetMapping("/petsitter")
	//public String petsitter() {
	//	return "petsitter";
	//}
	
	
}
