//package com.kh.project.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.kh.project.model.vo.CompanyAccom;
//import com.kh.project.service.CompanyAccomService;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpSession;
//
//@Controller
//public class CompanyAccomController {
//	
//	@Autowired
//	private CompanyAccomService companyaccomService;
//	
//	
//	@ResponseBody
//	@PostMapping("/ComCheck")
//	public boolean check(String id) {
//		return companyaccomService.check(id);
//	}
//
//	@PostMapping("/ComLogin")
//	public String login(CompanyAccom vo,HttpServletRequest request ) {
//		CompanyAccom result = companyaccomService.login(vo);
//		if(result != null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("vo", result);
//			return "redirect:/";
//		}
//		return "ComLogin";
//	}
//	
//	@GetMapping("/ComLogout")
//	public String logout(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		session.invalidate();
//		return "redirect:/";
//	}
//	
//	@PostMapping("/ComSignUp")
//	public String signUp(CompanyAccom vo, HttpServletRequest request) {
//		try {
//			boolean isRegistered = companyaccomService.signUp(vo);
//			if(isRegistered) {
//				return "redirect:/ComLogin";
//			}else {
//				request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
//				return "ComSignUp";
//			}
//		} catch (Exception e) {
//			request.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다 : " + e.getMessage());
//			return "ComSignUp";
//		}
//	}
//	
//	
//    @GetMapping("/ComLogin")
//    public String login() {
//        return "ComLogin"; 
//    }
//
//   
//    @GetMapping("/ComSignUp")
//    public String signUp() {
//        return "ComSignUp"; 
//    }
//    
//  
//    @GetMapping("/ComUpdate")
//    public String update() {
//    	return "redirect:/";
//    }
//    
//    
//    @GetMapping("/ComMypage")
//    public String mypage() {
//    	return "ComMypage";
//    }
//    
// 
//    @PostMapping("/ComUpdate")
//    public String update(CompanyAccom vo, HttpServletRequest request) {
//        try {
//            HttpSession session = request.getSession();
//            CompanyAccom currentCompanyStadium = (CompanyAccom) session.getAttribute("vo");
//
//            if (currentCompanyStadium != null) {
//                vo.setId(currentCompanyStadium.getId()); 
//                vo.setAccomCode(currentCompanyStadium.getAccomCode()); 
//                boolean isUpdated = companyaccomService.update(vo);
//
//                if (isUpdated) {
//                    session.setAttribute("vo", vo); 
//                    return "redirect:/"; 
//                } else {
//                    request.setAttribute("errorMessage", "회원정보 수정에 실패했습니다. 다시 시도해주세요.");
//                    return "ComUpdate"; 
//                }
//            } else {
//                return "redirect:/ComLogin"; 
//            }
//        } catch (Exception e) {
//            request.setAttribute("errorMessage", "회원정보 수정 중 오류가 발생했습니다: " + e.getMessage());
//            return "ComUpdate"; 
//    }
//}
//}