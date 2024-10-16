package com.kh.pet.controller;

import com.kh.pet.model.vo.Member;
import com.kh.pet.model.vo.Review;
import com.kh.pet.service.ReviewService;
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
        return "reviews/reviewList";  // 리뷰 목록 페이지로 이동
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

    // 3. 리뷰 작성 처리 (회원만 가능)
    @PostMapping("/add")
    public String addReview(@ModelAttribute Review review) {
        try {
            reviewService.addReview(review);  // 리뷰 작성
            return "redirect:/reviews/list";  // 리뷰 작성 후 목록 페이지로 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/reviews/new?error";  // 오류 발생 시 다시 폼 페이지로 리다이렉트
        }
    }

    // 4. 리뷰 수정 페이지로 이동 (회원만 가능)
    @GetMapping("/edit/{reviewCode}")
    public String showEditForm(@PathVariable int reviewCode, Model model) {
        try {
            Review review = reviewService.getReviewById(reviewCode);  // 리뷰 조회
            model.addAttribute("review", review);  // 모델에 리뷰 추가
            return "reviews/reviewEditForm";  // 리뷰 수정 폼 페이지로 이동
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/reviews/list?error";  // 오류 시 목록 페이지로 리다이렉트
        }
    }

    // 5. 리뷰 수정 처리 (회원만 가능)
    @PostMapping("/update")
    public String updateReview(@ModelAttribute Review review) {
        try {
            reviewService.updateReview(review);  // 리뷰 수정 처리
            return "redirect:/reviews/list";  // 수정 후 목록 페이지로 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/reviews/edit/" + review.getReviewCode() + "?error";  // 오류 시 수정 페이지로 리다이렉트
        }
    }

    // 6. 리뷰 삭제 처리 (회원만 가능)
    @PostMapping("/delete/{reviewCode}")
    public String deleteReview(@PathVariable int reviewCode, @RequestParam String id) {
        try {
            reviewService.deleteReview(reviewCode, id);  // 리뷰 삭제
            return "redirect:/reviews/list";  // 삭제 후 목록 페이지로 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/reviews/list?error";  // 오류 시 목록 페이지로 리다이렉트
        }
    }
}
