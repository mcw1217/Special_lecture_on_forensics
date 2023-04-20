<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%@  page import = "java.sql.*"%>
   <h1> JDBC 드라이버 테스트</h1>
   <%
   		Connection conn = null;
   		try{
   			String jdbcUr1 = "jdbc:mysql://localhost:3306/basicjsp";
   			String dbId = "jspid";
   			String dbPass = "jsppass";
   			Class.forName("com.mysql.jdbc.Driver");
   			conn = DriverManager.getConnection(jdbcUr1, dbId, dbPass);
   			out.println("연결되었습니다!");
   		}
   		catch(Exception e){
   			out.println("에러: "+ e.getMessage());
   		}
   %>