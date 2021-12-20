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
    	if(${empty list}){
    		alert("찾는 내용의 결과가 없습니다.");
    		window.close();
    	}
    	
    	 $(".click_").on("click",function(e){
    	   	 if($(opener.document).find(".prd_idx")){
    	 		$(opener.document).find(".prd_idx").val($(this).data("prd_idx"));
    			$(opener.document).find(".prd_name").val($(this).data("name"));
    			$(opener.document).find(".od_idx").val($(this).data("od_idx")); 
    			window.close();
    	   	 }else{
    	   		$(opener.document).find(".od_idx").val($(this).data("od_idx"));
    	    	window.close();
    	   	 }
    	    });
    });
   
    </script>
</head>
<body>
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th>상품명</th>
			<th>주문 내용</th>
			<th>금액</th>
			<th>주문일자</th>
			<th>상태</th>
		</tr>
	</thead>

	<c:forEach items="${list}" var="order">
		<tr class="click_" data-od_idx='<c:out value="${order.od_idx}" />' data-prd_idx='<c:out value="${order.prd_idx}"/>'>
			<td id="name">
			<script>
			$.ajax({
   			 	url:"/product/get/name",
  				 data:{prd:<c:out value="${order.prd_idx}"/>},
  				 type:"get",
  			 	success:function(data){
  			 		$(".click_").attr("data-name",data);
  			 	$("#name").html(data);
  			 	},
	   			 error:function(err){ 
	   				 alert("에러");
	   			 }
  			 });
			</script>
			</td>
			<td><c:out value="${order.od_details}" /></td>
			<td><c:out value="${order.od_amount}" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${order.od_date}" /></td>
			<td><c:out value="${order.od_status}" /></td>
		</tr>
	</c:forEach>
	
	
</table>
</body>
</html>