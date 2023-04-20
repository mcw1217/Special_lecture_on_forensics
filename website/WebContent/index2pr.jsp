<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
	request.setCharacterEncoding("UTF-8");
	String bomb="bomb";
	String count="";
	String code = request.getParameter("code");
    // DB연결에 필요한 변수 선언
	String url = "jdbc:mysql://localhost:3306/basicjsp";
	String uid = "jspid";
	String upw = "jsppass";
	String num="";
	
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
			num=rs.getString("num") ;
			count=rs.getString("count");
			if(code.equals("stopbomb"))
			{
				if(count.equals("0"))
				{
				 num = "1";
				}
				
			}
			else if(code.equals("startproject"))
			{
				 num = "2";
				 count="1";
			}
			else if(code.equals("clearproject"))
			{
				 num = "0";
				 count="0";
					sql = "update number set count=? where bomb=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, count);
					pstmt.setString(2, bomb);
			    	pstmt.executeUpdate();
			}
	    }
	
		sql = "update number set num=? where bomb=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		pstmt.setString(2, bomb);
    	pstmt.executeUpdate();
    	if(count.equals("1"))
    	{
    		sql = "update number set count=? where bomb=?";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, count);
    		pstmt.setString(2, bomb);
        	pstmt.executeUpdate();
    	}
     	response.sendRedirect("index2.jsp");
	    
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