package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Stadium;

@Mapper
public interface StadiumMapper {
	List<Stadium> findAll();
    Stadium findById(int stadiumCode);
    void save(Stadium stadium);
    void update(Stadium stadium);
    void deleteById(int stadiumCode);
}
