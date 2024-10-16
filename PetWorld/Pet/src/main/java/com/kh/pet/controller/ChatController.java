package com.kh.pet.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.kh.pet.model.vo.Chat;
import com.kh.pet.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {

    @Autowired
    private ChatService chatService;

    // 상담 목록 조회
    @GetMapping("/list")
    public String getAllChat(Model model) {
        List<Chat> chatList = chatService.getAllChat();
        model.addAttribute("chatList", chatList);
        return "chat/list"; // "chat/list.jsp" 파일로 이동
    }

    // 상담 작성 페이지로 이동
    @GetMapping("/new")
    public String newChatForm() {
        return "chat/new"; // 상담 작성 폼 페이지
    }

    // 상담 작성 처리
    @PostMapping("/insert")
    public String insertChat(Chat chat) {
        chatService.insertChat(chat);
        return "redirect:/chat/list"; // 작성 후 상담 목록으로 리다이렉트
    }

    // 상담 답변 수정 (관리자만 가능)
    @PostMapping("/update/answer")
    public String updateAnswer(@RequestParam("chatCode") int chatCode, @RequestParam("answer") String answer) {
        Chat chat = new Chat();
        chat.setChatCode(chatCode);
        chat.setAnswer(answer);
        chatService.updateAnswer(chat);
        return "redirect:/chat/list"; // 답변 수정 후 상담 목록으로 리다이렉트
    }

    // 상담 내용 수정 페이지로 이동
    @GetMapping("/edit/{chatCode}")
    public String editChatForm(@PathVariable("chatCode") int chatCode, Model model) {
        // 기존 상담 정보를 가져와서 수정 폼에 넣기
        List<Chat> chatList = chatService.getAllChat();
        model.addAttribute("chat", chatList.stream().filter(c -> c.getChatCode() == chatCode).findFirst().orElse(null));
        return "chat/edit"; // 상담 수정 폼 페이지
    }

    // 상담 내용 수정 처리
    @PostMapping("/update")
    public String updateChat(Chat chat) {
        chatService.updateChat(chat);
        return "redirect:/chat/list"; // 수정 후 상담 목록으로 리다이렉트
    }

    // 상담 삭제 처리
    @PostMapping("/delete")
    public String deleteChat(@RequestParam("chatCode") int chatCode, @RequestParam("id") String id) {
        chatService.deleteChat(chatCode, id);
        return "redirect:/chat/list"; // 삭제 후 상담 목록으로 리다이렉트
    }
}
