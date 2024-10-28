package com.kh.pet.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        List<Reservation> reservations = reservationService.getReservationList();
        model.addAttribute("reservations", reservations);
        return "mypage"; // JSP 파일 이름
    }

    // 새로운 예약 추가
    @PostMapping("/add")
    public String addReservation(
            @RequestParam String petsitter,
            @RequestParam Integer petNum,
            @RequestParam Integer careTime,
            @RequestParam String date,
            @RequestParam Boolean bathService,
            @RequestParam Boolean walkService,
            @RequestParam Boolean pickupService
    ) {
        Reservation reservation = new Reservation();
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum);
        reservation.setCareTime(careTime);
        reservation.setDate(date);
        reservation.setBathService(bathService);
        reservation.setWalkService(walkService);
        reservation.setPickupService(pickupService);

        try {
            reservationService.addReservation(reservation);
            return "redirect:/mypage"; // 예약 후 마이페이지로 리다이렉트
        } catch (Exception e) {
            return "redirect:/reservation/add"; // 실패 시 다시 예약 페이지로
        }
    }

    // 특정 예약 조회
    @GetMapping("/get/{id}")
    public Reservation getReservation(@PathVariable String id) {
        return reservationService.getReservationListById(id);
    }

    // 예약 정보 수정
    @PostMapping("/update/{id}")
    public String updateReservation(
            @PathVariable String id,
            @RequestParam String petsitter,
            @RequestParam Integer petNum,
            @RequestParam Integer careTime,
            @RequestParam String date,
            @RequestParam Boolean bathService,
            @RequestParam Boolean walkService,
            @RequestParam Boolean pickupService
    ) {
        Reservation reservation = new Reservation();
        reservation.setId(id);
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum);
        reservation.setCareTime(careTime);
        reservation.setDate(date);
        reservation.setBathService(bathService);
        reservation.setWalkService(walkService);
        reservation.setPickupService(pickupService);

        try {
            reservationService.updateReservation(reservation);
            return "redirect:/index"; // 성공 시 Index 페이지로 리다이렉트
        } catch (Exception e) {
            return "redirect:/mypage"; // 실패 시 마이페이지에 머무름
        }
    }

    // 예약 삭제
    @DeleteMapping("/delete/{id}")
    public String deleteReservation(@PathVariable String id) {
        try {
            reservationService.deleteReservation(id);
            return "redirect:/index"; // 성공 시 Index 페이지로 리다이렉트
        } catch (Exception e) {
            return "redirect:/mypage"; // 실패 시 마이페이지에 머무름
        }
    }
}
