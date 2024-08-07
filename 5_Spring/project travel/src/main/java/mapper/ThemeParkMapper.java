package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.ThemePark;

@Mapper
public interface ThemeParkMapper {
	List<ThemePark> findAll();
    ThemePark findById(int themeCode);
    void save(ThemePark themePark);
    void update(ThemePark themePark);
    void deleteById(int themeCode);
}
