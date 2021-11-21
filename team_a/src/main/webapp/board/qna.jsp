<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>qna</title>
<jsp:include page="/include/header.jsp" />
<body>

<script language="javascript">
	httpUrl = "/common/process/qanda/list.asp"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fqanda%2Flist%2Easp"
	}

</script>
<script language="javascript" src="../resources/js/top.js"></script>


<script language="javascript" src="../resources/js/_vir0001/code.js" charset="utf-8"></script>

	<!--Content영역시작-->
	<section>
		<div id="page-member-ask" class="section-member pc-width">
			<div id="navigation-bar">
				<script>
					document.write(navistr)
				</script>
			</div>
			<h2 class="page-title">
				<script>
					document.write(siteTitle)
				</script>
			</h2>
			<!-- mypage 상단 시작 -->
			
			<div class="member-nav-wrapper">
				<ul class="member-nav">
					<!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
					<li class="active">
						<div class="member-sub-nav">
							<a href="orderlist.jsp">주문내역</a>
							<a href="shoppingbasket.jsp">장바구니</a>
							<a href="wish.jsp" class="active">위시리스트</a> 
							<a href="mycoupon.jsp">쿠폰</a>
						</div>
					</li>
					<li><a href="member_Modify.jsp">개인정보수정</a></li>
					<li class="hide-mobile active"><a href="qna.jsp">1:1문의</a></li>
					<li><a href="myreview_view.jsp">나의후기</a></li>
					<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
				</ul>
			</div>



			<div class="member-nav-wrapper">
				<ul class="member-nav open-sub-menu">
					<!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
			</div>



			<!-- mypage 상단 끝 -->
			<div class="contents-wrapper">
				<h2 class="page-sub-title kr">1:1 문의</h2>
				<div class="page-content-desc">
					<span class="only-pc">제품, 주문, 배송 등에 관한 문의사항을 남겨주세요. 빠르고 친절하게
						안내해 드립니다.</span> <span class="only-mobile">제품, 주문, 배송 등에 관한 문의사항을
						남겨주세요.</span> <span class="btn-write btn-up-right"
						onclick="location.href='qnawrite.jsp'" style="cursor: pointer;">작성하기</span>
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
	<jsp:include page="/include/footer.jsp" />