<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/include/header.jsp"/>
<body>
<section>
			
			<div id="page-member-wish" class="section-member pc-width">
				<div id="navigation-bar"><script>document.write(navistr)</script><span onclick="location.href=&#39;/&#39;" style="cursor:pointer">Home</span><span onclick="location.href=&#39;/common/process/buy_list.asp&#39;" style="cursor:pointer">Mypage </span><span onclick="location.href=&#39;/common/process/wish_list.asp&#39;" style="cursor:pointer" class="current">Wish List </span></div>
				<h2 class="page-title"><script>document.write(siteTitle)</script>Mypage</h2>
				
				
	<div class="member-nav-wrapper">
	<ul class="member-nav open-sub-menu"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li class="active">
			<div class="member-sub-nav">
				<a href="orderlist.jsp">주문내역</a>
				<a href="shoppingbasket.jsp">장바구니</a>
				<a href="wish.jsp" class="active">위시리스트</a>
				<a href="mycoupon.jsp">쿠폰</a>
			</div>
		</li>
		<li><a href="member_Modify.jsp">개인정보수정</a></li>

		<li class="hide-mobile"><a href="qna.jsp">1:1문의</a></li>
		<li><a href="myreview_view.jsp">나의후기</a></li>
		<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
	</ul>
	</div>

				
				<div class="contents-wrapper">
					<div class="items item-type1">
						<h2 class="page-sub-title kr">위시리스트</h2>
						<div class="page-content-desc">
							<span class="guide">위시리스트는 90일간 보관됩니다.</span>
							<select class="type2 item-order">
								<option>최근 담은 순</option>
							</select>
						</div>
	
						<div class="item-list-empty">담으신 상품이 없습니다.</div>
												
						<!--내용이  없을떄 사용해주세요
						<div class="item-list-empty">담으신 상품이 없습니다.</div>
						-->
						
						<div class="item-actions clearfix">
							<label><input type="checkbox" onclick="for(var i=0;i&lt;document.form1.order_id.length;i++)document.form1.order_id[i].checked=this.checked"> 전체선택</label>
							<span class="btn-add-cart" onclick="changeOrder()">장바구니 담기</span> 
							<span class="btn-deselect" onclick="deleteOrder()">선택 삭제</span>
						</div>

						

						<div class="notice-wrapper clearfix">
							<h3>확인해주세요</h3>
							<ul class="notice-list">
								<li>위시리스트 상품은 장바구니로 옮겨 담으실 수 있습니다.</li>
								<li>품절된 상품은 구입이 불가합니다.</li>
							</ul>
						</div>		
					</div>
				</div>
			</div>
		</section>
<!--Content영역종료-->
<div style="display:none;">
	<!--풋터영역시작-->
</div>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>