package com.kh.controller.component;

import java.sql.SQLException;

import com.kh.controller.Controller;
import com.kh.controller.ModelAndView;
import com.kh.model.dao.MemberDAO;
import com.kh.model.vo.Member;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 * 컴포넌트
 * - 인터페이스 기반으로 작성된 재사용성이 강한 자바 클래스
 * */

public class RegisterController implements Controller{

	@Override
	public ModelAndView handle(HttpServletRequest request, HttpServletResponse response) throws SQLException {
			String id = request.getParameter("id");
			String pwd = request.getParameter("password");
			String name = request.getParameter("name");
			Member member = new Member(id,pwd,name);
			
            MemberDAO dao = new MemberDAO();
			dao.register(member);
			
		    return new ModelAndView("index.jsp", true);
	}

}
