<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<title>A_team_project</title>
	<link rel="stylesheet" href="css/style.css" type="../resources/css/text/css">
	<link rel="stylesheet" type="text/css" href="../resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/layout.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/commone67d.css?v=1.3" />
	<link rel="stylesheet" type="text/css" href="../resources/css/mainffaf.css?v=1.4" />
	<link rel="stylesheet" type="text/css" href="../resources/css/item-list.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/item-view.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/order-cart.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/member.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/brand.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/communityc619.css?v=1.0" />
	<link rel="stylesheet" type="text/css" href="../resources/css/guide.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/event.css" />
		<link rel="stylesheet" type="text/css" href="../resources/css/style.css" />

	<link rel="stylesheet" type="text/css" href="../resources/css/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/override.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/popup.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/main_add.css" />


	<script type="text/javascript" src="../resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../resources/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../resources/js/fastclick.js"></script>
	<script language="javascript" src="../resources/js/common.js" charset="euc-kr"></script>
	<script language="javascript" src="../resources/js/commonweb.js" charset="euc-kr"></script>
	<script type="text/javascript" src="../resourceas/js/font-awesome.min"></script>



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
</head>
<body>
<header>
	<header>
		<div class="only-pc">
			<div class="top-wrapper">
				<ul id="header-top" class="pc-width">

					<li><a href="login.jsp">LOGIN</a></li>
					<li><a href="join_agreement.jsp">JOIN</a></li>
					<li><a href="orderlist.jsp">MY PAGE</a></li>
					<li><span><img src="../resources/images/mnb_wish_icon.png"></span><a href="wish.jsp">WISH LIST</a></li>
					<li><span><img src="../resources/images/mnb_cart_icon.png"></span><a
							href="shoppingbasket.jsp">CART</a></li>
				</ul>
			</div>
			<div class="bottom-wrapper clearfix pc-width">
				<!-- 우측  메뉴바 1번입니다  -->
				<!-- <div id="sub"> -->
				<div class="inner-header">
					<ul style="margin-top: 15px; padding-right: 40px;" id="header-right" class="header-right float_right nav-right">

						<li class="cart-icon "> <a class="nejongbo" href="orderlist.jsp"><img  src="../resources/images/user.png" ><p style="text-align:center;">MY</p></a>

							<div class="cart-hover">
							<ul class="cotana">
							<a href="orderlist.jsp" class="hel"><span>주문내역</span></a>
							<a href="" class="hel"><span>배송</span></a>
							<a href="wish.jsp" class="hel"><span>위시리스트</span></a>
							<a href="qna.jsp" class="hel"><span>1:1문의</span></a>
							<a href="myreview_view.jsp" class="hel"><span>my후기</span></a>
									
								</ul>
								<div class="select-items">							
								</div>
										<hr style="size=20px;">
								<div class="select-button">
								<pre></pre>
										<span > <a href="login.jsp"  class="primary-btn view-card">로그아웃</a> </span>
									
							
								</div>
							</div>

						</li>
					<li class="cart-icon "> <a class="nejongbo" href="shoppingbasket.jsp"><img src="../resources/images/shopping-cart.png"style="margin-right:8px;"><p  style="text-align:center;"> cart</p></a>
						
								<div class="cart-hover">
								<div class="select-items">
									<table>
										<tbody>
											<tr>
												<td class="si-pic"><img src="img/product/product-1.jpg" alt=""></td>
												<td class="si-text">

												</td>
												<td class="si-close">
													<i class="ti-close"></i>
												</td>
											</tr>
											<tr>
												<td class="si-pic"><img src="../resources/images/select-product-2.jpg" alt=""></td>

												<td class="si-close">
													<i class="ti-close"></i>
													<h5> 상품을 담아주세요 </h5>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

						</li>
						
				
			
						<li><a href="mycoupon.jsp"><img src="../resources/images/cupone.png" style="margin-right:8px;"><p style="text-align:center;">cupon</p></a></li>
					</ul>
					<!-- 우측 이벤트 부분 제외  -->
				</div>

				<div style="margin-top: -20px;" id="top-logo" class="float_left"><a href="index.jsp"><img
							src="../resources/images/img_logo_old2.png"   width=140px; alt="Montraum" /></a></div>
				<!-- 검색바 부분 입니다  -->
				<div id="header-right" class="float_left">
					<div class="top-search-wrapper2">
						<form name="searchForm1" action="" onSubmit="return false; ">
							<input type="text" id="search" name="search" class="input5" placeholder="검색어를 입력하세요."
								onKeyUp="if(event.keyCode==13) search_submit1()" maxlength="150" />
							<input type="image" src="../resources/images/blt_search.png" class="btn-search2" alt="검색버튼"
								onClick="search_submit1()" />
						</form>
						<script language="javascript">
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
				<li class="brand-open brand"><a href="brandmain.html"><img src="../resources/images/txt_brand.png"
			alt="BRAND" /></a>
				</li>
				<li class="submenu-open menu1"><a href="shopmain95da.html?iniCategory=24&amp;thisCategory="><span
							class="default">강아지</span><span class="hover">강아지 사료</span></a></li>
				<li class="submenu-open menu2"><a href="shopmain6e15.html?iniCategory=107&amp;thisCategory="><span
							class="default">고양이</span><span class="hover">고양이 사료</span></a></li>
				<li class="submenu-open menu3"><a href="shopmainacb9.html?iniCategory=25&amp;thisCategory="><span
							class="default">배변용품</span><span class="hover">배변용품</span></a></li>
				<li class="submenu-open menu4"><a href="shopmain84ed.html?iniCategory=27&amp;thisCategory="><span
							class="default">미용</span><span class="hover">미용</span></a></li>
				<li class="submenu-open menu5"><a href="shopmaine79f.html?iniCategory=28&amp;thisCategory="><span
							class="default">리빙/외출</span><span class="hover">리빙/외출</span></a></li>
				<li class="submenu-open menu6"><a href="shopmain31f3.html?iniCategory=76&amp;thisCategory="><span
							class="default">고양이 용품</span><span class="hover">고양이 용품</span></a></li>
				
				<li class="submenu-open menu7">
					<div class="fb-icon-pc only-pc"></div><a href="eventviewfdd5.html?idx=350"
						style="color:purple;"><span class="default">체험특가</span><span class="hover">체험특가</span></a>
				</li>
			</ul>



			<div id="pc-sub-category">
				<div class="pc-width">
					<div class="banner-wrapper">
						<a href="eventviewe84a.html?idx=124"><img src="../resources/images/bnr_sub_category.jpg"
								alt="MONTRAUM" /></a>
					</div>
					<ul class="menu1">

						<li><a href="shopmain3398.html?iniCategory=24&amp;thisCategory=29">그레인프리</a></li>

						<li><a href="shopmainde9a.html?iniCategory=24&amp;thisCategory=57">홀리스틱</a></li>

						<li><a href="shopmain715b.html?iniCategory=24&amp;thisCategory=60">연령별</a></li>


					</ul>

					<ul class="menu2">

						<li><a href="shopmain3798.html?iniCategory=107&amp;thisCategory=109">그레인프리</a></li>

						<li><a href="shopmain410a.html?iniCategory=107&amp;thisCategory=110">홀리스틱</a></li>

						<li><a href="shopmain271e.html?iniCategory=107&amp;thisCategory=111">연령별</a></li>


					</ul>

					<ul class="menu3">

						<li><a href="shopmaina0d3.html?iniCategory=25&amp;thisCategory=30">트레이닝 패드</a></li>

						<li><a href="shopmain673c.html?iniCategory=25&amp;thisCategory=31">노스멜 패드</a></li>

						<li><a href="shopmaina2c1.html?iniCategory=25&amp;thisCategory=115">피크닉 패드</a></li>



					</ul>

					<ul class="menu4">

						<li><a href="shopmain7b85.html?iniCategory=27&amp;thisCategory=102">콤</a></li>

						<li><a href="shopmain60d5.html?iniCategory=27&amp;thisCategory=55">코트킹</a></li>

						<li><a href="shopmainf38b.html?iniCategory=27&amp;thisCategory=52">브러쉬</a></li>

					</ul>

					<ul class="menu5">

						<li><a href="shopmainf65c.html?iniCategory=28&amp;thisCategory=99">펫 백팩</a></li>

						<li><a href="shopmain55e4.html?iniCategory=28&amp;thisCategory=81">펫 슬링백</a></li>

						<li><a href="shopmain5903.html?iniCategory=28&amp;thisCategory=86">듀얼마약방석</a></li>


					</ul>

					<ul class="menu8">

						<li><a href="shopmain830a.html?iniCategory=76&amp;thisCategory=113">화장실</a></li>

						<li><a href="shopmain898e.html?iniCategory=76&amp;thisCategory=78">모래</a></li>

						<li><a href="shopmainf3bd.html?iniCategory=76&amp;thisCategory=79">미용</a></li>

					</ul>

					<ul>

					</ul>

				</div>
			</div>


		</nav>



	</head>




</body>
</html>