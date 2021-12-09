<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="includes/header.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Board List Page
				<button id='regBtn' type="button" class="btn btn-xs pull-right">Register
					New Board</button>
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

<h1>메인 페이지 </h1>
만들거 
1. 공지사항(어드민 게시판)
2. 결제 확인(결제 확인 , 배송 등)
3. 상품 문의 답글
4. 1대1 문의 답글 
</body>
</html>

 <%@include file="includes/footer.jsp"%> 