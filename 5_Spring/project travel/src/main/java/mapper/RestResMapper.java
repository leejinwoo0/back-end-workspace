package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.RestRes;


@Mapper
public interface RestResMapper {
	
	void register(RestRes vo);
	RestRes login(String id);
}
