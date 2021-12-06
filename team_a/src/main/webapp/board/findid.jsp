<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>


<%
String ProcessGubun = request.getParameter("ProcessGubun");
System.out.print(ProcessGubun);

if (ProcessGubun.equals("A")) { // find ID
	request.setCharacterEncoding("UTF-8");

	String search_gu = request.getParameter("search_gu");

	String id1;
	String id2;
	String id = "1";

	if (id.equals(search_gu)) {

		String member_name = request.getParameter("txUsername1_txt");

		String member_email = request.getParameter("txEmail");

		// 1.변수선언
		String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211/ORCL";
		String uid = "team2101";
		String upw = "pass2101";

		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "select * from member where member_name = ? AND member_email = ?  ";

		try {
	// 1. 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. conn 생성
	Connection con = DriverManager.getConnection(url, uid, upw);

	// 3. pstmt 생성
	request.setCharacterEncoding("UTF-8");

	PreparedStatement pst = con.prepareStatement(sql);

	pst.setString(1, member_name);
	pst.setString(2, member_email);

	ResultSet rs = pst.executeQuery();

	rs = pstmt.executeQuery();

	String member_pass = rs.getString("member_pass");

	
	// 4. sql문 실행

		} catch (Exception e) {
	e.printStackTrace();
		} finally {
	try {
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
		}
	} else {

		String member_name = request.getParameter("txUsername2_txt");

		String phone1 = request.getParameter("mobile1");
		String phone2 = request.getParameter("mobile2");
		String phone3 = request.getParameter("mobile3");
		String member_phone = phone1 + "-" + phone2 + "-" + phone3;

		// 1.변수선언
		String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211/ORCL";
		String uid = "team2101";
		String upw = "pass2101";

		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "select * from member where  member_name = ? AND member_phone =  ?  ";

		try {
	// 1. 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. conn 생성
	Connection con = DriverManager.getConnection(url, uid, upw);

	// 3. pstmt 생성
	request.setCharacterEncoding("UTF-8");

	PreparedStatement pst = con.prepareStatement(sql);

	pst.setString(1, member_name);

	pst.setString(2, member_phone);

	ResultSet rs = pst.executeQuery();

	rs = pstmt.executeQuery();

	String member_id = rs.getString("member_id");

	out.print(member_id);

	// 4. sql문 실행

		} catch (Exception e) {
	e.printStackTrace();
		} finally {
	try {
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
		}
	}

} else { // find PW

	request.setCharacterEncoding("UTF-8");

	String search_gu = request.getParameter("search_gu");

	String id1;
	String id2;
	String id = "1";

	if (id.equals(search_gu)) {

		String member_id = request.getParameter("txUserID1_pass");

		String member_name = request.getParameter("txUsername1_pass_txt");
		String member_email = request.getParameter("txEmail1_pass");

		// 1.변수선언
		String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211/ORCL";
		String uid = "team2101";
		String upw = "pass2101";

		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "select * from member where member_id = ? AND member_name = ? AND member_phone =  ?  ";

		try {
	// 1. 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. conn 생성
	Connection con = DriverManager.getConnection(url, uid, upw);

	// 3. pstmt 생성
	request.setCharacterEncoding("UTF-8");

	PreparedStatement pst = con.prepareStatement(sql);

	pst.setString(1, member_id);

	pst.setString(2, member_name);

	pst.setString(3, member_email);

	ResultSet rs = pst.executeQuery();

	rs = pstmt.executeQuery();

	String member_pass = rs.getString("member_pass");

	out.print(member_pass);

	// 4. sql문 실행

		} catch (Exception e) {
	e.printStackTrace();
		} finally {
	try {
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
		}
	}

	else {
		String member_id = request.getParameter("txUserID1_pass");

		String member_name = request.getParameter("txUsername1_pass_txt");
		String phone1 = request.getParameter("mobile1");
		String phone2 = request.getParameter("mobile2");
		String phone3 = request.getParameter("mobile3");
		String member_phone = phone1 + "-" + phone2 + "-" + phone3;

		// 1.변수선언
		String url = "jdbc:oracle:thin:@oracle12.cwdeh862c8nr.ap-northeast-2.rds.amazonaws.com:15211/ORCL";
		String uid = "team2101";
		String upw = "pass2101";

		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "select * from member where member_id = ? AND member_name = ? AND member_phone =  ?  ";

		try {
	// 1. 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. conn 생성
	Connection con = DriverManager.getConnection(url, uid, upw);

	// 3. pstmt 생성
	request.setCharacterEncoding("UTF-8");

	PreparedStatement pst = con.prepareStatement(sql);

	pst.setString(1, member_id);

	pst.setString(2, member_name);

	pst.setString(3, member_phone);

	ResultSet rs = pst.executeQuery();

	rs = pstmt.executeQuery();

	String member_pass = rs.getString("member_pass");

	out.print(member_pass);

	// 4. sql문 실행

		} catch (Exception e) {
	e.printStackTrace();
		} finally {
	try {
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
		}
	}
}
%>