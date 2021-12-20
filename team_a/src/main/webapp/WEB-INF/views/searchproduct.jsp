<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>::몬트라움:: 프리미엄 펫용품 전문쇼핑몰</title>
	<meta name="description" content="">
	<meta name="author" content="">
	

	<meta id="viewport" name="viewport" content="width=1120">



<jsp:include page=includes/header.jsp"/>


	

			<div class="mobile-logo2"><a href="https://www.montraum.com/"><img src="./서치부분_files/img_logo_old2.png" alt="MONTRAUM"></a></div>

			<!-- 검색바 Mobile 170309_최문영작업 -->
			<div class="mobile-right2 clearfix">
				<div class="search_box">
					<div class="input-wrapper">
						<form name="searchForm" action="https://www.montraum.com/search/search.asp" onsubmit="return false;">
							<input type="text" id="search" name="search" class="input5" placeholder="검색어 입력" onkeyup="if(event.keyCode==13) search_submit()" maxlength="50">
							<input type="image" src="./서치부분_files/blt_search.mobile.png" class="btn-search2" alt="검색버튼" onclick="search_submit()">
						</form>
						<script language="javascript">
							function search_submit(){
								str_search = document.searchForm.search.value.trim();
								if ('검색어를 입력하세요.'== str_search){
									alert('검색어를 입력하세요.')
									document.searchForm.search.value = ""
									document.searchForm.search.focus();
									return
								}
								if (str_search.length<2){
									alert('2자 이상 검색어를 입력하세요');
									document.searchForm.search.focus();
									return;
								}
								document.searchForm.submit();
							}
						</script>
					</div>
				</div>
				<!-- //검색바 -->

				<div class="shop-cart"><a href="https://www.montraum.com/common/process/order_list.asp?iniCategory=0"><img src="./서치부분_files/blt_cart.mobile.png" alt="CART"></a></div>
			</div>

		</div>
	</header>
	<!--헤더영역종료-->



	<!--네비영역시작-->
	<nav class="wc-zone">
		<ul id="pc-nav" class="pc-width clearfix only-pc">
			<li class="brand-open brand"><a href="https://www.montraum.com/about/brandMain.asp"><img src="./서치부분_files/txt_brand.png" alt="BRAND"></a></li>
			<li class="submenu-open menu1"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory="><span class="default">강아지 사료</span><span class="hover">강아지 사료</span></a></li>
			<li class="submenu-open menu2"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory="><span class="default">고양이 사료</span><span class="hover">고양이 사료</span></a></li>
			<li class="submenu-open menu3"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory="><span class="default">배변용품</span><span class="hover">배변용품</span></a></li>
			<li class="submenu-open menu4"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory="><span class="default">미용</span><span class="hover">미용</span></a></li>
			<li class="submenu-open menu5"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory="><span class="default">리빙/외출</span><span class="hover">리빙/외출</span></a></li>
			<li class="submenu-open menu6"><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory="><span class="default">고양이 용품</span><span class="hover">고양이 용품</span></a></li>
			<!-- li class="submenu-open menu6"><a href="/common/all_site/Notice/event.asp"><span class="default">이벤트</span><span class="hover">이벤트</span></a></li -->
			<li class="submenu-open menu7"><div class="fb-icon-pc only-pc"></div><a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=350" style="color:purple;"><span class="default">체험특가</span><span class="hover">체험특가</span></a></li>
		</ul>
		<!--ul id="mobile-nav" class="clearfix only-mobile">
			<li><a href="/common/all_site/Notice/event.asp">EVENT</a></li>
			<li><a href="/common/process/shopbest.asp">BEST</a></li>
			<li><a href="/about/brandMain.asp">BRAND</a></li>
			<li><a href="/common/process/buy_list.asp?iniCategory=0">MY PAGE</a></li>
		</ul-->

		<!-- 모바일 네비수정--170620_최문영작업 -->

		<div class="fb-icon-mobile only-mobile"></div>
		<ul id="mobile-nav2" class="clearfix only-mobile">
			<li><a href="https://www.montraum.com/about/brandMain.asp">BRAND</a></li>
			<li><a href="https://www.montraum.com/common/all_site/Notice/event.asp">EVENT</a></li>
			<li><a href="https://www.montraum.com/common/process/shopbest.asp">BEST</a></li>
			<li><a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=350" style="color:purple;">체험특가</a></li>
			<li><a href="https://www.montraum.com/common/process/buy_list.asp?iniCategory=0">MY PAGE</a></li>
		</ul>
		<!-- //모바일 네비수정--170620_최문영작업 -->
		
		<div id="pc-sub-category" style="display: none;">
			<div class="pc-width">
				<div class="banner-wrapper">
					<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=124"><img src="./서치부분_files/bnr_sub_category.jpg" alt="MONTRAUM"></a>
				</div>
				<ul class="menu1">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=29">그레인프리</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=57">홀리스틱</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=60">연령별</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=95">프리미엄</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=108">간식&amp;영양제</a></li>
					
				</ul>

				<ul class="menu2">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=109">그레인프리</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=110">홀리스틱</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=111">연령별</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=114">프리미엄</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=112">간식&amp;영양제</a></li>
					
				</ul>

				<ul class="menu3">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=30">트레이닝 패드</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=31">노스멜 패드</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=115">피크닉 패드</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=117">퍼펙션 패드</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=121">아로마 패드</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=96">원터치 배변판</a></li>
					
				</ul>

				<ul class="menu4">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=102">콤</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=55">코트킹</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=52">브러쉬</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=62">가위</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=119">목욕타올</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=105">발톱깎이</a></li>
					
				</ul>

				<ul class="menu5">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=99">펫 백팩</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=81">펫 슬링백</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=86">듀얼마약방석</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=43">메모리폼 침대</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=120">넥카라</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=104">장난감</a></li>
					
				</ul>

				<ul class="menu8">
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=113">화장실</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=78">모래</a></li>
					
					<li><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=79">미용</a></li>
					
				</ul>

				<ul>

				</ul>

			</div>
		</div>

		<div id="brand-list" style="display: none;">
			<div class="pc-width">
				<ul class="clearfix2">
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=54&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_54.png" alt="베스트브리드"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=20&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_20.png" alt="프로도기"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=82&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_82.png" alt="아이슬란드펫"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=74&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_74.png" alt="위고노"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=22&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_22.png" alt="마스알코소"></li>
				</ul>
				<ul class="clearfix2">
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=73&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_73.png" alt="디그앤롤"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=21&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_21.png" alt="컴플렛"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=100&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_100.png" alt="에그풀"></li>
					<li onclick="location.href=&#39;/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=101&#39;" style="cursor:pointer;width:19%;"><img src="./서치부분_files/img_brand_logo2_101.png" alt="카르나4"></li>
					<li class="mnb-event-banner" style="cursor:pointer; width: 20%;">
						<span onclick="location.href=&#39;/about/members.asp&#39;" style="cursor:pointer;"><img src="./서치부분_files/mnb_icon_1.png" alt="멤버십"></span>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--네비영역종료-->

