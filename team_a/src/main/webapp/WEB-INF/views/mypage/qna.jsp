<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
				<h2 class="page-sub-title kr">1:1 문의</h2>
				<div class="page-content-desc">
					<span class="only-pc">제품, 주문, 배송 등에 관한 문의사항을 남겨주세요. 빠르고 친절하게
						안내해 드립니다.</span> <span class="only-mobile">제품, 주문, 배송 등에 관한 문의사항을
						남겨주세요.</span> <span class="btn-write btn-up-right"
						onclick="location.href='write.jsp'" style="cursor: pointer;">작성하기</span>
				</div>

				<div class="ask-list">
					<div class="block-row block-title">
						<div class="block-cell kind">질문유형</div>
						<div class="block-cell subject">제목</div>
						<div class="block-cell regdate">작성일</div>
						<div class="block-cell status">답변유무</div>
						<div class="block-cell delete">문의삭제</div>
					</div>




					<!-- PC 페이지 -->
					<div class="pagination1 only-pc">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>




				</div>
	</section>
	<jsp:include page="../includes/footer.jsp" />