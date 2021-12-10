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
<!-- 관리자 공지 리스트 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading go_page">
				관리자 공지사항
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
			
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<c:forEach items="${admin_db}" var="board">
						<tr>
							<td><c:out value="${board.bd_idx}" /></td>
							<td><a class='move' href='/admin/board/get?bd=<c:out value="${board.bd_idx}"/>'><c:out value="${board.bd_title}" />
							<b>[<c:out value="${board.bd_comment_cnt}" />]</b></a> 
							</td>
							<td><c:out value="${board.member_id}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.bd_date}" /></td>
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