<script language="javascript">
	httpUrl = "/search/search.asp?search=%EA%B3%A0%EA%B8%B0"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="/common/all_site/member/login.asp?refer_page=%2Fsearch%2Fsearch%2Easp%3Fsearch%3D%25EA%25B3%25A0%25EA%25B8%25B0"
	}
</script>
<script language="javascript" src="./서치부분_files/top.js.다운로드"></script>
<script language="javascript" src="./서치부분_files/code.js.다운로드" charset="euc-kr"></script>

<!--Content영역시작-->

	<section>
		<div id="page-item-list" class="pc-width">
			<div id="navigation-bar">
				<span>Home</span>
				<span class="current">Search</span>
			</div>
			
			<h2 class="page-title">Search</h2>
			
			<div class="search-form">
				
				<p class="search-num"><span>'고기'</span> 검색결과 <span id="total_count" name="total_count">8</span>개의 상품이 검색되었습니다.</p>
				
				<div class="search-box">
					<form name="searchForm2" action="https://www.montraum.com/search/search.asp" onsubmit="return false;">
						<label>검색</label>
						<input type="text" id="search" name="search" value="고기" class="input1" placeholder="ex) 배송, 결제, 주문, 쿠폰" onclick="if (&#39;검색어를 입력하세요.&#39;==this.value) this.value=&#39;&#39;" style="ime-mode:active;color:gray;" onkeyup="if(event.keyCode==13) search_submit2()">
						<input type="submit" value="검색" class="btn-submit" id="search_btn" onclick="search_submit2()" style="cursor:pointer;">
						<script language="javascript">
						function search_submit2(){
							str_search = document.searchForm2.search.value.trim();
							if ('검색어를 입력하세요.'== str_search){
								alert('검색어를 입력하세요.')
								document.searchForm2.search.value = ""
								document.searchForm2.search.focus();
								return
							}
							if (str_search.length<2){
								alert('2자 이상 검색어를 입력하세요');
								document.searchForm2.search.focus();
								return;
							}
							document.searchForm2.submit();
						}
						</script>
					</form>
				</div>
				
				<div id="div_search" name="div_search" class="searched-category"><h3 class="underline-title">카테고리별 검색결과</h3><div class="category-group">	<span class="category-name" id="24" name="24">강아지사료(<span id="sum_24" name="sum_24">2</span>건)</span>		<ul><li><span id="57" name="57" onclick="search_view(57)" style="cursor:pointer;">홀리스틱(2건)</span></li></ul></div><div class="category-group">	<span class="category-name" id="97" name="97">멤버쉽ZONE(<span id="sum_97" name="sum_97">1</span>건)</span>		<ul><li><span id="97" name="97" onclick="search_view(97)" style="cursor:pointer;">멤버쉽ZONE(1건)</span></li></ul></div><div class="category-group">	<span class="category-name" id="98" name="98">첫구매전용관(<span id="sum_98" name="sum_98">1</span>건)</span>		<ul><li><span id="98" name="98" onclick="search_view(98)" style="cursor:pointer;">첫구매전용관(1건)</span></li></ul></div><div class="category-group">	<span class="category-name" id="2" name="2">BRAND(<span id="sum_2" name="sum_2">2</span>건)</span>		<ul><li><span id="54" name="54" onclick="search_view(54)" style="cursor:pointer;">베스트브리드(2건)</span></li></ul></div><div class="category-group">	<span class="category-name" id="7" name="7">특별SET(<span id="sum_7" name="sum_7">2</span>건)</span>		<ul><li><span id="14" name="14" onclick="search_view(14)" style="cursor:pointer;">신규상품(2건)</span></li></ul></div></div>
			</div>
			
			<div class="items item-type1">
				<h3 class="underline-title">상품 결과</h3>
				
				<div class="item-header clearfix">
					<span class="total-item-num"><span class="num" id="total_count" name="total_count">8</span> Items</span>
					<select class="select-order type2" onchange="search_view(&#39;&#39;,this.value)">
						<option value="0" selected="">인기순</option>
						<option value="1">신상품순</option>
						<option value="2">낮은가격순</option>
						<option value="3">높은가격순</option>
					</select>
				</div>
				<script language="javascript">
					search_result = new Array()
				
					search_result.push(new Array("24","강아지사료","57","홀리스틱","2","1"))
				
					search_result.push(new Array("97","멤버쉽ZONE","","","1","1"))
				
					search_result.push(new Array("98","첫구매전용관","","","1","1"))
				
					search_result.push(new Array("2","BRAND","54","베스트브리드","2","2"))
				
					search_result.push(new Array("7","특별SET","14","신규상품","2","7"))
				
					id1 = ""
					sch_iniCategory = "";
					strValue = "<h3 class='underline-title'>카테고리별 검색결과</h3>";
					sum_cnt = 0;

					for (var i=0 ; i < search_result.length ; i++){
						if (i > 0 && id1 != search_result[i][0]){
							strValue = strValue + "</ul></div>"
						}
						if (id1 != search_result[i][0]){
							strValue = strValue + "<div class='category-group'>"
							strValue = strValue + "	<span class='category-name' id='"+search_result[i][0]+"' name='"+search_result[i][0]+"'>" + search_result[i][1] + "(<span id='sum_"+search_result[i][0]+"' name='sum_"+search_result[i][0]+"'></span>건)</span>"
							strValue = strValue + "		<ul>"
						}
						
						if (search_result[i][2] != "")
							strValue = strValue + "<li><span id='"+search_result[i][2]+"' name='"+search_result[i][2]+"' onclick='search_view("+search_result[i][2]+")' style='cursor:pointer;'>"+search_result[i][3]+"("+search_result[i][4]+"건)</span></li>"
						else
							strValue = strValue + "<li><span id='"+search_result[i][0]+"' name='"+search_result[i][0]+"' onclick='search_view("+search_result[i][0]+")' style='cursor:pointer;' >"+search_result[i][1]+"("+search_result[i][4]+"건)</span></li>"
						

						id1 = search_result[i][0]
						sum_cnt = sum_cnt + search_result[i][4]

					}
					
					document.getElementsByName("div_search")[0].innerHTML = strValue

					total_cnt = 0 
					for (var i=0 ; i < search_result.length ; i++){
						sum_cnt = parseInt(defaultValue(document.getElementsByName("sum_"+search_result[i][0])[0].innerHTML,0))
						document.getElementsByName("sum_"+search_result[i][0])[0].innerHTML = sum_cnt + parseInt(search_result[i][4]) 
						total_cnt = total_cnt + parseInt(search_result[i][4])
					}
					document.getElementsByName("total_count")[0].innerHTML = total_cnt
					document.getElementsByName("total_count")[1].innerHTML = total_cnt
					if (sch_iniCategory != "")
					document.getElementsByName(sch_iniCategory)[0].innerHTML = "<b>"+document.getElementsByName(sch_iniCategory)[0].innerHTML+"</b>"
				 

					function search_view(val,orderb){
						document.form1.sch_iniCategory.value = val;
						document.form1.orderb.value = orderb;
						document.form1.submit();
					} 
				</script>				
				<div class="item-list-type1 no-out-border">
				<!-- { block for repeat items } -->
				
					<div class="item" onclick="goHref(&#39;57&#39;,1590,&#39;P1590_20211008AM84225_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1590_20211008AM84225_1.jpg" width="260" alt="[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1590" name="iconID1590"></span>[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)</p>
						<p class="item-price"><span id="ori_count1590" name="ori_count1590" style="display:none">64000</span>
				
						<span class="list-price">64,000</span> 
						<span class="now-price" id="promotion_ID1590" name="promotion_ID1590">41,600</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;57&#39;,1589,&#39;P1589_20211007PM32103_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1589_20211007PM32103_1.jpg" width="260" alt="홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1589" name="iconID1589"></span>홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg</p>
						<p class="item-price"><span id="ori_count1589" name="ori_count1589" style="display:none">32000</span>
				
						<span class="list-price">32,000</span> 
						<span class="now-price" id="promotion_ID1589" name="promotion_ID1589">22,400</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;&#39;,1387,&#39;P952_20190228PM40531_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P952_20190228PM40531_1.jpg" width="260" alt="★멤버쉽특가★^ 홀리스틱 치킨 위드 베지터블스 앤 허브즈 6.8kg ">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1387" name="iconID1387"><img src="./서치부분_files/icon_endtitle.gif" align="absmiddle">&nbsp;<img src="./서치부분_files/icon_Imsi.gif" align="absmiddle">&nbsp;</span>★멤버쉽특가★<br> 홀리스틱 치킨 위드 베지터블스 앤 허브즈 6.8kg </p>
						<p class="item-price"><span id="ori_count1387" name="ori_count1387" style="display:none">85000</span>
				
						<span class="list-price">85,000</span> 
						<span class="now-price" id="promotion_ID1387" name="promotion_ID1387">46,900</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;&#39;,1426,&#39;P951_20190228PM40520_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P951_20190228PM40520_1.jpg" width="260" alt="★첫 구매 특가★^ 홀리스틱 치킨 위드 베지터블스 앤 허브즈 1.8kg (전연령용)">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1426" name="iconID1426"><img src="./서치부분_files/icon_endtitle.gif" align="absmiddle">&nbsp;<img src="./서치부분_files/icon_Imsi.gif" align="absmiddle">&nbsp;</span>★첫 구매 특가★<br> 홀리스틱 치킨 위드 베지터블스 앤 허브즈 1.8kg (전연령용)</p>
						<p class="item-price"><span id="ori_count1426" name="ori_count1426" style="display:none">28000</span>
				
						<span class="list-price">28,000</span> 
						<span class="now-price" id="promotion_ID1426" name="promotion_ID1426">13,900</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;54&#39;,1590,&#39;P1590_20211008AM84225_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1590_20211008AM84225_1.jpg" width="260" alt="[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1590" name="iconID1590"></span>[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)</p>
						<p class="item-price"><span id="ori_count1590" name="ori_count1590" style="display:none">64000</span>
				
						<span class="list-price">64,000</span> 
						<span class="now-price" id="promotion_ID1590" name="promotion_ID1590">41,600</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;54&#39;,1589,&#39;P1589_20211007PM32103_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1589_20211007PM32103_1.jpg" width="260" alt="홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1589" name="iconID1589"></span>홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg</p>
						<p class="item-price"><span id="ori_count1589" name="ori_count1589" style="display:none">32000</span>
				
						<span class="list-price">32,000</span> 
						<span class="now-price" id="promotion_ID1589" name="promotion_ID1589">22,400</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;14&#39;,1590,&#39;P1590_20211008AM84225_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1590_20211008AM84225_1.jpg" width="260" alt="[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1590" name="iconID1590"></span>[사료대전] 홀리스틱 컨트리 사이드 레시피(치킨) 3.6kg (1.8kg X 2개)</p>
						<p class="item-price"><span id="ori_count1590" name="ori_count1590" style="display:none">64000</span>
				
						<span class="list-price">64,000</span> 
						<span class="now-price" id="promotion_ID1590" name="promotion_ID1590">41,600</span>
				
						</p>
					</div>
				
					<div class="item" onclick="goHref(&#39;14&#39;,1589,&#39;P1589_20211007PM32103_1.jpg&#39;)" style="cursor:pointer">
				
					<img class="item-image" src="./서치부분_files/P1589_20211007PM32103_1.jpg" width="260" alt="홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg">
				
						<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>Best Breed</p>
						<p class="item-description"><span id="iconID1589" name="iconID1589"></span>홀리스틱 컨트리 사이드 레시피(치킨) 1.8kg</p>
						<p class="item-price"><span id="ori_count1589" name="ori_count1589" style="display:none">32000</span>
				
						<span class="list-price">32,000</span> 
						<span class="now-price" id="promotion_ID1589" name="promotion_ID1589">22,400</span>
				
						</p>
					</div>
									
				<!-- { end repeat } -->
				</div>
				
				<!-- PC 페이지 -->
				<div class="pagination1 only-pc">
					<span class="btn-page prev"></span> <span class="active">1</span> <span class="btn-page next"></span>
				</div>

				<!-- 모바일 페이지 -->		
				<div class="pagination2 only-mobile">
					<span class="btn-page prev"></span><span>1</span>/<span>1</span><span class="btn-page next"></span>
				</div>

			</div>
			
		</div>
		<form name="form1">
			<input type="hidden" name="search" value="고기">
			<input type="hidden" name="sch_iniCategory">
			<input type="hidden" name="orderb">
		</form>
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
					<img src="./서치부분_files/img_contact.png" alt="CONTACT INFO - NO SPAM">
					<div class="sns-icons">
						<span class="youtubu"><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="./서치부분_files/youtubu_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://post.naver.com/welovemontraum" target="_blank"><img src="./서치부분_files/naver_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://www.facebook.com/montraum2017" target="_blank"><img src="./서치부분_files/facebook_icon.png" alt="facebook"></a></span>
						<span class="instar"><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="./서치부분_files/instargram_icon.png" alt="instargram"></a></span>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- { pc 와 mobile 화면 분기 } -->
	<div class="common-mobile-bottom">
		<div class="ico ico-news" onclick="location.href=&#39;/common/all_site/press/press.asp&#39;" style="cursor:pointer;">NEWS</div>
		<div class="ico ico-review" onclick="location.href=&#39;/common/process/productAfter/review.asp&#39;" style="cursor:pointer;">REVIEW</div>
	</div>
	<div id="copyright" class="pc-width clearfix only-pc">
		<img class="ci" src="./서치부분_files/img-ci.png" alt="MONTRAUM">

		<div class="copyright-text">
			<ul>
				<li>상호 : (주)쁘띠엘린 | </li>
				<li>쇼핑몰 : 몬트라움 | </li>
				<li>대표이사 : 표순규 | </li>
				<li>개인정보관리 및 청소년 보호 책임자 : 김홍식</li>
				<li>
					<a href="https://www.montraum.com/common/all_site/help/privacy.asp">개인정보 처리방침 &gt;</a>
					<a href="https://www.montraum.com/common/all_site/help/agreement2.asp">이용약관 &gt;</a>
				</li>
			</ul>
			<ul>
				<li>사업자등록번호 : 108-81-91594 | </li>
				<li>통신판매사업신고 : 제 2013-서울구로-0728호</li>
			</ul>
			<ul>
				<li>주소 : 서울특별시 구로구 디지털로 33길 48 대륭포스트타워 7차 13층  </li>
				<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1088191594" target="_blank">사업자정보 확인 &gt;</a></li>
			</ul>
			<p class="escrow"><strong>에스크로 서비스</strong> | 안전거래를 위해 (주)이니시스의 구매안전 (에스크로)에 가입하여 서비스를 제공하고 있습니다.)
				<a href="javascript:f_escrowKsnet();">가입사실 확인</a> &gt;</p>
		</div>

		<div class="family-site-social">
			<!--div class="select-box">
				<div class="default">FAMILY SITE</div>
			</div-->
			<!-- select class="select-box">
				<option value="">FAMILY SITE</option>
				<option value="http://www.einebaum.com">아이너바움</option>
				<option value="http://www.makenmerk.com">메켄메르크</option>
				<option value="http://www.botanicaltherapy.co.kr">보타니컬테라피</option>
				<option value="http://www.marcusnmarcus.co.kr">마커스앤마커스</option>
				<option value="http://www.moisnlois.com">모이스앤로이스</option>
				<option value="http://www.deglingos.co.kr">데글링고스</option>
				<option value="http://www.cloudbkorea.co.kr">클라우드비</option>
				<option value="http://www.donodono.co.kr">도노도노</option>
			</select -->
			<!--div class="sns_logo">
				<ul>
					<li><img src="/static/img/footer/blt_social_01.png" alt="Service" /></li>
					<li><img src="/static/img/footer/blt_social_02.png" alt="What" /></li>
					<li><img src="/static/img/footer/blt_social_03.png" alt="FACEBOOK" /></li>
					<li><img src="/static/img/footer/blt_social_04.png" alt="BLOG?" /></li>
					<li><img src="/static/img/footer/blt_social_05.png" alt="KAKAO TALK" /></li>
				</ul>
			</div-->
		</div>

	</div>
	<div id="copyright-mobile" class="only-mobile">
		<div class="clearfix copyright-top">
			<img class="ci" src="./서치부분_files/img-ci.png" alt="MONTRAUM">

			<div class="cs-center">
				<p><span class="text1">CS CENTER</span> <a href="tel:1644-3955" class="phone-number">1644-3955</a></p>
				<p class="comment">상담가능시간 10:00~17:00 (토요일/공휴일 휴무)</p>
			</div>

			<div class="family-site-social">
				<div class="bottom-sns">
					<ul>
						<li><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="./서치부분_files/youtubu_icon.png" style="width:10vw;padding-right:.56vw" alt="youtubu"></a></li>
						<li><a href="https://m.post.naver.com/profile.nhn?authorId=welovemontraum" target="_blank"><img src="./서치부분_files/naver_icon.png" style="width:10vw;" alt="naver post"></a></li>
						<li><a href="https://m.facebook.com/montraum2017" target="_blank"><img src="./서치부분_files/facebook_icon.png" style="width:10.55vw;" alt="facebook"></a></li>
						<li><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="./서치부분_files/instargram_icon.png" style="width:10.55vw;" alt="instargram"></a></li>
					</ul>
				</div>

				<!--div class="select-box">
					<div class="default">FAMILY SITE</div>
				</div-->
				<!-- select class="select-box">
					<option value="">FAMILY SITE</option>
					<option value="http://www.einebaum.com">아이너바움</option>
					<option value="http://www.makenmerk.com">메켄메르크</option>
					<option value="http://www.botanicaltherapy.co.kr">보타니컬테라피</option>
					<option value="http://www.marcusnmarcus.co.kr">마커스앤마커스</option>
					<option value="http://www.moisnlois.com">모이스앤로이스</option>
					<option value="http://www.deglingos.co.kr">데글링고스</option>
					<option value="http://www.cloudbkorea.co.kr">클라우드비</option>
					<option value="http://www.donodono.co.kr">도노도노</option>
				</select -->

				<!--div>
					<ul>
						<li><img src="/static/img/footer/blt_social_01.png" alt="Service" /></li>
						<li><img src="/static/img/footer/blt_social_02.png" alt="What" /></li>
						<li><img src="/static/img/footer/blt_social_03.png" alt="FACEBOOK" /></li>
						<li><img src="/static/img/footer/blt_social_04.png" alt="BLOG?" /></li>
						<li><img src="/static/img/footer/blt_social_05.png" alt="KAKAO TALK" /></li>
					</ul>
				</div-->
			</div>
		</div>
		<div class="copyright-text">
			<ul>
				<li>상호 : (주)쁘띠엘린 | </li>
				<li>쇼핑몰 : 몬트라움 | </li>
				<li>대표이사 : 표순규</li>
				<li>개인정보관리 및 청소년 보호 책임자 : 김홍식</li>
				<li>
					<a href="https://www.montraum.com/common/all_site/help/privacy.asp">개인정보 처리방침 &gt;</a>
					<a href="https://www.montraum.com/common/all_site/help/agreement2.asp">이용약관 &gt;</a>
				</li>
			</ul>
			<ul>
				<li>사업자등록번호 : 108-81-91594</li>
				<li>통신판매사업신고 : 제 2013-서울구로-0728호 </li>
			</ul>
			<ul>
				<li>주소 : 서울특별시 구로구 디지털로 33길 48 대륭포스트타워 7차 13층 </li>
				<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1088191594" target="_blank">사업자정보 확인 &gt;</a></li>
			</ul>
			<p class="escrow">
				<strong>에스크로 서비스</strong> | 안전거래를 위해 (주)이니시스의 구매안전 (에스크로)에<br>
				가입하여 서비스를 제공하고 있습니다.)
				<a href="javascript:f_escrowKsnet();">가입사실 확인</a> &gt;</p>
		</div>
		<div class="mobile-quick">
			<div class="log-btn">
				
				<a href="https://www.montraum.com/common/all_site/member/logout.asp?inicategory=0"><div class="logout-btn only-mobile">logout</div></a>
				
			</div>
			<div class="go-top"><p>TOP</p></div>
		</div>
	</div>

