package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Petsitter;

@Mapper
public interface PetsitterMapper {
	
	//펫시터 목록 조회
	List<Petsitter> getPetsitterList();

}
