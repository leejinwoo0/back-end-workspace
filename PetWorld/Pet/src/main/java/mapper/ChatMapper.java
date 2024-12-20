package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.kh.pet.model.vo.Chat;

@Mapper

public interface ChatMapper {

	
	// 상담 내용 목록 조회
	List<Chat> selectAllChat();
	
	// 상담작성
	void insertChat(Chat chat);
	
	// 관리자만 상담 내용에 답변 댓글가능
	 void updateAnswer(Chat chat);
	 
	// 상담내용 수정
	void updateChat(Chat chat);
	
	// 상담내용 삭제
	void deleteChat(int chatCode, String id);
}