</footer>
<!--풋터영역종료-->
</div><script type="text/javascript" id="">(function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))})(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");var fbPixelIdList=google_tag_manager["GTM-N6PTCN3"].macro(57);fbPixelIdList.map(function(b){fbq("set","autoConfig",!1,b);fbq("init",b)});fbq("track","PageView");</script>
<script type="text/javascript" id="" src="./서치부분_files/js(3)"></script><script type="text/javascript" id="">(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","https://www.google-analytics.com/analytics.js","ga");var gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(60);gaTrackingCodeList.map(function(a){ga("create",a.trackingCode,"auto",a.name)});var gaCustomTask=google_tag_manager["GTM-N6PTCN3"].macro(61);
gaTrackingCodeList.map(function(a){ga(a.name+".set","customTask",gaCustomTask);ga(a.name+".require","ec")});var utmParams=google_tag_manager["GTM-N6PTCN3"].macro(101);
utmParams&&Object.keys(utmParams).length?gaTrackingCodeList.map(function(a){ga(a.name+".send","pageview",{campaignName:utmParams.name,campaignSource:utmParams.source,campaignMedium:utmParams.medium,campaignKeyword:utmParams.keyword,campaignContent:utmParams.content,referrer:google_tag_manager["GTM-N6PTCN3"].macro(105)})}):gaTrackingCodeList.map(function(a){ga(a.name+".send","pageview",{referrer:google_tag_manager["GTM-N6PTCN3"].macro(109)})});</script><script type="text/javascript" id="">(function(e,c,d,f,a,b){e.kakaoPixel||(a=c.createElement(d),b=c.getElementsByTagName(d)[0],a.async=1,a.src=f,a.onload=function(){kakaoPixel("1234567890123456789").pageView()},b.parentNode.insertBefore(a,b))})(window,document,"script","//t1.daumcdn.net/adfit/static/kp.js");</script>
<script type="text/javascript" id="" src="./서치부분_files/taggers-sentry.4-4-0.min.js.다운로드"></script>
<script type="text/javascript" id="">window.gtag||(window.gtag=window.gtag||function(){(window.dataLayer=window.dataLayer||[]).push(arguments)},window.gtag("js",new Date));window.gtag("config","AW-674646633");</script>

<div id="quickmenu" name="quickmenu" class="only-pc" style="top: 720px;">
	<ul class="quick_banner">
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=162"><li class="nosmell"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=136"><li class="bestbreed"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=350"><li class="firstbuying"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=462"><li class="sale"></li></a>

	</ul>
	<div class="viewed">
		<a href="javascript:gdscroll(-86)" onfocus="blur()"><p><img src="./서치부분_files/quickmenu_arrowup.png"></p></a>
		<p class="tit">VIEWED <span id="num" name="num">(5)개</span></p>
		<div id="TODAYLIST2" name="TODAYLIST2" style="height:255px;overflow:hidden;"><ul class="list"><li><img width="80" src="./서치부분_files/P1494_20210830AM81611_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1494&amp;thisCategory=107&#39;"></li> <li><img width="80" src="./서치부분_files/P1202_20210830AM81056_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1202&amp;thisCategory=24&#39;"></li> <li><img width="80" src="./서치부분_files/P932_20201223PM21043_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=932&amp;thisCategory=24&#39;"></li> <li><img width="80" src="./서치부분_files/P1584_20211008AM84334_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1584&amp;thisCategory=29&#39;"></li> <li><img width="80" src="./서치부분_files/P1585_20211008AM84312_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1585&amp;thisCategory=29&#39;"></li> </ul></div>
		<a href="javascript:gdscroll(86)" onfocus="blur()"><p><img src="./서치부분_files/quickmenu_arrowdown.png"></p></a>
	</div>
	<div class="go-top"><p>TOP</p></div>
</div>
<script type="text/javascript">
	//퀵메뉴
	$(function() {
		var UI = {
			init: function() {this.quickMenuFn();},
			initialize: function() {
				this.id = {
					target: {quick: '#quickmenu'}
				};
				this.init();
			},
			quickMenuFn: function() {
				var quick = $(this.id.target.quick);
				var qTop = parseInt(quick.css('top'));

				$(window).scroll(function() {
					var winTop = $(window).scrollTop();
					var preTop = qTop + winTop;
					var newTop = winTop + qTop - (parseInt(quick.css('height'))+qTop-$(window).height()+10);

					if (newTop <= qTop) {
						newTop = qTop;
					}
					quick.stop().animate({top: newTop}, 400);
				})
			},

			scrollTop: function(eTarget, speed) {
				var speed = speed || null;
				eTarget.on('click', function() {
					$('html, body').animate({
						scrollTop: $("body").offset().top
					}, speed)
				})
			}
		};
		$(function() {
			UI.initialize();
		})
	})
</script>

<!-- 모바일 사이드바 170621-최문영작업 -->
<div id="sidebar2">
	<div class="top">
		<img src="./서치부분_files/img_sidebar_logo.png" alt="MONTRAUM" class="ci">
		<div class="buttons">
			
			<a href="https://www.montraum.com/common/all_site/member/logout.asp?inicategory=0">로그아웃</a>
			<a href="https://www.montraum.com/common/process/buy_list.asp?iniCategory=0">내정보</a>
			
		</div>
	</div>

	<div class="block-1">
		<ul>
			<a href="https://www.montraum.com/common/process/shopbest.asp?category_etc_id=1&amp;iniCategory=0"><li class="ico ico-best" style="background-size:initial;">BEST</li></a>
			<a href="https://www.montraum.com/common/all_site/Notice/event.asp"><li class="ico ico-event" style="background-size:initial;">EVENT</li></a>
			<a href="https://www.montraum.com/about/members.asp"><li class="ico ico-membership" style="background-size:initial;">MEMBERSHIP</li></a>
		</ul>
	</div>

	<div class="tab-contents">
		<div class="tab-header">
			<ul class="clearfix">
				<li class="tab1 active" data-target="content1">CATEGORY</li>
				<li class="tab2" data-target="content2">BRAND</li>
				<li class="tab3" data-target="content3">COMMUNITY</li>
			</ul>
		</div>

		<div class="tab-content">
			<!-- categoty -->
			<div class="content1 active">
				<ul class="cate-content">
					<li class="cate-list-skin open">
						<h3 class="depth-1" onclick="allCateClose(0);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>강아지 사료</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=29">그레인프리</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=57">홀리스틱</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=60">연령별</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=95">프리미엄</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=24&amp;thisCategory=108">간식&amp;영양제</a></div>
							
						</div>
					</li>
					<li class="cate-list-out">
						<h3 class="depth-1" onclick="allCateClose(2);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>고양이 사료</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=109">그레인프리</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=110">홀리스틱</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=111">연령별</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=114">프리미엄</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=107&amp;thisCategory=112">간식&amp;영양제</a></div>
							
						</div>
					</li>
					<li class="cate-list-bedding">
						<h3 class="depth-1" onclick="allCateClose(1);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>배변용품</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=30">트레이닝 패드</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=31">노스멜 패드</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=115">피크닉 패드</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=117">퍼펙션 패드</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=121">아로마 패드</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=25&amp;thisCategory=96">원터치 배변판</a></div>
							
						</div>
					</li>
					<li class="cate-list-living">
						<h3 class="depth-1" onclick="allCateClose(3);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>미용</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=102">콤</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=55">코트킹</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=52">브러쉬</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=62">가위</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=119">목욕타올</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=27&amp;thisCategory=105">발톱깎이</a></div>
							
						</div>
					</li>
					<li class="cate-list-toy">
						<h3 class="depth-1" onclick="allCateClose(4);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>리빙/외출</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=99">펫 백팩</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=81">펫 슬링백</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=86">듀얼마약방석</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=43">메모리폼 침대</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=120">넥카라</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=28&amp;thisCategory=104">장난감</a></div>
							
						</div>
					</li>
					<li class="cate-list-cat">
						<h3 class="depth-1" onclick="allCateClose(5);$(this).parent().find(&#39;.depth-2&#39;).slideToggle();"><p>고양이 용품</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=113">화장실</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=78">모래</a></div>
							
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=76&amp;thisCategory=79">미용</a></div>
							
						</div>
					</li>
				</ul>
			</div>
			<!-- //categoty -->

			<!-- brand -->
			<div class="content2">
				<ul class="cate-content">
					<li class="cate-list open">
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=54">BEST BREED <span class="info">(Holistic Pet Nutrition)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=20">PRODOGGIE <span class="info">(Smart Training Pad)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=74">WEGONO <span class="info">(Easy&amp;Trendy Pet’s Outdoor Goods)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=22">MARS ALCOSO <span class="info">(Masterpiece Grooming Tools)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=73">DIG &amp; ROLL <span class="info">(Ideal Cat Brand)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=21">KOMPLETT <span class="info">(PET BED)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=82">ICELAND PET <span class="info">(The Clean Power of Nature)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/shopmain.asp?iniCategory=2&amp;thisCategory=101">CARNA4 <span class="info">(Hand Crafted Pet Food)</span></a></div>
						</div>
					</li>
				</ul>
			</div>
			<!-- //brand -->

			<!-- community -->
			<div class="content3">
				<ul class="cate-content">
					<li class="cate-list open">
						<div class="depth">
							<div><a href="https://www.montraum.com/common/process/productAfter/review.asp">Product Review</a></div>
							<div><a href="https://www.montraum.com/common/all_site/Notice/notice.asp">Notice</a></div>
							<div><a href="https://www.montraum.com/common/all_site/faq.asp">FAQ</a></div>
							<div><a href="https://www.montraum.com/common/process/qanda/list.asp">1:1 QNA</a></div>
							<div><a href="https://www.montraum.com/about/members.asp">Membership</a></div>
							<div><a href="https://www.montraum.com/common/all_site/press/press.asp">News</a></div>
						</div>
					</li>
				</ul>
			</div>
			<!-- //community -->

		</div>
	</div>
	<div class="viewed-items">
		<h3>VIEWED (<span id="viewedCnt">5</span>)</h3>
		<div class="viewed-item-list" id="TODAYLIST"><div class="item"><img src="./서치부분_files/P1494_20210830AM81611_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1494&amp;thisCategory=107&#39;"></div><div class="item"><img src="./서치부분_files/P1202_20210830AM81056_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1202&amp;thisCategory=24&#39;"></div><div class="item"><img src="./서치부분_files/P932_20201223PM21043_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=932&amp;thisCategory=24&#39;"></div><div class="item"><img src="./서치부분_files/P1584_20211008AM84334_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1584&amp;thisCategory=29&#39;"></div><div class="item"><img src="./서치부분_files/P1585_20211008AM84312_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1585&amp;thisCategory=29&#39;"></div></div>
	</div>
</div>
<!--사이드바 종료-->

<div id="body-mask" onclick="closeSidebar();"></div>

<script type="text/javascript">
	$(document).ready(function(){
		$(".select-box").change(function(){
			if($(this).val() != ""){
				$("#familyFrm").attr("action",$(this).val());
				$("#familyFrm").submit();
			}
		});
	});

	function f_escrowKsnet(){
		//이니시스 에스크로 가입확인
		window.open("https://mark.inicis.com/mark/escrow_popup.php?mid=monvatesc0","mark","scrollbars=no,resizable=no,width=565,height=683");
	}


	var endnum=0

	if(getCookie("TodayGoods") != ""){
		TodayGoods = getCookie("TodayGoods").split(",")
		TodayGoods.unique();
		endnum = TodayGoods.length
	}else{
		TodayGoods = new Array()
		endnum = 0;
	}
	document.getElementById("viewedCnt").innerText = endnum;
	document.getElementsByName("num")[0].innerText = "("+endnum+")개"

	if (endnum>0) {
		var sumText2 ="";
		for (var i=0 ; i<endnum ; i++) {

			if (TodayGoods[i].split("^").length==4 && TodayGoods[i].indexOf("category_site")==-1) {
				if (TodayGoods[i].split("^")[1].substring(0,1) == "P")
				{
					sumText = "<div class=\"item\"><img src='/_vir0001/product_img/middle/"+ TodayGoods[i].split("^")[1] + "' "
					sumText2 += "<li><img width='80' width='80' src='/_vir0001/product_img/middle/"+ TodayGoods[i].split("^")[1] + "' style='cursor:pointer;' onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\"></li> "
				}else{
					sumText = "<div class=\"item\"><img src='/_vir0001/product_img/ini_product/middle/"+ TodayGoods[i].split("^")[1] + "' "
					sumText2 += "<li><img width='80' width='80' src='/_vir0001/product_img/ini_product/middle/"+ TodayGoods[i].split("^")[1] + "' style='cursor:pointer;' onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\"></li> "
				}

				sumText = sumText + " onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\" "
				sumText = sumText + "></div>"



				document.getElementById("TODAYLIST").innerHTML = document.getElementById("TODAYLIST").innerHTML + sumText
			}
		}
		document.getElementById("TODAYLIST2").innerHTML = "<ul class='list'>" + sumText2 + "</ul>"

	}
	function gdscroll(gap)
	{
		var gdscroll = document.getElementsByName('TODAYLIST2')[0];
		gdscroll.scrollTop += gap;
	}

</script>

<form name="familyFrm" id="familyFrm" action="https://www.montraum.com/search/search.asp?search=%EA%B3%A0%EA%B8%B0" target="_blank"></form>


<script type="text/javascript">
	$(function(){
		$(".cate-content li .depth-1").click(function(){
			if( $(this).parent().hasClass('open') ) {
				$(this).parent().removeClass('open');
			} else {
				$(this).parents('.cate-content').find(".open").removeClass('open');
				$(this).parent().addClass('open');
			}
		});
	})

	// TAB 의 동작은 스크립트
	$(function(){
		$(".tab-contents .tab-header li").click(function(){
			var target = $(this).attr('data-target');
			$(this).parent().find("li.active").removeClass('active');
			$(this).addClass('active');
			$(this).closest('.tab-contents').find('.tab-content div.active').removeClass('active');
			$(this).closest('.tab-contents').find("."+target).addClass('active');
		});
	});

	function allCateClose(idx) {
		var cateList = document.getElementsByName("cateList");
		for(i=0;i<cateList.length;i++){
			if(idx != i) {
				cateList[i].style.display = "none";
			}
		}
	}
</script>
<script language="javascript" src="./서치부분_files/code.js.다운로드"></script>


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc14.acecounter.com','8080','AS4A42151972793','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://gtc14.acecounter.com:8080/?uid=AS4A42151972793&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->


<!-- WIDERPLANET  SCRIPT START 2018.5.21 (공통) (* 공통 태그는 타 태그(아이템, 장바구니, 구매완료, 전환 완료)보다 하단에 위치하여야 합니다. ) -->
<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1639927822752" src="./서치부분_files/wpc.php"></script></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"41190",	/*광고주 코드 */
		ty:"Home",	/*트래킹태그 타입 */
		device:"web"	/*디바이스 종류  (web 또는  mobile)*/

	};
}));
</script>
<script type="text/javascript" async="" src="./서치부분_files/wp_astg_4.0.js.다운로드"></script>
<!-- WIDERPLANET  SCRIPT START 2018.5.21 (공통)-->


