package com.kh.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.kh.pet.model.vo.Reservation;
import com.kh.pet.service.MemberService;
import com.kh.pet.service.ReservationService;

@RestController
@RequestMapping("/reservation")
public class ReservationController {

    @Autowired
    private ReservationService reservationService;
    
    @Autowired
    private MemberService memberService;

    // 예약 목록 조회
    @GetMapping("/list")
    public List<Reservation> getReservationList() {
        return reservationService.getReservationList();
    }

    // 새로운 예약 추가 (필수 + 선택 항목)
    @PostMapping("/add")
    public String addReservation(
            @RequestParam String petsitter,       // 필수 항목
            @RequestParam int petNum,             // 필수 항목
            @RequestParam int careTime,           // 필수 항목
            @RequestParam(required = false) Boolean bathService,  // 선택 항목
            @RequestParam(required = false) Boolean walkService,  // 선택 항목
            @RequestParam(required = false) Boolean pickupService // 선택 항목
    ) {
        // 필수 항목은 반드시 값이 있어야 한다는 가정하에 처리
        Reservation reservation = new Reservation();
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum);
        reservation.setCareTime(careTime);

        // 선택 항목은 null일 경우 false로 기본 설정
        reservation.setBathService(bathService != null ? bathService : false);
        reservation.setWalkService(walkService != null ? walkService : false);
        reservation.setPickupService(pickupService != null ? pickupService : false);

        // 서비스에서 예약을 추가
        reservationService.addReservation(reservation);

        return "예약이 성공적으로 추가되었습니다.";
    }

    // 예약 정보 수정
    @PostMapping("/update")
    public String updateReservation(
            @RequestParam String id,          // 아이디로
            @RequestParam String petsitter,        // 필수 항목
            @RequestParam int petNum,              // 필수 항목
            @RequestParam int careTime,            // 필수 항목
            @RequestParam(required = false) Boolean bathService,  // 선택 항목
            @RequestParam(required = false) Boolean walkService,  // 선택 항목
            @RequestParam(required = false) Boolean pickupService // 선택 항목
    ) {
        Reservation reservation = new Reservation();
        reservation.setId(id);
        reservation.setPetsitter(petsitter);
        reservation.setPetNum(petNum);
        reservation.setCareTime(careTime);

        // 선택 항목 처리
        reservation.setBathService(bathService != null ? bathService : false);
        reservation.setWalkService(walkService != null ? walkService : false);
        reservation.setPickupService(pickupService != null ? pickupService : false);

        reservationService.updateReservation(reservation);

        return "예약이 성공적으로 수정되었습니다.";
    }

    // 예약 삭제
    @DeleteMapping("/delete/{id}")
    public String deleteReservation(@PathVariable String id) {
        reservationService.deleteReservation(id);
        return "예약이 삭제되었습니다.";
    }
}
