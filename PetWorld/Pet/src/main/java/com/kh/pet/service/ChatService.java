package com.kh.pet.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import mapper.ChatMapper;
import com.kh.pet.model.vo.Chat;

@Service
public class ChatService {

    @Autowired(required = false)
    private ChatMapper chatMapper;

    // 상담 내용 목록 조회
    public List<Chat> getAllChat() {
        return chatMapper.selectAllChat();
    }

    // 상담 작성
    public void insertChat(Chat chat) {
    	chatMapper.insertChat(chat);
    }

    // 관리자만 상담 내용에 답변 댓글 가능
    public void updateAnswer(Chat chat) {
    	chatMapper.updateAnswer(chat);
    }

    // 상담 내용 수정
    public void updateChat(Chat chat) {
    	chatMapper.updateChat(chat);
    }

    // 상담 내용 삭제
    public void deleteChat(int chatCode, String id) {
    	chatMapper.deleteChat(chatCode, id);
    }
}