<!-- Enliple Common Tracker v3.6 [공용] start -->
<script type="text/javascript">
<!--
function mobRf() {
    var rf = new EN();
    rf.setData("userid", "montraum");
    rf.setSSL(true);
    rf.sendRf();
}
//-->
</script>
<!-- Enliple Common Tracker v3.6 [공용] end -->



<script src="./서치부분_files/enliple_min3.6.js.다운로드" defer="defer" onload="mobRf();"></script>



<!-- ADN Tracker[공통] start -->
<script type="text/javascript">
var adn_param = adn_param || [];
adn_param.push([{ 	
 ui:'101877',
 ut:'Home'
}]);
</script>
<script type="text/javascript" async="" src="./서치부분_files/adn_tags_1.0.0.js.다운로드"></script>
<!-- ADN Tracker[공통] end -->

<!-- ADN 크로징 설치  start -->
<script type="text/javascript">
var adn_panel_param = adn_panel_param || [];
adn_panel_param.push([{
 ui:'101877',	
 ci:'1018770001',
 gi:'21528'
}]);
</script>
<script type="text/javascript" async="" src="./서치부분_files/adn_closingad_1.1.1.js.다운로드"></script>
<!-- ADN 크로징 설치 end -->

<!-- ADN 크로징 설치 반응형 start -->
<script type="text/javascript">
var adn_mobile_panel_param = adn_mobile_panel_param || [];
adn_mobile_panel_param.push([{
 ui:'101877',  
 ci:'1018770002',
 gi:'21530'
}]);
</script>
<script type="text/javascript" async="" src="./서치부분_files/adn_mobile_closingad_1.1.2.js.다운로드"></script>
<!-- ADN 크로징 설치 end -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WDLJW3X"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


