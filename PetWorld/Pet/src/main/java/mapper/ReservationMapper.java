package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Reservation;

@Mapper
public interface ReservationMapper {
	
	
	// 예약 목록 조회
	List<Reservation> getReservationList();

	Reservation getReservationById(String id);
	
    // 새로운 예약 추가
    void insertReservation(Reservation reservation);
    
    // 선택항목 예약 추가
    void addReservation(Reservation reservation);
    
    // 예약 저장
    void saveReservation(Reservation reservation);
    
    // 예약 정보 수정
    void updateReservation(Reservation reservation);

    // 예약 삭제 (예약 아이디로 삭제)
    void deleteReservation(String id);
    
}

