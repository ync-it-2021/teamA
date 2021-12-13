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
<!-- 1대1 문의 답글 리스트 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading go_page" >
				1대1 문의 답변 리스트
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
			
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th >번호</th>
							<th >작성자</th>
							<th >제목</th>
							<th >작성일</th>
							<th >답장</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="oi">
						<tr>
							<td><c:out value="${oi.oi_idx}"/></td>
							<td><a class='move' href='<c:out value="${oi.oi_idx}"/>'><c:out value="${oi.member_id}"/></a></td>
							<td><c:out value="${oi.oi_title}"/></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${oi.oi_date}" /></td>
							<td>
							<c:if test="${not empty oi.oi_reply}">[완료]</c:if>
							<c:if test="${empty oi.oi_reply }">[미완료]</c:if>
							</td>
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