<script language="javascript">
function goHref(iniCategory,pack_id,img) {
	if ("all"=="all"){
		if (getCookie("TodayGoods").indexOf(pack_id +"^"+ img +",") > -1)
		{			
			setCookie("TodayGoods",(getCookie("TodayGoods").replace(pack_id +"^"+ img +",","")),1)			
			setCookie("TodayGoods",(pack_id +"^"+ img +"^"+ iniCategory +"^," + getCookie("TodayGoods")),1)
		}else{
						
			setCookie("TodayGoods",(pack_id +"^"+ img +"^"+ iniCategory +"^," + getCookie("TodayGoods")),1)			
			CookieNum = getCookie("TodayGoods").split(",").length-1
			if( CookieNum > 10){
				setCookie("TodayGoods",(getCookie("TodayGoods").replace(getCookie("TodayGoods").split(",")[CookieNum-1]+",","")),1)
			}
		}
	}
	location.href="/common/process/shopview.asp?iniCategory="+iniCategory+"&pack_content_id="+pack_id
}


function MM_openBrWindow(val) {
	window.open("/_vir0001/process/shopviewimg.asp?pack_content_id="+val,"shopMainWindow","width=900,height=510,left=0,top=0,scrollbars=no")
}


			for (var iconI=0 ; iconI<document.getElementsByName("iconID1387").length ; iconI++) {
				if (document.getElementsByName("iconID1387")[iconI].innerHTML.indexOf("icon_endtitle")==-1){
					document.getElementsByName("iconID1387")[iconI].innerHTML = "<img src='/_vir0001/process/partImages/icon_endtitle.gif' align='absmiddle'>&nbsp;"
				}
				
				if (document.getElementsByName("iconID1387")[iconI].innerHTML.indexOf("Imsi")==-1) {
					document.getElementsByName("iconID1387")[iconI].innerHTML = document.getElementsByName("iconID1387")[iconI].innerHTML + "<img src='/_vir0001/process/partImages/icon_Imsi.gif' align='absmiddle'>&nbsp;"
				}
			}

			for (var iconI=0 ; iconI<document.getElementsByName("iconID1426").length ; iconI++) {
				if (document.getElementsByName("iconID1426")[iconI].innerHTML.indexOf("icon_endtitle")==-1){
					document.getElementsByName("iconID1426")[iconI].innerHTML = "<img src='/_vir0001/process/partImages/icon_endtitle.gif' align='absmiddle'>&nbsp;"
				}
				
				if (document.getElementsByName("iconID1426")[iconI].innerHTML.indexOf("Imsi")==-1) {
					document.getElementsByName("iconID1426")[iconI].innerHTML = document.getElementsByName("iconID1426")[iconI].innerHTML + "<img src='/_vir0001/process/partImages/icon_Imsi.gif' align='absmiddle'>&nbsp;"
				}
			}

