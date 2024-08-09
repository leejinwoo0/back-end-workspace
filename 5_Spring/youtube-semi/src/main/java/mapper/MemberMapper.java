package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.semi.youtube.mode.vo.Member;

@Mapper
public interface MemberMapper {
	
	Member check (String id);

}
