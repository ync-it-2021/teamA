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

	<!-- ?????????  ??????-->
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
						<li><span><img src="/resources/images/mnb_wish_icon.png"></span><a href="/mypage/wish">WISH LIST</a></li>
						<li><span><img src="/resources/images/mnb_cart_icon.png"></span><a href="/mypage/basket">CART</a></li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<li><a href="/login">LOGIN</a></li>
						<li><a href="/join">JOIN</a></li>
					</sec:authorize>
						
				</ul>
			</div>
			<div class="bottom-wrapper clearfix pc-width">
				<!-- ??????  ????????? 1????????????  -->
				<!-- <div id="sub"> -->
				<div class="inner-header">
					<ul style="margin-top: 15px; padding-right: 40px;" id="header-right" class="header-right float_right nav-right">
						<li class="cart-icon "> 
						<a class="nejongbo" href='/mypage/order'>
						<img  src="/resources/images/user.png" ></a>
							<p style="text-align:center;">MY</p>
							<div class="cart-hover">
							<!--????????? ??? ??????  -->
							<sec:authorize access="isAuthenticated()">
								<ul class="cotana">
									<li><a href="/mypage/order" class="hel"><span>????????????</span></a></li>
									<li><a href="#" class="hel"><span>??????</span></a></li>
									<li><a href="#" class="hel"><span>???????????????</span></a></li>
									<li><a href="/mypage/qna" class="hel"><span>1:1??????</span></a></li>
									<li><a href="/mypage/review/my" class="hel"><span>my??????</span></a></li>
								</ul>
								</sec:authorize>
								<!--????????? ?????? ??????  -->
								<sec:authorize access="isAnonymous()">
								<div class="select-items">							
								</div>
								<hr style="size=20px;">
								<div class="select-button">
									<pre></pre>
									<span > <a href="/login"  class="primary-btn view-card">?????????</a> </span>
									<span> <a href="/join" class="primary-btn view-card">????????????</a></span>
								</div>
								</sec:authorize>
							</div>

