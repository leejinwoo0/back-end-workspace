package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Petsitter;

@Mapper
public interface PetsitterMapper {
	
	List<Petsitter> getPetsitterList();
}
