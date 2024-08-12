package com.kh.test6;

import java.sql.Connection;

public class Application {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost: 3306/kh", "root", "qwer1234");
			
			PreparedStatement st = conn.prepareStatement(query);
			
			ResultSet rs = st.executeUpdate();
			
			while(rs.nextline()) {
				System.out.println(rs.getString("emp_id") + "/" + rs.getString("emp_name"));
			}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

	}

while(rs) 를 while(rs.nextline())으로 수정
empId, empName 를 emp_id, emp_name으로 수정
비밀번호 1234를 qwer1234로 수정
localhost:3306을 localhost:3306/kh로 수정
라이브러리에 mysql추가
