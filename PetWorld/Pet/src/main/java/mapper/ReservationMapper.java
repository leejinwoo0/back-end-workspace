package mapper;


import java.util.List;
import com.kh.pet.model.vo.Reservation;

public interface ReservationMapper {
    void insertReservation(Reservation reservation); // 예약 추가
    List<Reservation> selectAllReservations(); // 모든 예약 목록 조회
    List<Reservation> selectReservationsById(String id); // 특정 회원 아이디로 예약 목록 조회
    Reservation selectReservationById(String reservationId); // 특정 예약 조회
    void updateReservation(String id); // 예약 정보 수정
    void deleteReservation(String id); // 예약 삭제
}
