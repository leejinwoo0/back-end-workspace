package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.semi.youtube.mode.vo.Subscribe;

@Mapper
public interface SubscribeMapper {
	Subscribe check (Subscribe vo);
	int count(int code);
	void subs(Subscribe vo);
	void cancel(int code);
	

}
