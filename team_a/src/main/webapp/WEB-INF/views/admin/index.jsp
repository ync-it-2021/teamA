<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="includes/header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function(){

    $("#board_box").load("main/board_list");
    $("#pay_box").load("main/pay_list");
    $("#prdInquiry_box").load("main/prdInquiry_list");	
    $("#oneInquiry_box").load("main/oneInquiry_list");

});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<h1>메인 페이지 </h1>
<div id="board_box"></div>
<div id="pay_box"></div>
<div id="prdInquiry_box"></div>
<div id="oneInquiry_box"></div>







</body>
</html>

 <%@include file="includes/footer.jsp"%> 