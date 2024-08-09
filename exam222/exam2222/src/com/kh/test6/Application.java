package com.kh.test6;

import java.sql.Connection;

public class Application {

	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost: 3306/kh", "root", "qwer1234");
			
			PreparedStatement st = conn.prepareStatement(query employee);
			
			ResultSet rs = st.executeUpdate();
			
			while(rs.nextline()) {
				System.out.println(rs.getString("emp_id") + "/" + rs.getString("emp_name"));
			}
			
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

	}


