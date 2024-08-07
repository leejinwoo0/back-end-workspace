package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Rest;

@Mapper
public interface RestMapper {
	List<Rest> findAll();
    Rest findById(int restCode);
    void save(Rest rest);
    void update(Rest rest);
    void deleteById(int restCode);
}
