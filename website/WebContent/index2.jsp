
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    <style>
    	.first
    	{
    		margin-left: 530px;
    		
    	}
    	.img{margin-left: 30px;}
    </style>
<%
	request.setCharacterEncoding("UTF-8");
	String bomb="bomb";
	String num="";
    // DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/basicjsp";
	String uid = "jspid";
	String upw = "jsppass";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;


	try{
		// 드라이버 호출
   		Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		
    	String sql = "select * from number where bomb = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,bomb);
    	rs = pstmt.executeQuery();	

		if(rs.next())
		{
	    num=rs.getString("num"); 
       	 if (num.equals("0"))
        	{
        	 %>    		
        		<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbIvNJF%2FbtrGKpYHrD0%2FcLvN9HZM0l2JFKMKKSOOO1%2Fimg.png" alt="설치완료">
        	<% }
        	else if(num.equals("1"))
        	{
        	%><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FZVn8F%2FbtrGGyJQyDH%2FbwO5roY6GVQYlwy5lkRdZ0%2Fimg.png" alt="멈춤">
        		
        	<% }
        	else if(num.equals("2"))
        	{
        		%><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbwhBvi%2FbtrGIJXZe3X%2FtdwGqBwmASUie9BZHNJLV1%2Fimg.png" alt="폭발">
        	<%}
        	else
        	{%>
        		<h1> 실패 </h1>
        	<%}
		}
    	
		// sql실행
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
 %>
 
 
 
    
    
    
   <form method="POST" action="index2pr.jsp">
  	 <div class="first">
    	<input type=text name=code>
    	<input type=submit value="전송">
    </div>
   </form>
   