package com.kh.pet.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.kh.pet.model.vo.Member;
import com.kh.pet.model.vo.Reservation;
import com.kh.pet.service.MemberService;
import com.kh.pet.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private MemberService memberService;

    // 예약 목록 조회 (JSP로 전달)
    @GetMapping("/list")
    public String getReservationList(Model model) {
        System.out.println("getReservationList 메서드 호출");
        
        // 현재 사용자 정보를 가져옴
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = (Member) authentication.getPrincipal();
        
        // 현재 회원 ID로 예약 목록 가져오기
        List<Reservation> reservations = reservationService.getReservationListById(member.getId());
        System.out.println("예약 목록: " + reservations);
        model.addAttribute("reservations", reservations);
        return "mypage"; 
    }

    // 새로운 예약 추가
    @PostMapping("/add")
    public String addReservation(
            @RequestParam String petsitter,
            @RequestParam String petNum, 
            @RequestParam String careTime, 
            @RequestParam String date,
            @RequestParam Boolean bathService,
            @RequestParam Boolean walkService,
            @RequestParam Boolean pickupService
    ) {
        
    	   System.out.println("petsitter: " + petsitter);
    	    System.out.println("petNum: " + petNum);
    	    System.out.println("careTime: " + careTime);
    	    System.out.println("date: " + date);
    	    System.out.println("bathService: " + bathService);
    	    System.out.println("walkService: " + walkService);
    	    System.out.println("pickupService: " + pickupService);
        
        // 현재 사용자 정보를 가져옴
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = (Member) authentication.getPrincipal(); // 현재 로그인한 회원 정보 가져오기

        Reservation reservation = new Reservation();
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum); 
        reservation.setCareTime(careTime); 
        reservation.setDate(date);
        reservation.setBathService(bathService);
        reservation.setWalkService(walkService);
        reservation.setPickupService(pickupService);
        
        reservation.setId(member.getId());
        
        
         
        try {
            reservationService.addReservation(reservation);
           System.out.println("예약성공" + reservation);
            return "redirect:/reservation/mypage"; // 예약 후 마이페이지로 리다이렉트
         
             
        } catch (Exception e) {
            System.out.println("예약 추가 실패: " + e.getMessage());
            return "redirect:/reservation/add"; // 실패 시 다시 예약 페이지로
        }
    }

    // 특정 예약 조회
    @GetMapping("/get/{id}")
    public Reservation getReservation(@PathVariable String id) {
        System.out.println("getReservation2 메서드 호출, ID: " + id);
        return reservationService.getReservationListByReservationId(id);
    }

    // 예약 정보 수정
    @PostMapping("/update/{id}")
    public String updateReservation(
            @PathVariable String id, // 경로 변수로 예약 ID를 받습니다.
            @RequestParam String petsitter,
            @RequestParam String petNum, 
            @RequestParam String careTime, 
            @RequestParam String date,
            @RequestParam Boolean bathService,
            @RequestParam Boolean walkService,
            @RequestParam Boolean pickupService
    ) {
        System.out.println("updateReservation 메서드 호출, ID: " + id);

        // Reservation 객체 생성 및 속성 설정
        Reservation reservation = new Reservation();
        reservation.setId(id); // 경로 변수로 받은 ID 설정
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum); 
        reservation.setCareTime(careTime); 
        reservation.setDate(date);
        reservation.setBathService(bathService);
        reservation.setWalkService(walkService);
        reservation.setPickupService(pickupService);

        try {
            // reservationService.updateReservation 메서드를 호출하여 예약 수정
            reservationService.updateReservation(id); // 수정된 Reservation 객체 전달
            return "redirect:/reservation/mypage"; // 성공 시 마이페이지로 리다이렉트
        } catch (Exception e) {
            System.out.println("예약 수정 실패: " + e.getMessage());
            return "redirect:/reservation/mypage"; // 실패 시 마이페이지에 머무름
        }
    }


    // 예약 삭제
    @PostMapping("/delete/{id}")
    public String deleteReservation(@PathVariable String id) {
        System.out.println("deleteReservation 메서드 호출, ID: " + id);
        try {
            reservationService.deleteReservation(id);
            return "redirect:/reservation/mypage"; // 성공 시 마이페이지로 리다이렉트
        } catch (Exception e) {
            System.out.println("예약 삭제 실패: " + e.getMessage());
            return "redirect:/reservation/mypage"; // 실패 시 마이페이지에 머무름
        }
    }

    // 마이페이지 이동
    @GetMapping("/mypage")
    public String mypage(Model model) {
   
        
        
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = (Member) authentication.getPrincipal();
 
        
        // 현재 회원 ID로 예약 목록 가져오기
        List<Reservation> reservations = reservationService.getReservationListById(member.getId());
        model.addAttribute("reservations", reservations);
        
        System.out.println("예약목록 가져오기" + reservations);
            return "mypage"; 
    
    }
}
