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
<!-- 상품 문의 답글 리스트 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading go_page">
				상품 문의 답글 목록
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
			
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>작성자</th>
							<th>내용</th>
							<th>날짜</th>
							<th>답장</th>
							<th>상태</th>
						</tr>
					</thead>
					<c:forEach items="${list}" var="prdI">
						<tr>
							<td><c:out value="${prdI.pi_idx}" /></td>
							<td><c:out value="${prdI.member_id}" /></td>
							<td><c:out value="${prdI.pi_contents}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${prdI.pi_write_day}" /></td>
							<c:if test="${not empty prdI.pi_reply}" >
								<td>Y</td>
							</c:if>
							<c:if test="${empty prdI.pi_reply}" >
								<td>N</td>
							</c:if>
							<c:if test="${prdI.pi_del eq 'Y' }" >
								<td>삭제</td>
							</c:if>
							<c:if test="${prdI.pi_hidden eq 'N' && prdI.pi_del eq 'N' }" >
								<td>공개</td>
							</c:if>
							<c:if test="${prdI.pi_hidden eq 'Y' && prdI.pi_del eq 'N' }" >
								<td>비공개</td>
							</c:if>
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