package com.kh.pet.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pet.model.vo.Reservation;

import mapper.ReservationMapper;


@Service
public class ReservationService {

    @Autowired
    private ReservationMapper reservationMapper;

    // 새로운 예약 추가
    public void addReservation(Reservation reservation) {
        reservationMapper.insertReservation(reservation);
    }

    // 예약 목록 조회
    public List<Reservation> getReservationList() {
        return reservationMapper.selectAllReservations();
    }

    // 특정 회원의 예약 목록 조회 (아이디로)
    public List<Reservation> getReservationListById(String id) { // 아이디를 매개변수로 사용
        return reservationMapper.selectReservationsById(id); // 매퍼 메서드 호출 시 id 사용
    }

    // 특정 예약 조회
    public Reservation getReservationListByReservationId(String reservationId) {
        return reservationMapper.selectReservationById(reservationId);
    }

    // 예약 정보 수정
    public void updateReservation(String id) {
        reservationMapper.updateReservation(id);
    }

    // 예약 삭제
    public void deleteReservation(String id) {
        reservationMapper.deleteReservation(id);
    }
}
