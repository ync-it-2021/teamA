<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%


	request.setCharacterEncoding("UTF-8");
	
	String member_id = request.getParameter("id");
	String member_pass = request.getParameter("pwd1");
	String member_name = request.getParameter("name");
	String year = request.getParameter("birth1");
	String month = request.getParameter("birth2");
	String day = request.getParameter("birth3");
	String member_birthday = year+ "/"+month+"/" + day;
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
	
	String member_email = email +"@" +  email2; 
	String phone1 = request.getParameter("mobile1");
	String phone2 = request.getParameter("mobile2");
	String phone3 = request.getParameter("mobile3");
	String member_phone = phone1+"-"+ phone2 + "-" + phone3;
	
	String address = request.getParameter("address") ;
	String address2 = request.getParameter("address2") ;
	String address3 = request.getParameter("address3") ;
	String member_address = address + address2 + address3;
	// 1.변수선언
	String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211/ORCL";
	String uid = "team2101";
	String upw = "pass2101";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into member (member_name,member_id, member_pass, member_email, member_phone, member_birthday, member_address ) values(?, ?, ?, ?, ?, ?, ?)";
	
	try{
		// 1. 드라이버 로드() 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// 3. pstmt 생성
		request.setCharacterEncoding("UTF-8");
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(2, member_id);
		pstmt.setString(3, member_pass);
		pstmt.setString(1, member_name);
		pstmt.setString(6, member_birthday);
		pstmt.setString(4, member_email);
		pstmt.setString(5, member_phone);		
		pstmt.setString(7, member_address);
		
		out.println(member_id);
		out.println(member_pass);
		out.println(member_name);
		out.println(member_birthday);
		out.println(member_email);
		out.println(member_phone);
		out.println(member_address);
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			response.sendRedirect("login.jsp");
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>