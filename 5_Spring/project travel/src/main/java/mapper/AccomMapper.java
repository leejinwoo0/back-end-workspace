package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.Accom;

@Mapper
public interface AccomMapper {
List<Accom> findAll();
Accom findById(int AccomCode);
void save(Accom accom);
void update(Accom accom);
void deleteById(int AccomCode);
}
