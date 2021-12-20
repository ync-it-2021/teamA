    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>   
<meta charset="UTF-8">

	<link rel="stylesheet" type="css/style.css" href="/resources/css/text/css">
	<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/layout.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/commone67d.css?v=1.3" />
	<link rel="stylesheet" type="text/css" href="/resources/css/mainffaf.css?v=1.4" />
	<link rel="stylesheet" type="text/css" href="/resources/css/item-list.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/item-view.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/order-cart.css" />

	<link rel="stylesheet" type="text/css" href="/resources/css/member.css?ver=1"/>
	<link rel="stylesheet" type="text/css" href="/resources/css/brand.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/communityc619.css?v=1.0" />
	<link rel="stylesheet" type="text/css" href="/resources/css/guide.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/event.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/override.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/popup.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/main_add.css" />
	<link rel="stylesheet" type="css/style.css" href="/resourceas/css/font-awesome.min.css"/>

	
	<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/resources/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="/resources/js/fastclick.js"></script>
	<script src="/resources/js/common.js" charset="UTF-8"></script>
	<script src="/resources/js/commonweb.js" charset="UTF-8"></script>
	
	
	<script>
	$(document).ready(function () {
			getList();
	});
	
	function getList() {
		let member_id="";
		  <sec:authorize access="isAuthenticated()">
		   member_id = '<sec:authentication property="principal.username"/>'||null;   
			</sec:authorize>
		$.ajax({
			url:"/order/cart",
			type:"get",
			data:{member_id : member_id},
			dataType:"JSON",
			success:function(data){
				let str = "";
				for (var i = 0, len = data.length || 0; i < len; i++) {
					str +="<li ><img class='left'src='/resources/upload/"+data[i].prd_img1+"' style='width=25px'>";
					str +="<ul><li>"+data[i].od_amount+"</li>";
					str +="<li><input value='"+data[i].prd_name+"' readonly='readonly'/></li></ul></li>";
				}
				$(".cart_list").html(str);
				console.log(str);
				
			},
		error:function(){
			
		}
		
		});
	}
	</script>

	<!-- 메뉴바  네비-->
	<script type="text/javascript">
		$(document).ready(function () {

			/*$("footer .go-top").click(function(){
				if( isChrome && isMobile ) $("#mobile-wrapper").stop().animate( {scrollTop: 0}, '500', 'swing' );
				else $("html,body").stop().animate( {scrollTop: 0}, '500', 'swing' );
			});*/
			$(".go-top").each(function (index) {
				$(this).click(function () {
					if (isChrome && isMobile) $("#mobile-wrapper").stop().animate({ scrollTop: 0 }, '500', 'swing');
					else $("html,body").stop().animate({ scrollTop: 0 }, '500', 'swing');
				});
			});

			var hideTimerCategory = null;
			$("#pc-nav li.submenu-open").mouseover(function () { window.clearTimeout(hideTimerCategory); $("#pc-sub-category").slideDown(); $('#brand-list').slideUp('fast'); });
			$("nav").hover(function () { window.clearTimeout(hideTimerCategory); }, function () { hideTimerCategory = window.setTimeout("$('#pc-sub-category').slideUp('fast');", 300); });

			var hideTimerBrand = null;
			$("#pc-nav li.brand-open").mouseover(function () { window.clearTimeout(hideTimerBrand); $("#brand-list").slideDown(); $('#pc-sub-category').slideUp('fast'); });
			$("nav").hover(function () { window.clearTimeout(hideTimerBrand); }, function () { hideTimerBrand = window.setTimeout("$('#brand-list').slideUp('fast');", 300); });
		});

	</script>
