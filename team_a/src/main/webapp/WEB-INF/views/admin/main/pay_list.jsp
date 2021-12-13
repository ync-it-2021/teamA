<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- 2. 결제 확인(결제 확인 , 배송 등) 리스트 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading  go_page">
				결제확인 목록
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
			
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>주문번호</th>
							<th>구매자</th>
							<th>결제방법</th>
							<th>결제일</th>
							<th>상태</th>
						</tr>
					</thead>
						<c:forEach items="${list}" var="pay">
							<tr>
								<td><a class='payMove' href='<c:out value="${pay.pay_idx}"/>'><c:out value="${pay.pay_idx}" /></a></td>
								<td><a class='orderMove' href='<c:out value="${pay.od_idx}"/>'><c:out value="${pay.od_idx}" /></a></td>
								<td><c:out value="${pay.pay_buyer}" /></td>
								<td><c:out value="${pay.pay_option}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${pay.pay_date}" /></td>
								<td><c:out value="${pay.pay_state}" /></td>
							</tr>
						</c:forEach>
					
				</table>
			</div>
		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->
</body>
</html>