</script><div id="adn_container" style="display:none"></div><script type="text/javascript" id="">(function(){var b=google_tag_manager["GTM-N6PTCN3"].macro(130);if(!b)return null;var c=google_tag_manager["GTM-N6PTCN3"].macro(131),d=google_tag_manager["GTM-N6PTCN3"].macro(132),e=google_tag_manager["GTM-N6PTCN3"].macro(133),a=google_tag_manager["GTM-N6PTCN3"].macro(136);a.map(function(a){ga(a.name+".send","event",{eventCategory:c.customEvent,eventAction:d.naverSearchParameter,eventValue:b,dimension1:e,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(140)})})})();</script><script type="text/javascript" id="">var eventCategory=google_tag_manager["GTM-N6PTCN3"].macro(141),eventAction=google_tag_manager["GTM-N6PTCN3"].macro(142),eventLabel=google_tag_manager["GTM-N6PTCN3"].macro(267),utmParams=google_tag_manager["GTM-N6PTCN3"].macro(307),pageURL=google_tag_manager["GTM-N6PTCN3"].macro(308),customReferrer=google_tag_manager["GTM-N6PTCN3"].macro(310),referrerType=google_tag_manager["GTM-N6PTCN3"].macro(311),userAgent=google_tag_manager["GTM-N6PTCN3"].macro(312),naverSearchParameter=google_tag_manager["GTM-N6PTCN3"].macro(315),productId=google_tag_manager["GTM-N6PTCN3"].macro(328),gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(331);
gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.pageView,eventLabel:customReferrer,dimension1:pageURL,dimension2:customReferrer,dimension3:userAgent,dimension5:referrerType,dimension6:"\uc778\uc9c0",dimension7:naverSearchParameter,dimension8:productId,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(335)})});
utmParams&&utmParams.keyword&&gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.searchKeywords,eventLabel:eventLabel.keyword,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(339)})});
naverSearchParameter&&gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.naverSearchParameter,eventLabel:eventLabel.naverSearchParameter,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(343)})});</script><div id="adn_panel_wrap" class="closing_bg" style="display: none;"></div><script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(408);try{google_tag_manager["GTM-N6PTCN3"].macro(411)(a)}catch(b){console.log(b)}kakaoPixel("1234567890123456789").search({keyword:String(a.searchString)})})();</script><script type="text/javascript" id="">var eventCategory=google_tag_manager["GTM-N6PTCN3"].macro(412),eventAction=google_tag_manager["GTM-N6PTCN3"].macro(413),eventLabel=google_tag_manager["GTM-N6PTCN3"].macro(538),pageURL=google_tag_manager["GTM-N6PTCN3"].macro(539),gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(542);gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.search,eventLabel:eventLabel.keyword,dimension1:pageURL,dimension6:"\uad00\uc2ec",nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(546)})});</script>
<script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(580);try{google_tag_manager["GTM-N6PTCN3"].macro(583)(a)}catch(b){console.log(b)}fbq("track","Search",{content_type:a.productType,content_ids:a.content_ids,search_string:a.searchString,currency:google_tag_manager["GTM-N6PTCN3"].macro(584),value:a.revenue})})();</script>
<script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(624);a&&a.keyword&&fbq("trackCustom","SearchKeywords",{keyword:a.keyword})})();</script>
<script type="text/javascript" id="">(function(){var b=google_tag_manager["GTM-N6PTCN3"].macro(658);try{google_tag_manager["GTM-N6PTCN3"].macro(661)(b)}catch(c){console.log(c)}var d=google_tag_manager["GTM-N6PTCN3"].macro(662),e=google_tag_manager["GTM-N6PTCN3"].macro(663),a=google_tag_manager["GTM-N6PTCN3"].macro(788);a=[{googleBusinessVertical:"retail",eventLabel:a.retail},{googleBusinessVertical:"custom",eventLabel:a.custom}];a.map(function(a){gtag("event",e.search,{send_to:"AW-674646633",id:b.content_ids,google_business_vertical:a.googleBusinessVertical,event_category:d.adsRemarketingTag,event_label:a.eventLabel,non_interaction:!0})})})();</script></body></html>



</body>
</html>