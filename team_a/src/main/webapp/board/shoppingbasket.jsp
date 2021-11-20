<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>장바구니</title>
</head>
<body>

<!-- <script language="javascript">
	httpUrl = "login.html"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="login6d1f.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Flogin%2Easp"
	}
</script> -->
<script>

httpUrl = "/common/process/order_list.asp?iniCategory=0"
httpUrl2 = "www.montraum.com"

function loginCheck() {
	location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Forder%5Flist%2Easp%3FiniCategory%3D0"
}

</script>
<jsp:include page="/include/header.jsp"/>
<script type="text/javascript" src="../resources/js/top.js"></script>
<!--Content영역시작-->
		<section>
				<div id="page-order-cart" class="pc-width">
					<div id="navigation-bar"><script>document.write(navistr)</script></div>
					<h2 class="page-title"><script>document.write(siteTitle)</script></h2>
									

					<!-- ms 구매 유도 배너// 추후 저단가 제품 구매 유도 배너로 변경 예정 또는 진행X -->
					<div class="ms-banner"><a href="eventview76d1.html?idx=282">
					<img src="../resources/images/order_bn.jpg" border="0" class="only-pc">
					</a></div>
					<!-- //ms 구매 유도 배너 -->

				<form name="form1" method="post" action="http://www.montraum.com/common/process/shopview_insert_DB.asp">
					<div class="item-list">
						<h2>장바구니</h2>
						<div class="content-desc">
							<div class="only-pc">
								장바구니에 담긴 상품은 1개월 이후 자동삭제 되오니 오래 보관하시려면 로그인 후 위시리스트에 등록하시기 바랍니다.
							</div>
							<div class="only-mobile">
								1개월 이후 자동삭제 되오니 위시리스트에 등록하세요.
							
							<br>장바구니에 담긴 상품이 없습니다.
							
							</div>
							
						</div>
						<table class="item-table">
							<tr>
								<th class="checkbox"><input type="checkbox" class="checkbox-type1" onclick="for(var i=0;i<this.form.order_id.length;i++)this.form.order_id[i].checked=this.checked"></th>
								<th class="item-info">상품정보</th>
								<th class="list-price">판매가격</th>
								<th class="count">수량</th>
								<th class="now-price">주문금액</th>
							</tr>
													

							<!-- 반복 -->
							<tr>
								<td class="item-info empty" colspan="5" align="center">장바구니에 담긴 상품이 없습니다.</td>
							</tr>
						</table>
						<div class="action-buttons">
							<span class="continue-shopping type1" onclick="location.href='index.html'">쇼핑계속하기</span>
						</div>



					<div class="notice-wrapper clearfix">
						<h3>확인해주세요</h3>
						<ul class="notice-list">
							<li>총 결제 금액 3만원 이상 무료배송혜택이 제공됩니다.</li>
							<li>회원가입을 하시면 다양한 할인혜택을 받아보실 수 있습니다.</li>
							<li>장바구니에 담긴 상품은 1개월 이후 자동삭제 되오니 오래 보관하시려면 로그인 후 위시리스트에 등록하시기 바랍니다.</li>
							<li>1개월 동안 장바구니에 보관된 상품을 주문하실 경우, 가격이나 혜택이 변동 될 수 있습니다.</li>
							<li>비회원의 경우 장바구니에 담긴 상품은 브라우저 종료 시 자동으로 삭제됩니다.</li>
						</ul>
					</div>
					</div>						
				</div>

		</section>
<!--Content영역종료-->

	<jsp:include page="/include/footer.jsp"/>

</body>
</html>