<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>리뷰</title>
	<jsp:include page="/include/header.jsp"/>
	<meta name="description" content="">
	<meta name="author" content="">
	

	



<section>
<div id="page-member-my-review" class="section-member pc-width">
	<div id="navigation-bar"><script>document.write(navistr)</script></div>
	<h2 class="page-title"><script>document.write(siteTitle)</script></h2>
		<!-- mypage 상단 시작 -->
		
	<div class="member-nav-wrapper">
	<ul class="member-nav"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li>
			<a href="buy_list.jsp">나의 쇼핑현황</a>
			<div class="member-sub-nav">
				<a href="orderlist.jsp">주문내역</a>
				<a href="shoppingbasket.jsp">장바구니</a>
				<a href="wish.jsp">위시리스트</a>
				<a href="mycoupon.jsp">쿠폰</a>
				<a href="mypoint.jsp">예치금</a>
			</div>
		</li>
		<li><a href="member_Whitdrawal.jsp">개인정보수정</a></li>
		<li><a href="baesong_addr.jsp">주소록관리</a></li>
		<li class="hide-mobile active"><a href="qna.jsp">1:1문의</a></li>
		<li><a href="myreview_view.jsp">나의후기</a></li>
		<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
	</ul>
	</div>

	
	
	<div class="contents-wrapper">
		<h2 class="page-sub-title kr">나의 후기</h2>
		<div class="page-content-desc">
			<span class="only-pc">회원님께서 등록하신 리뷰기 목록입니다. 작성하신 리뷰를 확인하세요.</span>
			<span class="only-mobile">등록하신 리뷰기 목록입니다.</span>
			<span class="btn-write btn-up-right"><a href="myreview_input.jsp">리뷰작성</a></span>
		</div>


		<table class="item-table type1">
			<tr>
				<th class="subject">상품정보</th>
				<th class="rate">만족도</th>
				<th class="regdate">작성일</th>
			</tr>
			<!-- repeat item -->

			<tr>
				<td colspan="3" class="empty">작성하신 후기가 없습니다.</td>
			</tr>

			<!--  -->
		</table>

		<!-- PC 페이지 -->
		<div class="pagination1 only-pc">
			<span class='btn-page prev'></span><span class='btn-page next'></span>
		</div>




</div>
<form name="form1" method="post" action="myreview_insert_DB.asp" enctype="multipart/form-data">
<input type="hidden" name="choice">
<input type="hidden" name="id">
<input type="hidden" name="pack_content_id">
<input type="hidden" name="givepoint">
</form>
</section>


	<jsp:include page="/include/footer.jsp"/>