<!-- ?????? 1??? ?????? ??????????????? ??????????????? .  -->
						</li>
					<li class="cart-icon "><a class="nejongbo" href="shoppingbasket.jsp"><img src="/resources/images/shopping-cart.png"style="margin-right:8px;"></a>
						<p  style="text-align:center;"> CART </p>
								<div class="cart-hover">
								<sec:authorize access="isAuthenticated()">
									<div class="select-items">
										<ul class="cart_list">
										</ul>
									</div>
									</sec:authorize>
									<sec:authorize access="isAnonymous()">
										<h5> ????????? ??? ????????? ????????????.</h5>
									</sec:authorize>
								</div>
						</li>

						<li>
						<a href="/mypage/mycoupon">
						<img src="/resources/images/cupone.png" style="margin-right:8px;"/>
						</a>
						<p style="text-align:center;">cupon</p>
						</li>
					</ul>
					<!-- ?????? ????????? ?????? ??????  -->
				</div>

				<div style="margin-top: 10px;" id="top-logo" class="float_left"><a href="/"><img
							src="/resources/images/img_logo_old2.png" alt="Montraum" /></a></div>
				<!-- ????????? ?????? ?????????  -->
				<div id="header-right" class="float_left">
					<div class="top-search-wrapper2">
						<form name="searchForm1" action="" onSubmit="return false; ">
							<input type="text" id="search" name="search" class="input5" placeholder="???????????? ???????????????."
								onKeyUp="if(event.keyCode==13) search_submit1()" maxlength="150" />
							<input type="image" src="/resources/images/blt_search.png" class="btn-search2" alt="????????????"
								onClick="search_submit1()" />
						</form>
						<script>
							function search_submit1() {
								str_search = document.searchForm1.search.value.trim();
								if ('???????????? ???????????????.' == str_search) {
									alert('???????????? ???????????????.')
									document.searchForm1.search.value = ""
									document.searchForm1.search.focus();
									return
								}
								if (str_search.length < 2) {
									alert('2??? ?????? ???????????? ???????????????');
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
				<li class="brand-open brand"><a href="brandmain.html"><img src="/resources/images/txt_brand.png"
			alt="BRAND" /></a>
				</li>
				<li class="submenu-open menu1"><a href="shopmain95da.html?iniCategory=24&amp;thisCategory="><span
							class="default">????????? ??????</span><span class="hover">????????? ??????</span></a></li>
				<li class="submenu-open menu2"><a href="shopmain6e15.html?iniCategory=107&amp;thisCategory="><span
							class="default">????????? ??????</span><span class="hover">????????? ??????</span></a></li>
				<li class="submenu-open menu3"><a href="shopmainacb9.html?iniCategory=25&amp;thisCategory="><span
							class="default">????????????</span><span class="hover">????????????</span></a></li>
				<li class="submenu-open menu4"><a href="shopmain84ed.html?iniCategory=27&amp;thisCategory="><span
							class="default">??????</span><span class="hover">??????</span></a></li>
				<li class="submenu-open menu5"><a href="shopmaine79f.html?iniCategory=28&amp;thisCategory="><span
							class="default">??????/??????</span><span class="hover">??????/??????</span></a></li>
				<li class="submenu-open menu6"><a href="shopmain31f3.html?iniCategory=76&amp;thisCategory="><span
							class="default">????????? ??????</span><span class="hover">????????? ??????</span></a></li>
				
				<li class="submenu-open menu7">
					<div class="fb-icon-pc only-pc"></div><a href="eventviewfdd5.html?idx=350"
						style="color:purple;"><span class="default">????????????</span><span class="hover">????????????</span></a>
				</li>
			</ul>



			<div id="pc-sub-category">
				<div class="pc-width">
					<div class="banner-wrapper">
						<a href="eventviewe84a.html?idx=124"><img src="/resources/images/bnr_sub_category.jpg"
								alt="MONTRAUM" /></a>
					</div>
					<ul class="menu1">

						<li><a href="shopmain3398.html?iniCategory=24&amp;thisCategory=29">???????????????</a></li>

						<li><a href="shopmainde9a.html?iniCategory=24&amp;thisCategory=57">????????????</a></li>

						<li><a href="shopmain715b.html?iniCategory=24&amp;thisCategory=60">?????????</a></li>


					</ul>

					<ul class="menu2">

						<li><a href="shopmain3798.html?iniCategory=107&amp;thisCategory=109">???????????????</a></li>

						<li><a href="shopmain410a.html?iniCategory=107&amp;thisCategory=110">????????????</a></li>

						<li><a href="shopmain271e.html?iniCategory=107&amp;thisCategory=111">?????????</a></li>


					</ul>

					<ul class="menu3">

						<li><a href="shopmaina0d3.html?iniCategory=25&amp;thisCategory=30">???????????? ??????</a></li>

						<li><a href="shopmain673c.html?iniCategory=25&amp;thisCategory=31">????????? ??????</a></li>

						<li><a href="shopmaina2c1.html?iniCategory=25&amp;thisCategory=115">????????? ??????</a></li>



					</ul>

					<ul class="menu4">

						<li><a href="shopmain7b85.html?iniCategory=27&amp;thisCategory=102">???</a></li>

						<li><a href="shopmain60d5.html?iniCategory=27&amp;thisCategory=55">?????????</a></li>

						<li><a href="shopmainf38b.html?iniCategory=27&amp;thisCategory=52">?????????</a></li>

					</ul>

					<ul class="menu5">

						<li><a href="shopmainf65c.html?iniCategory=28&amp;thisCategory=99">??? ??????</a></li>

						<li><a href="shopmain55e4.html?iniCategory=28&amp;thisCategory=81">??? ?????????</a></li>

						<li><a href="shopmain5903.html?iniCategory=28&amp;thisCategory=86">??????????????????</a></li>


					</ul>

					<ul class="menu8">

						<li><a href="shopmain830a.html?iniCategory=76&amp;thisCategory=113">?????????</a></li>

						<li><a href="shopmain898e.html?iniCategory=76&amp;thisCategory=78">??????</a></li>

						<li><a href="shopmainf3bd.html?iniCategory=76&amp;thisCategory=79">??????</a></li>

					</ul>

					<ul>

					</ul>

				</div>
			</div>


		</nav>

	</header>
	</body>