<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../includes/front/header.jsp"/>
<body>
<section>
			
			<div id="page-member-wish" class="section-member pc-width">
				<div id="navigation-bar"><script>document.write(navistr)</script>
					<span onclick="location.href=&#39;/&#39;" style="cursor:pointer">Home</span>
					<span onclick="location.href=&#39;/common/process/buy_list.asp&#39;" style="cursor:pointer">Mypage </span>
					<span onclick="location.href=&#39;/common/process/wish_list.asp&#39;" style="cursor:pointer" class="current">Wish List </span>
				</div>
				<h2 class="page-title"><script>document.write(siteTitle)</script>Mypage</h2>
				
				
	<div class="member-nav-wrapper">
	<ul class="member-nav open-sub-menu"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li class="active">
			<a href="https://www.montraum.com/common/process/buy_list.asp">나의 쇼핑현황</a>
			<div class="member-sub-nav">
				<a href="https://www.montraum.com/common/process/buy_list.asp">주문내역</a>
				<a href="https://www.montraum.com/common/process/order_list.asp?iniCategory=0">장바구니</a>
				<a href="https://www.montraum.com/common/process/wish_list.asp" class="active">위시리스트</a>
				<a href="https://www.montraum.com/common/process/mycoupon.asp">쿠폰</a>
				<a href="https://www.montraum.com/common/process/mypoint.asp">예치금</a>
			</div>
		</li>
		<li><a href="https://www.montraum.com/common/all_site/member/member_edit.asp">개인정보수정</a></li>
		<li><a href="https://www.montraum.com/common/process/baesong_addr.asp">주소록관리</a></li>
		<li class="hide-mobile"><a href="https://www.montraum.com/common/process/qanda/list.asp">1:1문의</a></li>
		<li><a href="https://www.montraum.com/common/process/productAfter/myreview_view.asp">나의후기</a></li>
		<li><a href="https://www.montraum.com/common/all_site/member/member_out.asp">회원탈퇴</a></li>
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
<footer>
	<div id="sitemap" class="only-pc">
		<div class="pc-width">
			<div class="inner-div clearfix">
				<div class="section">
					<h3>BRAND</h3>
					<ul>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=54&#39;" style="cursor:pointer;">BEST BREED</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=20&#39;" style="cursor:pointer;">PRODOGGIE</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=74&#39;" style="cursor:pointer;">WEGONO</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=22&#39;" style="cursor:pointer;">MARS ALCOSO</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=73&#39;" style="cursor:pointer;">DIG &amp; ROLL</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=21&#39;" style="cursor:pointer;">KOMPLETT</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=82&#39;" style="cursor:pointer;">ICELAND PET</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=101&#39;" style="cursor:pointer;">CARNA4</li>
					</ul>
				</div>
				<div class="section">
					<h3>SHOP</h3>
					<ul>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=&#39;" style="cursor:pointer;">사료</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=87&amp;thisCategory=&#39;" style="cursor:pointer;">간식</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=&#39;" style="cursor:pointer;">배변용품</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=&#39;" style="cursor:pointer;">미용</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=&#39;" style="cursor:pointer;">리빙/외출</li>
						<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=&#39;" style="cursor:pointer;">고양이</li>
					</ul>
				</div>
				<div class="section">
					<h3>EVENT</h3>
					<ul>
						<!-- li onclick="location.href='/common/all_site/Notice/event.asp'" style="cursor:pointer;">샘플신청</li -->
						<li onclick="location.href=&#39;/common/all_site/Notice/event.asp&#39;" style="cursor:pointer;">진행중 EVENT</li>
						<li onclick="location.href=&#39;/common/all_site/Notice/notice.asp&#39;" style="cursor:pointer;">당첨자 발표</li>
						<li onclick="location.href=&#39;/common/process/productAfter/review.asp&#39;" style="cursor:pointer;">BEST REVIEW</li>
					</ul>
				</div>
				<div class="section">
					<h3>MEMBER</h3>
					<ul>
						<li onclick="location.href=&#39;/common/all_site/member/join_agreement.asp&#39;" style="cursor:pointer;">회원가입</li>
						<li onclick="location.href=&#39;/common/all_site/member/login.asp&#39;" style="cursor:pointer;">로그인</li>
						<li onclick="location.href=&#39;/common/all_site/member/searchidinfo.asp?ProcessGubun=A&#39;" style="cursor:pointer;">아이디 찾기</li>
						<li onclick="location.href=&#39;/common/all_site/member/searchidinfo.asp?ProcessGubun=B&#39;" style="cursor:pointer;">비밀번호 찾기</li>
					</ul>
				</div>
				<div class="section">
					<h3>CONTACT</h3>
					<ul>
						<li onclick="location.href=&#39;/common/all_site/Notice/notice.asp&#39;" style="cursor:pointer;">공지사항</li>
						<li onclick="location.href=&#39;/common/all_site/faq.asp&#39;" style="cursor:pointer;">FAQ</li>
						<li onclick="location.href=&#39;/common/process/qanda/list.asp&#39;" style="cursor:pointer;">Q&amp;A</li>
						<li onclick="location.href=&#39;/about/aboutus.asp&#39;" style="cursor:pointer;">제휴문의</li>
					</ul>
				</div>
				<div class="cs-center">
					<img src="./__몬트라움__ 프리미엄 펫용품 전문쇼핑몰_files/img_contact.png" alt="CONTACT INFO - NO SPAM">
					<div class="sns-icons">
						<span class="youtubu"><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="./__몬트라움__ 프리미엄 펫용품 전문쇼핑몰_files/youtubu_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://post.naver.com/welovemontraum" target="_blank"><img src="./__몬트라움__ 프리미엄 펫용품 전문쇼핑몰_files/naver_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://www.facebook.com/montraum2017" target="_blank"><img src="./__몬트라움__ 프리미엄 펫용품 전문쇼핑몰_files/facebook_icon.png" alt="facebook"></a></span>
						<span class="instar"><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="./__몬트라움__ 프리미엄 펫용품 전문쇼핑몰_files/instargram_icon.png" alt="instargram"></a></span>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>