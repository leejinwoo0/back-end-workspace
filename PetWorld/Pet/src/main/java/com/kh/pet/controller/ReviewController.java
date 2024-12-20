package com.kh.pet.controller;

import com.kh.pet.model.vo.Member;
import com.kh.pet.model.vo.Review;
import com.kh.pet.service.ReviewService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reviews")  // URL 기본 경로
public class ReviewController {

    @Autowired
    private ReviewService reviewService;

    // 1. 리뷰 목록 보기 (회원 여부 상관없이)
    @GetMapping("/list")
    public String listReviews(Model model) {
        List<Review> reviews = reviewService.getAllReviews();  // 모든 리뷰 조회
        model.addAttribute("reviews", reviews);  // 모델에 리뷰 목록 추가
       return "review";  // 리뷰 목록 페이지로 이동
    }

    // 2. 리뷰 작성 페이지로 이동 (회원만 가능)
    @GetMapping("/reviewForm")
    public String ReviewFormPage(Model model) {
    	try {
        	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    		Member member = (Member) authentication.getPrincipal();
        	model.addAttribute("id", 1);
        	return "reviewForm";
        	} catch (Exception e) {
        		return "redirect:/login";
        	}
    }

    // 3. 리뷰 작성한후, 리뷰목록 보여주기 (회원만 가능)
    @PostMapping("/add")
    public String addReview(@ModelAttribute Review review, HttpSession session) {
    
    	System.out.println("review" + review);
    	String userId = (String) session.getAttribute("userId");
        
    	if(userId !=null &&!userId.isEmpty()) {
    		review.setId(userId);
    	}else {
    		return "redirect:/reviewForm";
    	}
          
        try {
            reviewService.addReview(review);  // 리뷰 작성
            return "redirect:/reviews/list";  // 리뷰 작성 후 목록 페이지로 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/reviewForm";  // 경로 수정
        }
    }

   
    }