<body>
	<header>
		<div class="only-pc">
			<div class="top-wrapper">
				<ul id="header-top" class="pc-width">
					
					
					<sec:authorize access="isAuthenticated()">
						<li><a href="/customLogout">LOGOUT</a></li>
						<li><a href='/mypage/order'>MY PAGE</a></li>
						<li><span><img src="../resources/images/mnb_wish_icon.png"></span><a href="/mypage/wish">WISH LIST</a></li>
						<li><span><img src="../resources/images/mnb_cart_icon.png"></span><a href="/mypage/basket">CART</a></li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<li><a href="/login">LOGIN</a></li>
						<li><a href="/join">JOIN</a></li>
					</sec:authorize>
						
				</ul>
			</div>
			<div class="bottom-wrapper clearfix pc-width">
				<!-- 우측  메뉴바 1번입니다  -->
				<!-- <div id="sub"> -->
				<div class="inner-header">
					<ul style="margin-top: 15px; padding-right: 40px;" id="header-right" class="header-right float_right nav-right">
						<li class="cart-icon "> 
						<a class="nejongbo" href='/mypage/order'>
						<img  src="../resources/images/user.png" ></a>
							<p style="text-align:center;">MY</p>
							<div class="cart-hover">
							<!--로그인 된 화면  -->
							<sec:authorize access="isAuthenticated()">
								<ul class="cotana">
									<li><a href="/order" class="hel"><span>주문내역</span></a></li>
									<li><a href="#" class="hel"><span>배송</span></a></li>
									<li><a href="#" class="hel"><span>위시리스트</span></a></li>
									<li><a href="#" class="hel"><span>1:1문의</span></a></li>
									<li><a href="#" class="hel"><span>my후기</span></a></li>
								</ul>
								</sec:authorize>
								<!--로그인 안된 화면  -->
								<sec:authorize access="isAnonymous()">
								<div class="select-items">							
								</div>
								<hr style="size=20px;">
								<div class="select-button">
									<pre></pre>
									<span > <a href="/login"  class="primary-btn view-card">로그인</a> </span>
									<span> <a href="/join" class="primary-btn view-card">회원가입</a></span>
								</div>
								</sec:authorize>
							</div>

<!-- 헤더 1차 수정 수정완료시 삭제합니다 .  -->
						</li>
					<li class="cart-icon "><a class="nejongbo" href="shoppingbasket.jsp"><img src="../resources/images/shopping-cart.png"style="margin-right:8px;"></a>
						<p  style="text-align:center;"> CART </p>
								<div class="cart-hover">
								<sec:authorize access="isAuthenticated()">
									<div class="select-items">
										<ul class="cart_list">
										</ul>
									</div>
									</sec:authorize>
									<sec:authorize access="isAnonymous()">
										<h5> 로그인 후 보실수 있습니다.</h5>
									</sec:authorize>
								</div>
						</li>

						<li>
						<a href="/mypage/mycoupon">
						<img src="../resources/images/cupone.png" style="margin-right:8px;"/>
						</a>
						<p style="text-align:center;">cupon</p>
						</li>
					</ul>
					<!-- 우측 이벤트 부분 제외  -->
				</div>

				<div style="margin-top: 10px;" id="top-logo" class="float_left"><a href="/"><img
							src="../resources/images/img_logo_old2.png" alt="Montraum" /></a></div>
				<!-- 검색바 부분 입니다  -->
				<div id="header-right" class="float_left">
					<div class="top-search-wrapper2">
						<form name="searchForm1" action="" onSubmit="return false; ">
							<input type="text" id="search" name="search" class="input5" placeholder="검색어를 입력하세요."
								onKeyUp="if(event.keyCode==13) search_submit1()" maxlength="150" />
							<input type="image" src="../resources/images/blt_search.png" class="btn-search2" alt="검색버튼"
								onClick="search_submit1()" />
						</form>
						<script>
							function search_submit1() {
								str_search = document.searchForm1.search.value.trim();
								if ('검색어를 입력하세요.' == str_search) {
									alert('검색어를 입력하세요.')
									document.searchForm1.search.value = ""
									document.searchForm1.search.focus();
									return
								}
								if (str_search.length < 2) {
									alert('2자 이상 검색어를 입력하세요');
									document.searchForm1.search.focus();
									return;
								}
								document.searchForm1.submit();
							}
						</script>
					</div>
				</div>

			</div>
		</div>


		<nav class="wc-zone">
			<ul id="pc-nav" class="pc-width clearfix only-pc">
				<li class="brand-open brand"><a href=""><img src="../resources/images/txt_brand.png"
			alt="BRAND" /></a>
				</li>
				<li class="submenu-open menu1"><a href="/product?prd_kind=1"><span
							class="default">강아지</span><span class="hover">강아지 사료</span></a></li>
				<li class="submenu-open menu2"><a href="/product?prd_kind=2"><span
							class="default">고양이</span><span class="hover">고양이 사료</span></a></li>
				<li class="submenu-open menu3"><a href="/product?prd_kind=3"><span
							class="default">배변용품</span><span class="hover">애완패드</span></a></li>
				<li class="submenu-open menu4"><a href="/product?prd_kind=4"><span
							class="default">미용</span><span class="hover">미용 용품</span></a></li>
				<li class="submenu-open menu5"><a href="/product?prd_kind=5"><span
							class="default">리빙/외출</span><span class="hover">잡다</span></a></li>
				<li class="submenu-open menu6"><a href="/product?prd_kind=6"><span
							class="default">고양이 용품</span><span class="hover">고양이 전용</span></a></li>
				
			
			</ul>

	</header>
	</body>