package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Petsitter;

@Mapper
public interface PetsitterMapper {
	
	
	// 돌봄서비스사 목록 조회
	List<Petsitter> selectAllPetsitter();
	
	// 돌봄서비스사 목록 수정
	void updatePetsitter(Petsitter petsitter);
	
	// 돌봄 서비스사 목록 삭제
	void deletePetsitter(int petsitterCode);
	
	// 돌봄 서비스사 목록 추가
	void insertPetsitter(Petsitter petsitter);
}
