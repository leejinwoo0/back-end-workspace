package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Member;
import com.kh.pet.service.MemberService;

@Mapper
public interface MemberMapper {
	
	Member check(String id);
	Member login(Member vo);
	int signup(Member vo);
	int update(Member vo);
	List<Member> memberList(String id);

}
