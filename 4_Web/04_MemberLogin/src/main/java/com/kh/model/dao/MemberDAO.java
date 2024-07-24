package com.kh.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kh.model.vo.Member;

public class MemberDAO {
	
	public void DAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection connect()throws SQLException{
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/member", "root", "qwer1234");
	}
	
	public void close(PreparedStatement ps, Connection conn) throws SQLException{
		ps.close();
		conn.close();
	}
	public void close(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException{
		rs.close();
		close(ps, conn);
	}
    // 위에까지는 공통적으로 가지고올것들
	// DAO 개발할 때 중요한건
	// 매개변수(파라미터) 뭘 가지고 와야 되는지, 리턴타입 결과 출력이 어떤게 필요한지 
	
	// 회원가입 기능
	public void register(Member member) throws SQLException{
		
		Connection conn = connect();
		
		String query = "INSERT INTO member VALUES(?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		
		ps.setString(1, member.getId());
		ps.setString(2, member.getPassword());
		ps.setString(3, member.getName());
		// 위에 보이드 레지스터를 멤버로 받아서 멤버 겟으로 받음
		ps.executeUpdate();
		
		close(ps, conn);
		
	public void	
	}
}
