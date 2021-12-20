<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 찾기</title>
<!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	 $(".click_").on("click",function(e){
    	    	console.log($(this).data("od_idx"));
    	   	 $(opener.document).find(".od_idx").val($(this).data("od_idx"));
    	    	window.close();
    	    });
    	
    });
   
    </script>
</head>
<body>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>주문번호</th>
			<th>주문 내용</th>
			<th>금액</th>
			<th>주문일자</th>
			<th>상태</th>
		</tr>
	</thead>

	<c:forEach items="${list}" var="order">
		<tr class="click_" data-od_idx='<c:out value="${order.od_idx}" />'>
			<td><c:out value="${order.od_idx}" /></td>
			<td><c:out value="${order.od_details}" /></td>
			<td><c:out value="${order.od_amount}" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${order.od_date}" /></td>
			<td><c:out value="${order.od_status}" /></td>
		</tr>
	</c:forEach>
	
	
</table>
</body>
</html>