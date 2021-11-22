<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>::몬트라움:: 프리미엄 펫용품 전문쇼핑몰</title>
	<jsp:include page="includes/header.jsp"/>
	<body>

	
	<style>
#popup-member-join-check { max-width: 540px; padding-top:50px;padding-bottom:30px;}
#popup-member-join-check .ws-join {text-align:center;border-bottom:1px solid #000;padding-bottom: 34px;margin-bottom: 26px; margin-top: 26px;}
#popup-member-join-check .ws-join .title {font-size:26px;}
#popup-member-join-check .ws-join .desc {font-size:13px; color:#555;}
#popup-member-join-check .ws-join .btn-ws-join {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #000;color: #fff;padding: 16px 0px;width: 289px;}



</style>




</head>
<body>

<script language="javascript" src="../resources/js/top.js"></script>
<script language="javascript" src="../resources/js/_vir0001/code.js" charset="euc-kr"></script>

<!--Content영역시작-->
		<section>
			<div id="page-member-order-list" class="section-member pc-width">
				<div id="navigation-bar"><script>document.write(navistr)</script></div>
				<h2 class="page-title"><script>document.write(siteTitle)</script></h2>
				
	<div class="member-nav-wrapper">
	<ul class="member-nav open-sub-menu"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li class="active">
			<a href="orderlist.jsp">나의 쇼핑현황</a>
			<div class="member-sub-nav">
				<a href="orderlist.jsp" class="active">주문내역</a>
				<a href="shoppingbasket.jsp">장바구니</a>
				<a href="wish.jsp">위시리스트</a>
				<a href="mycoupon.jsp">쿠폰</a>
		
			</div>
		</li>
		<li><a href="member_Modify.jsp">개인정보수정</a></li>
		<li class="hide-mobile"><a href="qna.jsp">1:1문의</a></li>
		<li><a href="myreview_view.jsp">나의후기</a></li>
		<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
	</ul>
	</div>

	
	<div class="top-summary">
		<p class="welcome-member"> name 고객님, 환영합니다.</p>
		<div class="top-infobox2 my-membership">
			<div class="level-box">
        <div class="level-blt"><img src="../resources/images/blt2_membership_1.png"/></div>
        <div class="level-info">
          <div class="title-name only-pc">11월 회원등급</div>
          <div class="title-name only-mobile">11월<br/>회원등급</div>
          <div class="level-name only-pc" style="width:200px;">신규 펫팸<br/><span class="membership-view" style="padding: 4px 7px;background: #000;"><a href="/about/members.asp" style="color: #fff;font-weight: bold;text-decoration: none;">회원혜택 확인 및 쿠폰다운로드</a></span></div>
          <div class="level-name only-mobile">신규 펫팸<div class="level-date only-mobile">21.4.26 ~ 21.10.25</div>
          <br/><span class="membership-view" style="padding: 4px 7px;background: #000;"><a href="/about/members.asp" style="color: #fff;font-weight: bold;">회원혜택 확인 및 쿠폰다운로드</a></span></div>
        </div>
        <div class="level-date only-pc">＊등급산정기간 - 2021.4.26 ~ 2021.10.25</div>
      </div>
      <div class="level-box2">
        <div class="order-buy-info only-pc"><span class="highlight">최근 6개월간 주문금액 <span style='color:#c00000;font-weight:bold;'>0</span>원</span></div>
        <div class="order-buy-info only-mobile"><span class="highlight">최근 6개월간 주문금액 <span style='color:#c00000;font-weight:bold;'>0</span>원</span></div>
      
        <div class="amount-info only-mobile"><span class="highlight">[<span style='color:#ae8346;font-weight:bold;'>일반 펫팸</span>]까지 <span style='color:#c00000;font-weight:bold;'>1</span>회 구매 남았습니다.</span></div>
        <div class="diff-info only-pc">*등급산정 기준에 따른 예상 금액으로 총주문금액과 다를 수 있습니다.</div>
        <div class="diff-info only-mobile">등급산정 기준에 따른 예상금액으로 총주문금액과 다를 수 있습니다.</div>
      </div>
		</div>

		<div class="top-infobox3" style="text-align: center">
			<div class="my-infobox my-balance2 my-info">
			  <img class="only-pc" src="../resources/images/balance.png" style="float: left;margin-top: -11px;">
			  <img class="only-mobile" src="../resources/images/balance.png" style="float: left;width: 35px;">
				<div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">예치금<br/><a href="/common/process/mypoint.asp">0</a> 원</div>
				<div class="name only-mobile" style="float: left;">예치금<br/><a href="/common/process/mypoint.asp">0</a> 원</div>
			</div>

      <div class="my-infobox my-coupon2 my-info">
        <img class="only-pc" src="../resources/images/coupon.png" style="float: left;">
        <img class="only-mobile" src="../resources/images/coupon.png" style="float: left;width: 35px;">
        <div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">쿠폰<br/><a href="/common/process/mycoupon.asp">0</a> 장</div>
        <div class="name only-mobile" style="float: left;">쿠폰<br/><a href="/common/process/mycoupon.asp">0</a> 장</div>
      </div>

			<div class="my-infobox my-wish2 my-info">
			  <img class="only-pc" src="../resources/images/wish.png" style="float: left;">
			  <img class="only-mobile" src="../resources/images/wish.png" style="float: left;width: 35px;">
				<div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">위시리스트<br/><a href="/common/process/wish_list.asp">0</a> 개</div>
				<div class="name only-mobile" style="float: left;">위시리스트<br/><a href="/common/process/wish_list.asp">0</a> 개</div>
			</div>

			<div class="my-infobox my-cart2 my-info">
			  <img class="only-pc" src="../resources/images/cart.png" style="float: left;margin-top: -5px;">
			  <img class="only-mobile" src="../resources/images/cart.png" style="float: left;width: 35px;">
        <div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">장바구니<br/><a href="/common/process/order_list.asp?iniCategory=0">0</a> 개</div>
        <div class="name only-mobile" style="float: left;">장바구니<br/><a href="/common/process/order_list.asp?iniCategory=0">0</a> 개</div>
      </div>
		</div>

	</div>
	


				<div class="contents-wrapper item-list" id="item-list">
					<h3 class="sub-title">주문내역</h3>
					<span class="only-pc">고객님께서 주문하신 정보와 제품의 배송여부를 조회하실 수 있습니다.</span>
          <span class="only-mobile">주문하신 정보와 제품의 배송여부를 조회</span>
          <div class="page-content-desc only-pc">
            <span class="btn-write btn-up-right" id="searchDate3" name="searchDate3" onclick="location.href='buy_list.asp?searchDate=3';" style="right:215px;">최근3개월</span>
            <span class="btn-write btn-up-right" id="searchDate6" name="searchDate6" onclick="location.href='buy_list.asp?searchDate=6';" style="right:100px;">최근6개월</span>
            <span class="btn-write btn-up-right" id="searchDate12" name="searchDate12" onclick="location.href='buy_list.asp?searchDate=12';">최근1년</span>
          </div>
          <div class="page-content-desc only-mobile">
            <span class="btn-write btn-up-right" id="searchDate3" name="searchDate3" onclick="location.href='buy_list.asp?searchDate=3';" style="right:152px;top:-60px;">최근3개월</span>
            <span class="btn-write btn-up-right" id="searchDate6" name="searchDate6" onclick="location.href='buy_list.asp?searchDate=6';" style="right:70px;top:-60px;">최근6개월</span>
            <span class="btn-write btn-up-right" id="searchDate12" name="searchDate12" onclick="location.href='buy_list.asp?searchDate=12';" style="top:-60px;">최근1년</span>
          </div>
			
					<div class="only-pc">
					<table class="item-table type1">
						<tr>
							<th class="item-info">주문일시</th>
							<th class="order-no">주문번호</th>
							<th class="count">결제방법</th>
							<th class="ship-status">주문금액</th>
							<th class="action">주문상태</th>
						</tr>
						<!--내용이 없을때 사용해주세요
						<tr>
							<td colspan="5">주문하신 내역이 없습니다.</td>
						</tr>
						-->

			<tr>
				<td colspan="5" class="empty">주문하신 내역이 없습니다.</td>
			</tr>

					</table>
					</div>

					<div class="only-mobile">
					<table class="item-table type1">

			<tr>
				<td colspan="2" class="empty">주문하신 내역이 없습니다.</td>
			</tr>

					</table>
					</div>
					<!-- PC 페이지 -->
					<div class="pagination1 only-pc">
					<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>

					<!-- 모바일 페이지 -->
					<div class="pagination2 only-mobile">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>


					<div class="notice-wrapper clearfix">
						<h3>확인해주세요</h3>
						<ul class="notice-list">
							<li>최근 3개월 동안의 주문현황 조회가 가능합니다.</li>
							<li>주문번호를 클릭하시면 주문 상세내역을 확인하실 수 있습니다.</li>
						</ul>
					</div>

				</div>
			</div>
		</section>
<!--Content영역종료-->
<div style="display:none;">
	<!--풋터영역시작-->
</div>
	<jsp:include page="includes/footer.jsp"/>
