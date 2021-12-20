<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>qna</title>
<jsp:include page="../includes/header.jsp" />
<body>


	<script language="javascript">
		httpUrl = "list.jsp"
		httpUrl2 = "www.montraum.com"

		function loginCheck() {
			location.href = "/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fqanda%2Flist%2Easp"
		}
	</script>
	<script type="text/javascript" src="../resources/js/top.js"></script>

	<!--Content영역시작-->
	<section class="section_style">
		<jsp:include page="myPageNavigation.jsp"/>
		<script>$(".member-nav").addClass("open-sub-menu");</script>
			
			<!-- mypage 상단 끝 -->
			<div class="contents-wrapper">
				<div class="page-content-desc">
				
				</div>

				<div class="ask-list">
				
				
				<table class="item-table type1">
						<tr>
							<th class="item-info"style="text-align: center;">번호</th>
							<th class="order-no" style="width: 70%;text-align: center;">제목</th>
							<th class="ship-status"style="text-align: center;">작성일</th>
							<th class="action"style="text-align: center;">답장</th>
						</tr>
						<!--내용이 없을때 사용해주세요
						<tr>
							<td colspan="5">주문하신 내역이 없습니다.</td>
						</tr>
						-->
					<c:forEach items="${list}" var="oi">
						<tr>
							<td style="text-align: center;"><c:out value="${oi.oi_idx}"/></td>
							<td style="text-align: center;"><c:out value="${oi.oi_title}"/></td>
							<td style="text-align: center;"><fmt:formatDate pattern="yyyy-MM-dd" value="${oi.oi_date}" /></td>
							<td style="text-align: center;">
							<c:if test="${not empty oi.oi_reply}">[완료]</c:if>
							<c:if test="${empty oi.oi_reply }">[미완료]</c:if>
							</td>
						</tr>
					</c:forEach>
					</table>
					<div><button class="btn btn-primary" onclick="location.href='/mypage/qna/write'">작성하기 </button> </div>
					
					<span class="only-pc">제품, 주문, 배송 등에 관한 문의사항을 남겨주세요. 빠르고 친절하게안내해 드립니다.</span> 
					<span class="only-mobile">제품, 주문, 배송 등에 관한 문의사항을남겨주세요.</span> 
					</div>

					<div class="only-mobile">
					



					<!-- PC 페이지 -->
					<div class="pagination1 only-pc">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>




			</div>
		</div>
	</section>
	<jsp:include page="../includes/footer.jsp" />