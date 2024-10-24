package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Member;

@Mapper
public interface MemberMapper {

    // 회원 목록 조회
    List<Member> getMemberList();
    
    

    // 아이디 중복 체크
    Member checkId(String id);

    // 회원가입
    int signUp(Member member);

    // 회원정보 수정
    int updateMember(Member member);

    // 회원탈퇴
    int deleteMember(String id);
}
