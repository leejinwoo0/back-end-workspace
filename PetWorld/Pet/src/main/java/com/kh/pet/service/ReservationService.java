package com.kh.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pet.model.vo.Reservation;

import mapper.ReservationMapper;

@Service
public class ReservationService {
	
	@Autowired(required = false)
	private ReservationMapper reservationmapper;
	
	// 예약 목록 조회
    public List<Reservation> getReservationList() {
        return reservationmapper.getReservationList(); // 예약 테이블의 모든 데이터 가져오기
    }

    // 새로운 예약 추가
    public void insertReservation(Reservation reservation) {
    	reservationmapper.insertReservation(reservation); // 예약 정보 추가
    }
    
    // 선택항목 예약 추가
    public void addReservation(Reservation reservation) {
    	reservationmapper.addReservation(reservation);
    }
    
    public void saveReservation(Reservation reservation) {
    	reservationmapper.saveReservation(reservation);
    }

    // 예약 정보 수정
    public void updateReservation(Reservation reservation) {
    	reservationmapper.updateReservation(reservation); // 예약 정보 업데이트
    }

    // 예약 삭제 (예약 코드로 삭제)
    public void deleteReservation(String resCode) {
    	reservationmapper.deleteReservation(resCode); // 예약 코드에 따라 예약 삭제
    }
    
}
