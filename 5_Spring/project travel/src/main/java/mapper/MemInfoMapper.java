package mapper;

import org.apache.ibatis.annotations.Mapper;


import com.kh.project.model.vo.MemInfo;

@Mapper
public interface MemInfoMapper {
	void register(MemInfo member);
	MemInfo login(MemInfo member);
	void update(MemInfo member);
	
}
