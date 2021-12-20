<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!-- saved from url=(0088)https://www.montraum.com/common/process/shopview.asp?thisCategory=52&pack_content_id=935 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" async="" src="./상세상품_files/f.txt"></script>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>상세페이지</title>
	<meta name="description" content="">
	<meta name="author" content="">
<jsp:include page="includes/header.jsp"/>
	<script type="text/javascript" src="../resources/js/jquery-1.11.3.min.js"></script>
<script language="javascript">
	httpUrl = "/common/process/shopview.asp?thisCategory=52&pack_content_id=935"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fshopview%2Easp%3FthisCategory%3D52%26pack%5Fcontent%5Fid%3D935"
	}
</script>
<style>
	.products_reviews_section{width:100%;margin: 0;padding: 0;}
	.products_reviews_header{diplay:block;margin: 0;padding: 0;overflow: hidden;float: right;}
	.products_reviews_header .review_section{diplay:block;float:left;}
	.products_reviews_header .review_section a{diplay:block;color:#8e8e8e;float:left;font-size:14px;}
	.products_reviews_header .review_section a:hover{color:#000;font-weight:bold}
	.products_reviews_header .review_section a:active{color:#000;font-weight:bold}
	.products_reviews_header .sort_type_divider{padding: 0 18px;color: #8e8e8e;}
</style>



<script language="javascript">
	viewImg = new Array();

	viewImg.push(new Array(new Image,"/_vir0001/product_img/P935_20211105AM111625_1.jpg"));

	viewImg.push(new Array(new Image,"/_vir0001/product_img/P935_20190402PM50158_2.jpg"));

	for (var i=0; i<viewImg.length; i++) {
		viewImg[i][0].src = viewImg[i][1];
	}

	function changeLargeImg(val) {
		document.images["largeImg"].src = viewImg[val][0].src;
	}

	viewOptionArray = new Array()

	viewOption1515 = new Array()
	viewOptionArray.push (1515)

	viewOption1515.push(new Array("703","멕시핀 직사각형 핀브러쉬","브러쉬","",20,"y","n","EMABA001","","935"))




	viewPackLink = new Array();

</script>
<section>
<form name="form1" method="post">
<input type="hidden" name="gubun">
<input type="hidden" name="category_name_id" value="52">
<div id="page-item-view" class="pc-width">
	<div class="info-header clearfix">
		<div class="only-mobile">
			<h1><script>view_name("view_brand","22","write","","");</script>${shopdetail.PRD_NAME}</h1>
			<p class="sub-title">핀 브러쉬</p>
			<p class="event-name" id="promotionTitle1" name="promotionTitle1"></p>
		</div>


		<div class="item-images">
			<div class="image-big">
				<script language="javascript">document.write ('<img src="'+ viewImg[0][1] +'" name="largeImg" alt="" />');</script><img src="./상세상품_files/P935_20211105AM111625_1.jpg" name="largeImg" alt="">
			</div>
			<ul class="image-thumbs clearfix only-pc">
			<script language="javascript">
				for (var i=0; i<viewImg.length; i++)  {
					document.write ('<li><img src="'+ viewImg[i][1] +'" onmouseover="changeLargeImg('+ i +')" onclick="MM_openBrWindow('+ i +')" style="cursor: pointer; width: 80px; height: 80px;" alt="" /></li>');
				}
			</script><li><img src="./상세상품_files/P935_20211105AM111625_1.jpg" onmouseover="changeLargeImg(0)" onclick="MM_openBrWindow(0)" style="cursor: pointer; width: 80px; height: 80px;" alt=""></li><li><img src="./상세상품_files/P935_20190402PM50158_2.jpg" onmouseover="changeLargeImg(1)" onclick="MM_openBrWindow(1)" style="cursor: pointer; width: 80px; height: 80px;" alt=""></li>
			</ul>
		</div>

		<div class="item-summary">
			<div class="only-pc">
				<h2><script>view_name("view_brand","22","write","","");</script>${shopdetail.PRD_NAME}</h2>
				<p class="sub-title">${shopdetail.PRD_COMPANY}</p>
				<p class="event-name" id="promotionTitle2" name="promotionTitle2"></p>
			</div>

			<table class="item-def">
				<tbody><tr>
					<th>판매가</th>
					<td>
						<span id="ori_count935" name="ori_count935" style="display:none">${shopdetail.PRD_COST_PRICE}</span>

						<span class="list-price">${shopdetail.PRD_COST_PRICE}</span>
						<span class="now-price" id="promotion_ID" name="promotion_ID">${shopdetail.PRD_AMOUNT}</span>

					</td>
				</tr>
				<tr id="rank_info" name="rank_info">
					<th>우수 회원가</th>
					<td><span class="bonus-point" id="promotion_ID2" name="promotion_ID2"><b>${shopdetail.PRD_AMOUNT}</b> <br class="only-mobile"><span class="bonus-point2">5%추가할인</span> <span class="bonus-point3" "="">(일부 특가상품 제외)</span></span> <!--<img src="partImages/onstore_detail_helpicon.gif" onmouseover="help_msg(true)" onmouseout="help_msg(false)" />--></td>
					
				</tr>
				<tr>
					<th>구매수량</th>
					<td>
						<select class="type2 buy-count" name="cnt" onchange="javascript:sumPriceChange();">
						<script language="javascript">
						/* 	for (var i=1; i<=10; i++) document.write ("<option value='"+ i +"'>"+ i +"</option>"); */
						</script><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option>
						<option value="20">20</option></select>
					</td>
				</tr>
			</tbody></table>

			<div class="item-options">
			
			<script language="javascript">
				maxThisCnt = 20 //단품 수
				var isSoldOut = false;
				for (var i=0; i<viewOptionArray.length; i++) {
					thisArray = eval("viewOption" + viewOptionArray[i]);

					if (thisArray.length == 1) {
						document.write ("<input type='hidden' name='product_id' value='"+ thisArray[0][0] +"'>");
						document.write ("<input type='hidden' name='pack_content_id' value='935'>");
						document.write ("<input type='hidden' name='pack_link' value='0'>");

						if (maxThisCnt>thisArray[0][4]) {
							maxThisCnt = thisArray[0][4];
						}
						if (maxThisCnt <= 0){isSoldOut = true;};
					} else {
						// 2013-02-15 변경 카테고리별 타이틀 변경
						sameCategory = "";

						for (var nowCategory=0; nowCategory<thisArray.length; nowCategory++) {
							if (nowCategory == 0) {
								sameCategory = thisArray[0][1];
							}
							else {
								if (sameCategory != thisArray[nowCategory][1]) {
									sameCategory = "";
									break;
								}
							}
						}

						if (sameCategory != "" && thisArray[0][3] != "") {
							document.write ("<select class='type1 item-option' name='product_id' onchange='countCnt()' id='"+ viewOptionArray[i] +"'><option value=''>---- "+ sameCategory +" 선택 ----</option>");
						}
						else {
							document.write ("<select class='type1 item-option' name='product_id' onchange='countCnt()' id='"+ viewOptionArray[i] +"'><option value=''>---- "+ defaultValue(sameCategory,thisArray[0][2]) +" 선택 ----</option>");
						}

						optionMake = new Array();

						for (var j=0; j<thisArray.length; j++) {
							if (thisArray[j][5] == "y") {
								optionMake.push("<option value='"+ thisArray[j][0] +"'");

								if (thisArray[j][8] != "") {
									optionMake.push("style='color:magenta'>[예약판매]");
								}
								else {
									if (parseInt(thisArray[j][4]) > 0) {
										optionMake.push(">");
									}
									else {
										optionMake.push("style='color:red'>[품절]");
									}
								}

								if (sameCategory == "") {
									optionMake.push(""+ thisArray[j][1] + " " + thisArray[j][3] +"</option>");
								}
								else {
									optionMake.push(""+ thisArray[j][3] +"</option>");
								}
							}
						}

						document.write (optionMake.join(""))
						document.write ("</select>")
						document.write ("<input type='hidden' name='pack_content_id' value='935'>")
						document.write ("<input type='hidden' name='pack_link' value='0'>")
					}
				}

			</script><input type="hidden" name="product_id" value="703"><input type="hidden" name="pack_content_id" value="935"><input type="hidden" name="pack_link" value="0">
			</div>

			<input type="hidden" name="viewPackPrice" value="0">
			<!--
			<table class="item-num">
				<tr>
					<th>사은품1</th>
					<td>
						<div class="num-select">
							<div class="number">1</div>
							<!-- 아래 onclick event 는 별도의 javascript 라이브러리로 다듬는 게 좋겠습니다.
							<div class="btn btn-increase"
								onclick="$(this).parent().find('.number').html( parseInt($(this).parent().find('.number').html()) + 1  );"></div>
							<div class="btn btn-decrease"
								onclick="$(this).parent().find('.number').html( parseInt($(this).parent().find('.number').html()) - 1  );"></div>
						</div>
						<div class="price">144,700</div>
						<div class="delete"><img src="/static/img/common/btn_delete.png" /></div>
					</td>
				</tr>
				<tr>
					<th>사은품2</th>
					<td>
						<div class="num-select">
							<div class="number">1</div>
							<div class="btn btn-increase"></div>
							<div class="btn btn-decrease"></div>
						</div>
						<div class="price">144,700</div>
						<div class="delete"><img src="/static/img/common/btn_delete.png" /></div>
					</td>
				</tr>
			</table>
			-->
			<div class="total-price">
				총 합계금액
				<span class="now-price" id="sumPrice" name="sumPrice">${shopdetail.PRD_AMOUNT}</span>
			</div>

			<div class="action-buttons" id="buttonTr" name="buttonTr">
			
				<div class="buy-now" onclick="this_submit();javascript:AEC_F_D(&#39;935&#39;, &#39;i&#39;, $(&#39;#cnt&#39;).val());">BUY NOW</div>
				<div class="add-cart" id="cartBtn" onclick="this_submit(&#39;cart&#39;);javascript:AEC_F_D(&#39;935&#39;, &#39;i&#39;, $(&#39;#cnt&#39;).val());">ADD CART</div>
				<div class="wish-list" id="wishBtn" onclick="this_submit(&#39;wish&#39;)">WISH LIST</div>
			
			</div>
			<div id="buttonTr" class="action-buttons" name="buttonTr" style="display:none">
				<div class="sold-out" onclick="show_restock_view()">[품절] 재입고 알리미 신청</div>
			</div>
			<span style="color:red;padding:15px" id="readySpan" name="readySpan"></span>
		</div>
	</div>
	<script type="text/javascript">
	<!--
		//전체 품절 표시
		if(isSoldOut){
			// 품절시 할인가격이 아닌 RRP로 표시함.
			document.getElementsByName("ori_count935")[0].style.display = "none"
			document.getElementsByName("promotion_ID")[0].innerHTML = document.getElementsByName("sumPrice")[0].innerHTML = comma_make(document.getElementsByName("ori_count935")[0].innerHTML);
			document.getElementsByName("rank_info")[0].style.display = "none";
		}
	//-->
	</script>


<!--추천상품-->
<!-- ADN 상품패널 설치 start -->
<script type="text/javascript">
var adn_suggestad_param = adn_suggestad_param || [];
adn_suggestad_param.push([{
 ui:'101877',
 ci:'1018770001',
 gi:'21527'
}]);
</script>
<script type="text/javascript" src="./상세상품_files/adn_suggestad_1.0.1.js.다운로드"></script><div id="suggestad_wrap_24675306423" style="display:none;"></div>
<!-- ADN 상품패널 설치 end -->

<!-- ADN 상품패널 설치 MO start -->
<script type="text/javascript">
var adn_suggestad_mobile_param = adn_suggestad_mobile_param || [];
adn_suggestad_mobile_param.push([{
 ui:'101877',
 ci:'1018770002',
 gi:'21529'
}]);
</script>
<script type="text/javascript" src="./상세상품_files/adn_mobile_suggestad_1.0.2.js.다운로드"></script><div id="suggestad_mobile_wrap_98836828929" style="display:none;"></div>
<!-- ADN 상품패널 설치 end -->




<!--추천상품-->

	<div class="contents-wrapper pc-width item-detail">
		<div class="tab-contents">
			<div class="tab-header">
				<ul class="clearfix">
					<li class="tab1 active" data-target="content1">상품설명</li>
					<li class="tab2" data-target="content2">상품리뷰(<span id="reviewCnt" name="reviewCnt">60</span>)</li>
					<li class="tab3" data-target="content3">배송/교환/환불</li>
				</ul>
			</div>
			<div class="tab-content">
				<!--
				메뉴 li 클릭시 data-target을 parents().find() 형태로 찾아 active 를 주는 방식을 추천합니다.
				 -->

				<div class="content1 active">

					<div>
						<center>


	<img src="./상세상품_files/top.jpg"><br>
	<img src="./상세상품_files/main.jpg"><br>
	<img src="./상세상품_files/point.jpg"><br>
	<img src="./상세상품_files/detail.jpg"><br>
	<img src="./상세상품_files/tit_bn.jpg"><br>
	<img src="./상세상품_files/product_care_01.jpg"><br>
	<img src="./상세상품_files/brush_care.jpg"><br>
	<img src="./상세상품_files/self_care.jpg"><br>
	<img src="./상세상품_files/line_up.jpg"><br>
	<img src="./상세상품_files/info.jpg"><br>
<center>

					</center></center></div>
					<img src="./상세상품_files/montraum_promise.jpg">
				</div>

				<div class="content2">
				</div>

				<div class="content3">
					<!--img src="/_vir0001/process/partImages/shopping_view_cg.gif"-->
					<div>
						<h3>배송 안내</h3>
						<p>결제 완료 후 배송에서 수령까지 평균 2~3일 정도 소요됩니다.(토요일, 공휴일 제외)</p>
						<p>최종결제 금액 기준 3만 원 이상일 경우 배송비가 무료이며,3만 원 미만일 경우 배송비가 부담됩니다.</p>
						<p>도서, 산간지역은 2~4일 지연될 수 있으며, 배송비가 추가될 수 있습니다.</p>
						<p>&nbsp;</p>
						<h3>택배사 안내</h3>
						<p>몬트라움 주문상품은 CJ 대한통운 택배사를 통해 배송됩니다.</p>
						<p>&nbsp;</p>
						<h3>교환 및 반품 안내</h3>
						<p>고객 변심 및 착오에 의한 교환/반품은 수령일로부터 7일 이내 가능합니다.</p>
						<p>불량제품 또는 제품에 의한 문제 발생 시 전액(해당 상품) 교환/환불해드립니다. (상품 수령일로부터 3개월, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내)</p>
						<p>교환 및 반품 시에는 배송 된 포장박스와 포장재를 사용하여 배송 시의 포장상태 그대로 복원해 주시기 바랍니다.</p>

						<hr>
						<h3>교환 및 반품이 불가능한 경우</h3>
						<p>- 제품 또는 사은품을 개봉하여 상품이 훼손되거나 분실된 경우</p>
						<p>- 교환/반품 가능 기간을 초과한 경우</p>
						<p>- 기타 사용자의 과실이 인정되는 경우</p>
						<p>&nbsp;</p>
						<h3>교환/반품 배송비</h3>
						<p>고객 변심에 의한 교환 및 반품 시 발생되는 배송비는 고객님 부담입니다.</p>
						<p>- 교환 시 : 반송비 + 재배송비 = 5,000원</p>
						<p>- 반품 시 : 초기 배송(무료배송 포함) + 반송비 = 5,000원</p>
						<p>* 교환/반품에 대한 개별기준이 상품 상세페이지에 있는 경우 각 상품의 개별기준이 우선 적용됩니다.</p>
						<p>&nbsp;&nbsp;ex) 디그앤롤 캣라운지 원목화장실 </p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;교환 : 반송비용+재배송비용+안전포장비=25,000원</p>
 						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;반송 : 초기배송비+반송비용+안전비용비=25,000원</p>
						<p>&nbsp;</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="confirm-box" id="order_div" name="order_div" style="z-index:9999">
		<span class="btn-close-layer" onclick="$(this).parent().fadeOut();"><img src="./상세상품_files/btn_close2.png" alt="닫기"></span>
		<div class="context">
			선택한 상품이 <span id="title_span" name="title_span">장바구니</span>에 담겼습니다. <br>
			장바구니로 이동하시겠습니까?
		</div>
		<div class="action-buttons">
			<span class="type1" onclick="$(&#39;.confirm-box&#39;).fadeOut();">쇼핑계속하기</span>
			<span class="type2" id="view_result" name="view_result">장바구니로 이동하기</span>
		</div>
	</div>


		<!-- WIDERPLANET  SCRIPT START 2015.12.15 -->
		<div id="wp_tg_cts" style="display:none;"><script id="wp_tag_script_1639537836206" src="./상세상품_files/wpc.php"></script><script id="wp_tag_script_1639537836375" src="./상세상품_files/wpc(1).php"></script></div>
		<script type="text/javascript">
		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push(
		(function() {
			return {
				wp_hcuid:"",  	/*Cross device targeting을 원하는 광고주는 로그인한 사용자의 Unique ID (ex. 로그인 ID, 고객넘버 등)를 암호화하여 대입.
						 *주의: 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti:"25152",
				ty:"Item",
				device:"web"
				,items:[{i:"935",	t:"핀 브러쉬"}] /* i:상품 식별번호 (Feed로 제공되는 상품코드와 일치하여야 합니다.) t:상품명 */
				};
		}));
		</script>
		<script type="text/javascript" async="" src="./상세상품_files/wp_astg_4.0.js.다운로드"></script>
		<!-- // WIDERPLANET  SCRIPT END 2015.12.15 -->




	<iframe name="hidden_iframe" style="display:none" src="./상세상품_files/saved_resource.html"></iframe>


	<div class="products_reviews_section">
		<div class="products_reviews_header">
			<div class="review_section"><a href="https://www.montraum.com/common/process/shopview.asp?orderB=0&amp;thisCategory=52&amp;pack_content_id=935#reviewLink">최신순</a></div>
			<div class="review_section sort_type_divider"> | </div>
			<div class="review_section"><a href="https://www.montraum.com/common/process/shopview.asp?orderB=1&amp;thisCategory=52&amp;pack_content_id=935#reviewLink">별점 높은순</a></div>
			<div class="review_section sort_type_divider"> | </div>
			<div class="review_section"><a href="https://www.montraum.com/common/process/shopview.asp?orderB=2&amp;thisCategory=52&amp;pack_content_id=935#reviewLink">별점 낮은순</a></div>
		</div>
	</div>

	<a name="reviewLink">
	</a><div class="contents-wrapper pc-width item-reviews"><a name="reviewLink">
		<h2>상품후기</h2>

		</a><ul class="reviews"><a name="reviewLink">
			<!-- li에 click 이벤트를걸어 'open' class 를 toggle 하는 형태를 추천합니다. -->

			</a><li><a name="reviewLink">
				</a><a name="bestName15409"></a>
				<div class="review-head">
					<div class="rating"><span class="blt-best">BEST</span></div>
					<div class="subject">제발....털빗을때마다 개지*하는 포메 견주님들!!!울면서 빗는 날은 이제 끝입니다 </div>
					<div class="writer">GIOCO***</div>
					<div class="reg-date">2021-02-22</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20210222AM83459.jpeg" alt="20210222AM83459.jpeg"><br>
제주도에 애견카페갔다가 같은 포메 천사 견주님이 추천해주셔서 검색한 끝에 여기서 샀는데요...왜 진작 안샀을까 이거 알려주신 견주님 넘 감사해서 강사모카페에 글도올렸습니다 ㅜㅠ포메 아시죠 까칠하고 예민해서 빗질 짱 시러해서 저도 울고 얘도 울고 제 손 입질로 상처투성인데
이거 두개로 하니 진짜 순하게 빗질하네요...너무신기해요 죽은털도 다 골랐어요 ㅠㅠ두번 사세요!!!
				</div>
			</li>

			<li>
				<a name="bestName14549"></a>
				<div class="review-head">
					<div class="rating"><span class="blt-best">BEST</span></div>
					<div class="subject">포메 고로의 털 관리비결</div>
					<div class="writer">wonso**</div>
					<div class="reg-date">2019-12-05</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20191205PM91430.jpeg" alt="20191205PM91430.jpeg"><br>
이중모인 포메라서 털관리가 까다롭고
고로는 하루에 산책도 3번씩 나가기 때문에 
빗질을 더욱 자주합니다아 

  빗질을 좋아하는 고로이지만 요새처럼 건조해지면 
털도 엉키고 털갈이를해서 많이 빠지게 되는데..! 

 코트킹으로 죽을털을 쏘옥 제거하고
 핀브러쉬로 전체적인 빗질을 해주니 정말 좋네요..!

 가벼워서 휴대도 편하고 깊숙이까지 빗질이 되서
넘넘 만족해요????????
				</div>
			</li>

			<li>
				<a name="bestName13271"></a>
				<div class="review-head">
					<div class="rating"><span class="blt-best">BEST</span></div>
					<div class="subject">[마스알코소 핀 브러쉬] 강아지 브러쉬 추천</div>
					<div class="writer">julie*</div>
					<div class="reg-date">2018-07-20</div>
				</div>
				<div class="review-body">
<div style="text-align: center;"><br><img src="./상세상품_files/20180720PM65002.jpg"></div><div style="text-align: center;"><br></div><div style="text-align: center;">、</div><div style="text-align: center;">개라스틴 한거아니에요!</div><div><div style="text-align: center;">원본사진이에요!</div><div style="text-align: center;">몬트라움 마스알코소 핀 브러쉬로</div><div style="text-align: center;">촘촘히 브러싱만 해줬더니</div></div><div><div style="text-align: center;">피모 윤기 실환가요?!</div><div style="text-align: center;">27mm 의 촘촘한 
메탈핀과 에어쿠션의 조합때문에</div><div style="text-align: center;">죽은털, 먼지, 털엉킴 등등을 제거해주고</div><div style="text-align: center;">마사지 효과에&nbsp;눈을 스르르 감고 
브러싱&nbsp;받더라구요</div><div style="text-align: center;">저는 손가락을 다쳐 여러번에 수술로 인해</div></div><div><div style="text-align: center;">손으로 무언갈 잡아서 사용을 많이하면</div><div style="text-align: center;">손가락을 아파하는 편인데요,&nbsp;</div></div><div style="text-align: center;">65g의 
부담없는 무게에 손에 딱 맞는 그립감으로</div><div style="text-align: center;">장시간 로베벨 셋다 브러싱을 해주었는데도</div><div><div style="text-align: center;">손, 손목에 무리가 가지 않아 너무 좋았어요</div><div style="text-align: center;">유럽산 
친환경 너도 밤나무를 사용하여</div><div style="text-align: center;">제작되어 인체에 무해해서 걱정도없고</div><div style="text-align: center;">독일만의 목재 가공 기술로 제작해서</div><div style="text-align: center;">내구성까지 뛰어난 
제품인데다</div><div style="text-align: center;">로즈우드 색상으로 마감처리해서</div><div style="text-align: center;">한눈으로 봐도 딱 고급져보이는 브러쉬에요</div><div style="text-align: center;">저처럼 결정장애, 브러쉬에 관해 
잘모르시거나,</div><div style="text-align: center;">브러쉬 구매로 고민중이신분이라면</div><div style="text-align: center;">마스알코소 핀 브러쉬 적극추천드립니다!</div></div><div style="text-align: center;">오늘부터 로베벨과 마스알코소 핀 브러쉬하실래오?</div><div style="text-align: center;"><br></div><div style="text-align: center;"><br><img src="./상세상품_files/20180720PM65130.jpg"></div><div><div style="text-align: center;">、</div><div style="text-align: center;">강아지에게 브러싱, 빗질이란?!</div><div style="text-align: center;">털 상태는 건강을 나타나는 지표가 된다는 사실!</div><div style="text-align: center;">죽은털, 먼지, 털엉킴을 제거하여</div><div style="text-align: center;">통풍을 원활하게 하고 세균번식을</div><div style="text-align: center;">방지함으로써 피부병 등의 질병을 예방해주고,</div><div style="text-align: center;">혈액순환을 촉진하여,</div><div style="text-align: center;">피부건강과 털 윤기&amp;탄력이 생겨요</div><div style="text-align: center;">주인과 반려견의 신체접촉은 유대감을 키워주어</div><div style="text-align: center;">강아지의 사회화에 큰 도움을 줄수있어요</div></div><div style="text-align: center;">로베벨네가 추천드리는 마스알코소 핀 브러쉬로</div><div style="text-align: center;">촘촘한 관리해주세요!</div>
				</div>
			</li>

			<li>
				<a name="bestName13184"></a>
				<div class="review-head">
					<div class="rating"><span class="blt-best">BEST</span></div>
					<div class="subject">말티즈브러쉬로 추천드려요</div>
					<div class="writer">chl71**</div>
					<div class="reg-date">2018-06-22</div>
				</div>
				<div class="review-body">
<br><img src="./상세상품_files/20180622AM112617.jpg"><div><br></div><div><br></div><div><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">&nbsp;예전부터 사용해보고싶었던&nbsp;<b><span style="color: rgb(0, 117, 200);">마스 알코소 핀브러쉬</span></b>를 사용해보게 되었어요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">사용해보니, 엉킨털은 풀어주면서 빗을수록 윤기가 더해져 털도 풍성해보이고 건강하게끔 만들어주더라고요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">워낙 자극이 가지않고 부드럽게 빗질이 되다보니&nbsp;</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">장시간의 빗질에도 슈가가 거부감을 느끼지않고 무리가 가지않는다는 점에서 아주 만족스러웠어요 !</p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"><br></p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"><br></p></div><br><img src="./상세상품_files/20180622AM112626.jpg"><div><br></div><div><br></div><div><br></div><div><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><b><span style="font-size: 11pt;">&nbsp;200년 전통의 독일 명품 브랜드&nbsp;"MARS ALCOSO"</span></b></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><b><span style="font-size: 12pt; color: rgb(70, 70, 70);">마스 핀 브러쉬</span></b></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">유럽산 친환경 너도 밤나무를 사용하여 제작된 마스알코소 핀브러쉬예요&nbsp;</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">자태부터 너무너무 고급져서 받자마자 너무 마음에 들더라고요 ~</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">나무결이나 색상이 저가싸구려 브러쉬와는 차원이 다른....</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">가볍고 슬림한 형태라 휴대하기도 편해 슈가와 외출할 때도 가방에 쏙- 넣어가지고 다니고 있어요</p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"></p></div><div><br></div><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112728.jpg"><div><br></div><div><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">손잡이그립감도 너무 좋고 유럽산친환경 너도밤나무로 만들어져 내구성 또한 강하고 튼튼한 핀브러쉬예요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">매끈한 곡선을 자랑하며 다른 반려견브러쉬와는 다르게 로즈우드색상이라 굉장히 고급진 느낌이구요!!!!</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><div><br></div><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"></p></div><br><img src="./상세상품_files/20180622AM112744.jpg"><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112752.jpg"><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112759.jpg"><div><br></div><div><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">예전부터 이렇게 슈가를 제 다리에 눕혀놓고 빗질을 해온터라</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">지금도 이 자세가 가장 편해요 ㅎㅎ 슈가도 편안해하구요 ^^</p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; text-align: center;"></p><div style="text-align: left;"><font color="#000000" face="2820205_10"><span style="font-size: 13.3333px;"><br></span></font></div><font color="#000000" face="2820205_10"><div style="text-align: left;"><span style="font-size: 13.3333px;">&nbsp;</span></div></font><p></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">슈가를 어릴 적부터 빗질을 받아와서 빗질하는 거에 대한&nbsp;큰 거부감이 없는 아이예요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">물론 처음에는 소스라치게 깜짝놀라고 싫다고 손으로 밀어냈는데 (지금은 마리가 그러고있어요^^;;)</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">매일매일을 반복하여 하다보니, 지금은 빗질하는거에 익숙해졌답니다.</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">빗질을 할 때 받는 아이도 편안해야하지만 빗질을 하는 견주도 편안해야하잖아요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">마스알코소 핀브러쉬가 그러한데요 - !</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">&nbsp;슬림한 직사각형으로 그립감이 아주 좋은데다 가벼워서 손목에도 무리가 안가고</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">죽은털, 미세한 털빠짐들까지 다 잡아주니 빗질을 아주 수월하고 편안하게 만들어주더라고요</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">강하게 힘을 주지않아도 엉켜있는 털이 스르륵 잘 풀려서 빗질하는 시간도 줄여주고요.</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"></p></div><br><img src="./상세상품_files/20180622AM112805.jpg"><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112812.jpg"><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112818.jpg"><div><br></div><div><br></div><br><img src="./상세상품_files/20180622AM112823.jpg"><div><br></div><div><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"><br></p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">너무 크지도 너무 작지도 않아</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">말티즈 빗으로 사용하기에 아주 딱 좋은 사이즈 - !&nbsp;</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">우드핸들이라 휘어지거나 부서지지않고 빗질이 가능 - !</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;"><br></p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"></p></div><br><img src="./상세상품_files/20180622AM112830.jpg"><div><br></div><div><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;">&nbsp;</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">슬리커는 피부에 자극도 심하고 살살 안풀어주면 엉킨털이 끊어지기도 쉬운데</p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"></p><div style="text-align: left;"><span style="font-size: 13.3333px;">마스 알코소 핀브러쉬는 슬리커없이도 엉킨털이 잘 풀어지고&nbsp;</span></div><div style="text-align: left;"><span style="font-size: 13.3333px;">아픔없이 부드러운 빗질을 가능케해서 좋은 것 같아요</span></div><div style="text-align: left;"><span style="font-size: 13.3333px;"><br></span></div><p></p><p align="center" style="margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px; text-align: center;"><br></p></div><br><img src="./상세상품_files/20180622AM112836.jpg"><div><br></div><div><br></div><div><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">짜잔 &gt;&lt;</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">빗질 후의 예뻐진 뽀송뽀송 슈가입니다 ^^</p><p align="center" style="text-align: left; margin: 0px; padding: 0px; line-height: 1.5; color: rgb(0, 0, 0); font-family: &quot;2820205_10&quot;; font-size: 13.3333px;">머리도 차분해졌고 뭔가 더 뽀사시해진 느낌 !!! ㅎㅎㅎ</p><div><br></div><div><br></div></div>
				</div>
			</li>

			<li>
				<a name="bestName13093"></a>
				<div class="review-head">
					<div class="rating"><span class="blt-best">BEST</span></div>
					<div class="subject">인생 빗 찾았어요!!!</div>
					<div class="writer">prett*****</div>
					<div class="reg-date">2018-05-11</div>
				</div>
				<div class="review-body">
<p>우리 모카가 빗질을 엄청 싫어해요. 빗만 들고있음 제가 불러도 절대 오지않고.. 한번은 저 물고 튀었는데 피까지 본적이 있어요...</p><p>근데 마스알코소 핀브러쉬는 모카가 되게 편하게 빗질을 받더라구요.</p><p>싫으면 입으로라도 싫은티 내는데 오히려 편하게 누워서 ㅎㅎ</p><p>앞으로는 빗질이 싫은게 아니고 좋은거라는 인식을 심어주려고 노력하고있어요!!</p><p>빗질 싫어하는 아가들에게 정말 좋은 빗같아욥!</p><p>빗질하고 풍성해진 우리 모카우유찡 삼각김밥이 따로없네요 ㅋㅋ</p><br><img src="./상세상품_files/20180511AM100417.jpg">
				</div>
			</li>

			<li>
				<a name="reviewName15792"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;드뎌왔어요 핀브러쉬</span>
					</div>
					<div class="writer">GILLO****</div>
					<div class="reg-date">2021-09-13</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20210913PM110129.jpg" alt="20210913PM110129.jpg"><br>
먼가싶어서 막 보네요 울 강쥐가ㅋ
행사하길래 구매했습니다
꼭 필요한 빗이었어요~~행사덕분에 싸게 잘 데려왔네요ㅎㅎ
				</div>
			</li>

			<li>
				<a name="reviewName15568"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;핀브러쉬후기</span>
					</div>
					<div class="writer">RHDDL****</div>
					<div class="reg-date">2021-05-24</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20210524AM103016.jpg" alt="20210524AM103016.jpg"><br>
배송도 빠른편이고 물건을 잘받아 포장을 뜯었는데 핀하나가 빠져있네요ㅠ 속상했지만 교환하기 귀차나서 걍 씁니다 다음번엔 검수 잘해서 보내주시길 시추아기 빗질해봤는데 아파하지않고 잘됩니다<br><br><hr>안녕하세요 고객님<br>몬트라움 고객만족팀입니다.<br><br>먼저 저희 마스알코소 제품을 구매해주셔서 감사드리며, 말씀 주신 부분은 핀이 빠진 불량이 아닌 숨구멍으로<br>정전기를 줄여주어 반려견 미용에 더욱 효과적입니다~^^ 해당 내용 상세페이지에서도 확인 가능하십니다.<br><br>추가 문의 사항 있으시면 언제든 Q&amp;A 게시판을 통해 문의 바랍니다.<br>이용해주셔서 감사합니다.
				</div>
			</li>

			<li>
				<a name="reviewName15409"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;제발....털빗을때마다 개지*하는 포메 견주님들!!!울면서 빗는 날은 이제 끝입니다 </span>
					</div>
					<div class="writer">GIOCO***</div>
					<div class="reg-date">2021-02-22</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20210222AM83459.jpeg" alt="20210222AM83459.jpeg"><br>
제주도에 애견카페갔다가 같은 포메 천사 견주님이 추천해주셔서 검색한 끝에 여기서 샀는데요...왜 진작 안샀을까 이거 알려주신 견주님 넘 감사해서 강사모카페에 글도올렸습니다 ㅜㅠ포메 아시죠 까칠하고 예민해서 빗질 짱 시러해서 저도 울고 얘도 울고 제 손 입질로 상처투성인데
이거 두개로 하니 진짜 순하게 빗질하네요...너무신기해요 죽은털도 다 골랐어요 ㅠㅠ두번 사세요!!!
				</div>
			</li>

			<li>
				<a name="reviewName15149"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;포메 엉킨털 셋트 구매했어요</span>
					</div>
					<div class="writer">BOB58**</div>
					<div class="reg-date">2020-09-30</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20200930PM61339.jpg" alt="20200930PM61339.jpg"><br>
포메 키우고있어요 
엉덩이랑 꼬리가 너무 뭉쳐서 몇시간씩
풀어서 빗질해도 또뭉치고해서 진짜심란했는데 

엉킨털셋트상품 구매하고 진짜 이거다 싶었어요

코트킹 받아서 살살살 엉킨거 죽은털 풀고 
브러쉬로 빗으니 찰랑찰랑 ~ 
힘도안들고 아기가 아파하지않더라구요 ~ 

이거 왜 지금 알았나몰라요... ㅠ 
이건진짜 강추에요~! 멍멍용품중 1위에여

포장, 제품모두 완벽했고 배송이빨라 좋았습니다
이제 털뭉칠일 없겠네요 ^^
				</div>
			</li>

			<li>
				<a name="reviewName15115"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-1 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m1 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					포장이 엉망이네요 내용물만 덜렁
					</div>
					<div class="writer">N1598*********</div>
					<div class="reg-date">2020-08-28</div>
				</div>
				<div class="review-body">
원래 내용물만 덜렁오나요? 누가 쓰던거 넣어놔도 모르겠네요~!^^<br><br><hr>안녕하세요 고객님<br>몬트라움 고객만족팀입니다.<br><br>먼저 불만족스러운 포장 상태로 인해 불편을 드린 점 죄송합니다.<br><br>해당 내용 Q&amp;A로 남겨주시면 확인 후 빠른 맞교환처리 진행해드리겠습니다.<br><br>다시 한 번 이용에 불편을 드려 죄송합니다.
				</div>
			</li>

			<li>
				<a name="reviewName15060"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					포메 키우는데 탁월한선택
					</div>
					<div class="writer">L8203**</div>
					<div class="reg-date">2020-07-24</div>
				</div>
				<div class="review-body">
포메키우면서 이중모라 잘 엉켜서 뭉쳐서 엉킨털에 좋은 빗이 
없나 폭풍검색하다가 후기들 보고서 세트구성 구매했습니다.
정말 신기하게 죽은털들 쏙쏙!
한달에 2~3번 코트킹으로 빗어주면 저도 편하고
저희집 아가도 아프지않아해서 좋을거같아요!!
잘쓸게요~~
				</div>
			</li>

			<li>
				<a name="reviewName14951"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-4 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m4 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;아직은 너무 빠르게 산 듯 하지만....</span>
					</div>
					<div class="writer">iee71*</div>
					<div class="reg-date">2020-05-20</div>
				</div>
				<div class="review-body">
<p><br><img src="./상세상품_files/20200520PM120757.jpeg"></p><p>카발리에 킹 찰스 스패니얼 종이라서 털 관리 해줘야한다고 해서 구매했어요!</p><p>일단 제일 필요해보이는 빗으로요.</p><p>그런데 아직은 털이 짧아서 풍성하지도 않아서 잘 안쓰게 되지만 추후에 털이 좀 더 자라고 풍성해지면 잘 쓰겠죠?</p>
				</div>
			</li>

			<li>
				<a name="reviewName14921"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					후기
					</div>
					<div class="writer">dmsck****</div>
					<div class="reg-date">2020-05-09</div>
				</div>
				<div class="review-body">
보더콜리입니다. 이중모에 털빠짐이 좀 있기에 빗을 종루별로 가지고 있는데 이부러쉬 울댕댕이가 너무편해합니다~ 그덕에 엉덩이 꼬리도 편하게 빗을수있네요. 넘 좋아요~~
				</div>
			</li>

			<li>
				<a name="reviewName14887"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;브러쉬 후기</span>
					</div>
					<div class="writer">YOONH****</div>
					<div class="reg-date">2020-04-26</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20200426PM11451.jpg" alt="20200426PM11451.jpg"><br>
푸들인데 덜아프게 빗질 잘되요
맨처음 엉킹털 핀브러쉬로 손질후 슬리커로 빗으면 죽은털 걸려 나와요
핀브러쉬는 죽은털 안빠져요
푸들이 제일좋아하는 덜 아픈빗이라 데일리로 사용중이에요~
				</div>
			</li>

			<li>
				<a name="reviewName14822"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;고급스러운 느낌</span>
					</div>
					<div class="writer">GMAES***</div>
					<div class="reg-date">2020-04-08</div>
				</div>
				<div class="review-body">
털정리 하기 최고입니다<br><img src="./상세상품_files/20200408PM114831.jpg">
				</div>
			</li>

			<li>
				<a name="reviewName14756"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-3 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m3 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					토이푸들 털빗기
					</div>
					<div class="writer">JWITC*</div>
					<div class="reg-date">2020-03-15</div>
				</div>
				<div class="review-body">
심하게 뭉친곳 말고는 엉킨털도 별로 아프지 않게 풀리듯해요.푸들이라 하루만 안빗어줘도 꼬불꼬불 말리는 털도 금방 빵실하게 빗어져서 좋네요.
				</div>
			</li>

			<li>
				<a name="reviewName14749"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-1 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m1 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;내구성 꽝.실망입니다</span>
					</div>
					<div class="writer">F1565*********</div>
					<div class="reg-date">2020-03-13</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20200313AM111734.jpeg" alt="20200313AM111734.jpeg"><br>
받자마자 한 번 빗겨줬는데 핀이 바로 누워버리네요;; 내구성 정말 꽝입니다.몇 번 빗기지도 않았는데 쓸때마다 핀이 한쪽으로 쏠리고 눕고...기대많이했는데 정말 실망입니다. 빗기긴 잘 빗긴다만 내구성 정말 꽝이라 쓸때마다 불만족스러워서 별 하나 더 빼요
				</div>
			</li>

			<li>
				<a name="reviewName14706"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					인생 브러쉬 ㄷㄷ
					</div>
					<div class="writer">ASD10*****</div>
					<div class="reg-date">2020-02-19</div>
				</div>
				<div class="review-body">
말라뮤트 강아지 브러쉬로 한번 구매해봤는데 너무 좋네요. 아이도 아파하지 않고 편안한 듯 잘 있고, 빗질도 너무 잘되서 완전 강추 입니다! 추가로 콤도 하나 같이 샀는데 이것도 너무 좋습니다
				</div>
			</li>

			<li>
				<a name="reviewName14549"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;포메 고로의 털 관리비결</span>
					</div>
					<div class="writer">wonso**</div>
					<div class="reg-date">2019-12-05</div>
				</div>
				<div class="review-body">

			<img src="./상세상품_files/20191205PM91430.jpeg" alt="20191205PM91430.jpeg"><br>
이중모인 포메라서 털관리가 까다롭고
고로는 하루에 산책도 3번씩 나가기 때문에 
빗질을 더욱 자주합니다아 

  빗질을 좋아하는 고로이지만 요새처럼 건조해지면 
털도 엉키고 털갈이를해서 많이 빠지게 되는데..! 

 코트킹으로 죽을털을 쏘옥 제거하고
 핀브러쉬로 전체적인 빗질을 해주니 정말 좋네요..!

 가벼워서 휴대도 편하고 깊숙이까지 빗질이 되서
넘넘 만족해요????????
				</div>
			</li>

			<li>
				<a name="reviewName14460"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					고급지네요
					</div>
					<div class="writer">SILVE****</div>
					<div class="reg-date">2019-10-09</div>
				</div>
				<div class="review-body">
그냥 딱봐도 견고해보이고 고급지네요.. 우리댕댕이도 빗어주면서 저머리도 가끔 빗어요 ㅋㅋㅋ 언젠나 우리댕댕이 빗질 마무~의리!
				</div>
			</li>

			<li>
				<a name="reviewName14442"></a>
				<div class="review-head">
					<!-- blt-rating-1 ~ blt-rating-5 까지  -->
					<div class="rating">
						<span class="rating-star2 blt-rating-5 only-pc2">&nbsp;</span>
						<span class="rating-star2 blt-rating-m5 only-mobile2">&nbsp;</span>
					</div>
					<div class="subject">
					<img class="photo-re-icon" src="./상세상품_files/s_photo_icon.png"><span style="vertical-align:top">&nbsp;빗을 넘일찍샀나봐요</span>
					</div>
					<div class="writer">SY079*</div>
					<div class="reg-date">2019-10-03</div>
				</div>
				<div class="review-body">
<br><img src="./상세상품_files/20191003AM83121.jpg"><div>빗길털이 없네유^ㅠ^</div><div>그래도 털열심히길러서 꼼꼼히빗겨줘야쥐~</div>
				</div>
			</li>

		</ul>

		<div class="wrapper-page">
			<!-- PC 페이지 -->
			<div class="pagination1 only-pc">
				<span class="btn-page prev"></span><span class="active">1</span><span onclick="location.href=&#39;?gotoPage=2&amp;thisCategory=52&amp;pack_content_id=935&#39;">2</span><span onclick="location.href=&#39;?gotoPage=3&amp;thisCategory=52&amp;pack_content_id=935&#39;">3</span><span onclick="location.href=&#39;?gotoPage=4&amp;thisCategory=52&amp;pack_content_id=935&#39;">4</span><span class="btn-page next"></span>
			</div>

			<!-- 모바일 페이지 -->
			<div class="pagination2 only-mobile">
				<span class="btn-page prev"></span><span class="active">1</span><span><a href="https://www.montraum.com/common/process/shopview.asp?gotoPage=2&amp;thisCategory=52&amp;pack_content_id=935">2</a></span><span><a href="https://www.montraum.com/common/process/shopview.asp?gotoPage=3&amp;thisCategory=52&amp;pack_content_id=935">3</a></span><span><a href="https://www.montraum.com/common/process/shopview.asp?gotoPage=4&amp;thisCategory=52&amp;pack_content_id=935">4</a></span><span class="btn-page next"></span>
			</div>

			<!-- div class="btn-write-review"><a href="productAfter/review_input.asp?pack_content_id=935">리뷰작성</a></div -->

			<div class="btn-write-review"><a href="https://www.montraum.com/common/process/productAfter/myreview_view.asp">리뷰작성</a></div>
		</div>
	</div>
	<!--
	<div class="contents-wrapper pc-width guide">
		<h2>배송/교환/환불</h2>

		<!--  만약 pc 와 mobile 에 같은 배송정책 안내를 하려면 only-pc, only-mobile 을 삭제하고 그냥 하나로
		<div class="only-pc">
			<p>Insert Contents Here</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		</div>

		<div>
			<h3>배송 안내</h3>
			<p>결제 완료 후 배송에서 수령까지 평균 2~3일 정도 소요됩니다.</p>
			<p>(토요일, 공휴일 제외)</p>
			<p>최종결제 금액 기준 5만 원 이상일 경우 배송비가 무료이며,</p>
			<p>5만 원 미만일 경우 배송비가 부담됩니다.</p>
			<p>도서, 산간지역은 2~4일 지연될 수 있으며, 배송비가 추가될 수 있습니다.</p>
			<p>&nbsp;</p>
			<h3>교환 및 반품 안내</h3>
			<p>고객 변심 및 착오에 의한 교환/반품은 수령일로부터 7일 이내 가능합니다.</p>
			<p>불량제품 또는 제품에 의한 문제 발생 시 전액(해당 상품) 교환/환불해드립니다. (상품 수령일로부터 3개월, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내)</p>
			<p>교환 및 반품 시에는 배송 된 포장박스와 포장재를 사용하여 배송 시의 포장상태 그대로 복원해 주시기 바랍니다.</p>

			<hr />
			<h3>교환 및 반품이 불가능한 경우</h3>
			<p>- 제품 또는 사은품을 개봉하여 상품이 훼손되거나 분실된 경우</p>
			<p>- 교환/반품 가능 기간을 초과한 경우</p>
			<p>- 기타 사용자의 과실이 인정되는 경우</p>
			<p>&nbsp;</p>
			<h3>교환/반품 배송비</h3>
			<p>고객 변심에 의한 교환 및 반품 시 발생되는 배송비는 고객님 부담입니다.</p>
			<p>- 교환 시 : 반송비 + 재배송비 = 5,000원</p>
			<p>- 반품 시 : 초기 배송(무료배송 포함) + 반송비 = 5,000원</p>
		</div>
	</div>
	-->
</div>
</form></section>


<!-- ADN Tracker[상품] start -->
<script type="text/javascript">
	var adn_param = adn_param || [];
	adn_param.push([{
		 ui:'101877',
		 ut:'Item',
		 items:[{i:"935"}]
	}]);
</script>
<script type="text/javascript" async="" src="./상세상품_files/adn_tags_1.0.0.js.다운로드"></script>
<!-- ADN Tracker[상품] end -->




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
					<img src="./상세상품_files/img_contact.png" alt="CONTACT INFO - NO SPAM">
					<div class="sns-icons">
						<span class="youtubu"><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="./상세상품_files/youtubu_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://post.naver.com/welovemontraum" target="_blank"><img src="./상세상품_files/naver_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://www.facebook.com/montraum2017" target="_blank"><img src="./상세상품_files/facebook_icon.png" alt="facebook"></a></span>
						<span class="instar"><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="./상세상품_files/instargram_icon.png" alt="instargram"></a></span>
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
		<img class="ci" src="./상세상품_files/img-ci.png" alt="MONTRAUM">

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
			<img class="ci" src="./상세상품_files/img-ci.png" alt="MONTRAUM">

			<div class="cs-center">
				<p><span class="text1">CS CENTER</span> <a href="tel:1644-3955" class="phone-number">1644-3955</a></p>
				<p class="comment">상담가능시간 10:00~17:00 (토요일/공휴일 휴무)</p>
			</div>

			<div class="family-site-social">
				<div class="bottom-sns">
					<ul>
						<li><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="./상세상품_files/youtubu_icon.png" style="width:10vw;padding-right:.56vw" alt="youtubu"></a></li>
						<li><a href="https://m.post.naver.com/profile.nhn?authorId=welovemontraum" target="_blank"><img src="./상세상품_files/naver_icon.png" style="width:10vw;" alt="naver post"></a></li>
						<li><a href="https://m.facebook.com/montraum2017" target="_blank"><img src="./상세상품_files/facebook_icon.png" style="width:10.55vw;" alt="facebook"></a></li>
						<li><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="./상세상품_files/instargram_icon.png" style="width:10.55vw;" alt="instargram"></a></li>
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
				
				<a href="https://www.montraum.com/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fshopview%2Easp%3FthisCategory%3D52%26pack%5Fcontent%5Fid%3D935&amp;inicategory=0"><div class="login-btn only-mobile">login</div></a>
				
			</div>
			<div class="go-top"><p>TOP</p></div>
		</div>
	</div>

</footer>
<!--풋터영역종료-->
</div><script type="text/javascript" id="">(function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))})(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");var fbPixelIdList=google_tag_manager["GTM-N6PTCN3"].macro(53);fbPixelIdList.map(function(b){fbq("set","autoConfig",!1,b);fbq("init",b)});fbq("track","PageView");</script>
<script type="text/javascript" id="" src="./상세상품_files/js(4)"></script><script type="text/javascript" id="">(function(a,e,f,g,b,c,d){a.GoogleAnalyticsObject=b;a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};a[b].l=1*new Date;c=e.createElement(f);d=e.getElementsByTagName(f)[0];c.async=1;c.src=g;d.parentNode.insertBefore(c,d)})(window,document,"script","https://www.google-analytics.com/analytics.js","ga");var gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(56);gaTrackingCodeList.map(function(a){ga("create",a.trackingCode,"auto",a.name)});var gaCustomTask=google_tag_manager["GTM-N6PTCN3"].macro(57);
gaTrackingCodeList.map(function(a){ga(a.name+".set","customTask",gaCustomTask);ga(a.name+".require","ec")});var utmParams=google_tag_manager["GTM-N6PTCN3"].macro(97);
utmParams&&Object.keys(utmParams).length?gaTrackingCodeList.map(function(a){ga(a.name+".send","pageview",{campaignName:utmParams.name,campaignSource:utmParams.source,campaignMedium:utmParams.medium,campaignKeyword:utmParams.keyword,campaignContent:utmParams.content,referrer:google_tag_manager["GTM-N6PTCN3"].macro(101)})}):gaTrackingCodeList.map(function(a){ga(a.name+".send","pageview",{referrer:google_tag_manager["GTM-N6PTCN3"].macro(105)})});</script><script type="text/javascript" id="">(function(e,c,d,f,a,b){e.kakaoPixel||(a=c.createElement(d),b=c.getElementsByTagName(d)[0],a.async=1,a.src=f,a.onload=function(){kakaoPixel("1234567890123456789").pageView()},b.parentNode.insertBefore(a,b))})(window,document,"script","//t1.daumcdn.net/adfit/static/kp.js");</script>
<script type="text/javascript" id="" src="./상세상품_files/taggers-sentry.4-4-0.min.js.다운로드"></script><div id="adn_container" style="display:none"><div id="adn_wrap_22227973001" style="display:none"><iframe frameborder="0" scrolling="no" width="0px" height="0px" src="./상세상품_files/ads_1.0.2.html"></iframe></div><div id="adn_wrap_41351986067" style="display:none"><iframe frameborder="0" scrolling="no" width="0px" height="0px" src="./상세상품_files/ads_1.0.2(1).html"></iframe></div></div>
<div id="quickmenu" name="quickmenu" class="only-pc" style="top: 720px;">
	<ul class="quick_banner">
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=162"><li class="nosmell"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=136"><li class="bestbreed"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=350"><li class="firstbuying"></li></a>
		<a href="https://www.montraum.com/common/all_site/Notice/EventView.asp?idx=462"><li class="sale"></li></a>

	</ul>
	<div class="viewed">
		<a href="javascript:gdscroll(-86)" onfocus="blur()"><p><img src="./상세상품_files/quickmenu_arrowup.png"></p></a>
		<p class="tit">VIEWED <span id="num" name="num">(3)개</span></p>
		<div id="TODAYLIST2" name="TODAYLIST2" style="height:255px;overflow:hidden;"><ul class="list"><li><img width="80" src="./상세상품_files/P935_20211105AM111625_1(1).jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=935&amp;thisCategory=52&#39;"></li> <li><img width="80" src="./상세상품_files/P1075_20210830AM81155_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1075&amp;thisCategory=110&#39;"></li> <li><img width="80" src="./상세상품_files/P1585_20211008AM84312_1.jpg" style="cursor:pointer;" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1585&amp;thisCategory=29&#39;"></li> </ul></div>
		<a href="javascript:gdscroll(86)" onfocus="blur()"><p><img src="./상세상품_files/quickmenu_arrowdown.png"></p></a>
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
		<img src="./상세상품_files/img_sidebar_logo.png" alt="MONTRAUM" class="ci">
		<div class="buttons">
			
			<a href="https://www.montraum.com/common/all_site/member/join_agreement.asp">회원가입</a>
			<a href="https://www.montraum.com/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fshopview%2Easp%3FthisCategory%3D52%26pack%5Fcontent%5Fid%3D935&amp;inicategory=0">로그인</a>
			
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
		<h3>VIEWED (<span id="viewedCnt">3</span>)</h3>
		<div class="viewed-item-list" id="TODAYLIST"><div class="item"><img src="./상세상품_files/P935_20211105AM111625_1(1).jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=935&amp;thisCategory=52&#39;"></div><div class="item"><img src="./상세상품_files/P1075_20210830AM81155_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1075&amp;thisCategory=110&#39;"></div><div class="item"><img src="./상세상품_files/P1585_20211008AM84312_1.jpg" onclick="location.href=&#39;/common/process/shopview.asp?pack_content_id=1585&amp;thisCategory=29&#39;"></div></div>
	</div>
</div>
<script type="text/javascript" id="">window.gtag||(window.gtag=window.gtag||function(){(window.dataLayer=window.dataLayer||[]).push(arguments)},window.gtag("js",new Date));window.gtag("config","AW-674646633");</script>

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
<script language="javascript" src="./상세상품_files/code.js.다운로드"></script>


<script language="javascript">
	_pd =_RP("핀 브러쉬");
	_ct =_RP(view_name("view_brand","22"));
	_amt = _RP("22900",1); // _RP(1)-> 가격

	_A_amt=Array('22900');
	_A_nl=Array('1');
	_A_pl=Array('935');
	_A_pn=Array('핀 브러쉬');
	_A_ct=Array(view_name("view_brand","22"));
</script>



<!-- WIDERPLANET  SCRIPT START 2018.5.21 아이템 상세 -->
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",  	/*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"41190",
		ty:"Item",
		device:"web"
		,items:[{i:"935", t:"핀 브러쉬"}] /* i:<상품 식별번호  (Feed로 제공되는 상품코드와 일치하여야 합니다 .) t:상품명  */
		};
}));
</script>
<!-- // WIDERPLANET  SCRIPT END 2018.5.21 -->


	<!-- FACEBOOK SCRIPT START 2019.06.13 -->
	<script type="text/javascript">
		fbq('track', 'ViewContent', { 
			content_type: 'product',
			content_ids: ['935'],
			content_name: '핀 브러쉬',
			content_category: encodeURIComponent(encodeURIComponent(view_name("view_brand","22"))),
			value: 22900,
			currency: 'KRW'
		});
	</script>
	<!-- FACEBOOK SCRIPT START 2019.06.13 -->


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language="javascript">
	var _AceGID=(function(){var Inf=['gtc14.acecounter.com','8080','AS4A42151972793','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://gtc14.acecounter.com:8080/?uid=AS4A42151972793&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->


<!-- WIDERPLANET  SCRIPT START 2018.5.21 (공통) (* 공통 태그는 타 태그(아이템, 장바구니, 구매완료, 전환 완료)보다 하단에 위치하여야 합니다. ) -->
<div id="wp_tg_cts" style="display:none;"></div>
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
<script type="text/javascript" async="" src="./상세상품_files/wp_astg_4.0.js(1).다운로드"></script>
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



<!-- Enliple Shop Log Tracker v3.6 start -->
<script type="text/javascript">
<!--
function mobRfShop(){
  var sh = new EN();      
  // [상품상세정보]
 
  sh.setData("sc", "64eec8b04708055df2cd04388a80b548");
  sh.setData("userid", "montraum");
  sh.setData("pcode", "935");
  sh.setData("price", "42000");
  sh.setData("pnm", encodeURIComponent(encodeURIComponent("핀 브러쉬")));
  sh.setData("img", encodeURIComponent("http://www.montraum.com" + viewImg[0][1]));
  sh.setData("dcPrice", 22900); // 옵션
  sh.setData("cate1", encodeURIComponent(encodeURIComponent(""))); //옵션
  sh.setSSL(true);
  sh.sendRfShop();

  // 장바구니 버튼 클릭 시 호출 메소드(사용하지 않는 경우 삭제)
  document.getElementById("cartBtn").onmouseup = sendCart;
  function sendCart() {
	sh.sendCart();
  }
  // 찜,Wish 버튼 클릭 시 호출 메소드(사용하지 않는 경우 삭제)
  document.getElementById("wishBtn").onmouseup = sendWish;
  function sendWish() {
	sh.sendWish();
  }

} 
//-->
</script>
<!-- Enliple Shop Log Tracker v3.6 end  -->


<script src="./상세상품_files/enliple_min3.6.js.다운로드" defer="defer" onload="mobRf();mobRfShop();"></script>



<!-- ADN Tracker[공통] start -->
<script type="text/javascript">
var adn_param = adn_param || [];
adn_param.push([{ 	
 ui:'101877',
 ut:'Home'
}]);
</script>
<script type="text/javascript" async="" src="./상세상품_files/adn_tags_1.0.0.js.다운로드"></script>
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
<script type="text/javascript" async="" src="./상세상품_files/adn_closingad_1.1.1.js.다운로드"></script>
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
<script type="text/javascript" async="" src="./상세상품_files/adn_mobile_closingad_1.1.2.js.다운로드"></script>
<!-- ADN 크로징 설치 end -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WDLJW3X"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->





<script type="text/javascript">
	var form = document.form1;
	var uAgent = window.navigator.userAgent.toLowerCase();

	eventClientY = 0;
	eventClientX = 0;

	document.getElementById("reviewCnt").innerHTML = "60";

	$('#page-item-view #best-seller').owlCarousel({
		loop: false,
		nav: true,
		items: 4,
		margin: 20,
		dotsEach: 4,
		navText: ['<img src="/static/img/common/btn_prev.png">','<img src="/static/img/common/btn_next.png">'],
		dots: true,
		responsive: {
			360 : { items: 2, margin: 0, dotsEach: 2 },
			1000 : { items: 4, margin: 20, dotsEach: 4, nav: false }
		}
	});

	$(function(){
		$('#page-item-view ul.reviews li').click(function(){
			if( $(this).hasClass('open') ) {
				$(this).removeClass('open');
			} else {
				$(this).parent().find(".open").removeClass('open');
				$(this).addClass('open');

				// 모바일에서 큰 이미지 줄이기
				if( isMobile ) {
					$(this).find('.review-body img').each(function(){
						if( $(this).width() > viewportWidth ) {
							$(this).addClass('fullsize');
						}
					});
				}

				var linkname = $(this).find('a').attr('name')
				location.href = "#"+ linkname;
			}
		});
	});
/*여기  */
	function sumPriceChange() {
		document.getElementById("sumPrice").innerHTML = comma_make(${shopdetail.PRD_AMOUNT} * form.cnt.value + parseInt(form.viewPackPrice.value));
	}

	function help_msg(val){
		if (val){
			document.getElementById("help_div").style.display=""
		}else{
			document.getElementById("help_div").style.display="none"
		}
	}

	$(function(){
		$(".tab-contents .tab-header li").click(function(){
			var target = $(this).attr('data-target');
			$(this).parent().find("li.active").removeClass('active');
			$(this).addClass('active');
			$(this).closest('.tab-contents').find('.tab-content div.active').removeClass('active');
			$(this).closest('.tab-contents').find("."+target).addClass('active');
		});
	});

	//토글
	$(document).ready(function(){
		//초기에 다 닫히는 버젼
		$(".toggleparent").click(function(){
			$(this).nextAll().filter(".togglechild").first().toggle();
		}).css("cursor","pointer");

		//초기에 하나 열리는 버젼
		$(".togglechild2:first").show();
		$(".toggleparent").click(function(){
			$(this).nextAll().filter(".togglechild2").first().toggle();
		}).css("cursor","pointer");
	});


	function goHref(id,img) {
		if ("all" == "all") {
			if (getCookie("TodayGoods").indexOf(id +"^"+ img +",") > -1) {
				setCookie("TodayGoods", (getCookie("TodayGoods").replace(id +"^"+ img +",", "")), 1);
				setCookie("TodayGoods", (id +"^"+ img +"^22^52,"+ getCookie("TodayGoods")) ,1);
			}
			else {
				setCookie("TodayGoods", (id +"^"+ img +"^22^52,"+ getCookie("TodayGoods")), 1);
				CookieNum = getCookie("TodayGoods").split(",").length - 1;

				if (CookieNum > 10) {
					setCookie("TodayGoods", (getCookie("TodayGoods").replace(getCookie("TodayGoods").split(",")[CookieNum-1]+",", "")), 1);
				}
			}
		}

		if ("" != "") {
			category_etc_id =  "&category_etc_id=";
		}
		else {
			category_etc_id = ""
		}

		location.href = "/common/process/shopview.asp?thisCategory=52&pack_content_id="+ id + category_etc_id;
	}

	function goHrefRecom(id,img) {
			if (getCookie("TodayGoods").indexOf(id +"^"+ img +",") > -1) {
				setCookie("TodayGoods", (getCookie("TodayGoods").replace(id +"^"+ img +",", "")), 1);
				setCookie("TodayGoods", (id +"^"+ img +"^22^52,"+ getCookie("TodayGoods")) ,1);
			}
			else {
				setCookie("TodayGoods", (id +"^"+ img +"^22^52,"+ getCookie("TodayGoods")), 1);
				CookieNum = getCookie("TodayGoods").split(",").length - 1;

				if (CookieNum > 10) {
					setCookie("TodayGoods", (getCookie("TodayGoods").replace(getCookie("TodayGoods").split(",")[CookieNum-1]+",", "")), 1);
				}
			}

		if ("" != "") {
			category_etc_id =  "&category_etc_id=";
		}
		else {
			category_etc_id = ""
		}
		location.href = "/common/process/shopview.asp?thisCategory=52&pack_content_id="+ id + category_etc_id + "&isrecom=1&recomtype=view";
	}




	canCnt = 20
	lastThisCnt = 20 //계산 수
	iniCnt = 20

	readyWdate = ""
	ready = ""

	function countCnt() {
		readyWdate = ""
		iniCnt = 20
		if (canCnt>0) {
			multiChoice = 0

			if (form.product_id.type=="select-one") { //단수 다수 선택만 있는 경우
				multiChoice = 1
			} else { //복수 선택이 있는 경우
				for (var n=0 ; n<form.product_id.length ; n++) {
					//if (form.product_id[n].type=="select-one") {
						multiChoice = multiChoice + 1
					//}
				}
			}

			if (multiChoice>1) { //복수 다수 선택이 있다면
				for (var n=0 ; n<form.product_id.length ; n++) {
					if (form.product_id[n].type=="select-one") {
						thisArray = eval("viewOption"+form.product_id[n].id)
						for (var j=0 ; j<thisArray.length ; j++) {
							if (thisArray[j][0]==form.product_id[n].options[form.product_id[n].selectedIndex].value) {
								if (iniCnt>thisArray[j][4]) iniCnt=thisArray[j][4]
								if (readyWdate=="") readyWdate = thisArray[j][8]
								break
							}
						}
					}
				}
			} else if (multiChoice==1) {
				if (form.product_id.type=="select-one") {//단일 선택 상품인 경우
					thisArray = eval("viewOption"+form.product_id.id)
					for (var j=0 ; j<thisArray.length ; j++) {
						if (thisArray[j][0]==form.product_id.options[form.product_id.selectedIndex].value) {
							if (iniCnt>thisArray[j][4]) iniCnt=thisArray[j][4]
							if (readyWdate=="") readyWdate = thisArray[j][8]
							break
						}
					}
				}
			}
		}

		if (readyWdate == "") {
			ready = "n"
			confirmCnt()
		} else {
			ready = "y"
			confirmCnt(readyWdate)
		}
	}

	function confirmCnt(val) {
		if ("-1"!="-1" || "20"=="0" || "20"=="1") {
			if ("-1"!="-1") {
				//한정판매
				for (var l=20 ; l>=-1 ; l--) form.cnt[l] = null
				if ("-1"=="0") form.cnt[0] = new Option(0,0)
			}

			if ("20"=="0" || "20"=="1") {
				//1인 1상품 구매인 경우 무조건 1개 셋팅
				for (var l=20 ; l>=20 ; l--) form.cnt[l] = null
				if ("20"=="0") form.cnt[0] = new Option(0,0)
			}
		} else {
			if (""=="y" || val!=undefined) {
				ready_wdate = defaultValue("",val)
				if (""!=3) document.getElementsByName("readySpan")[0].innerHTML = "<b>[예약판매]</b> "+ ready_wdate +" 부터 배송이 시작됩니다."
				for (var i=0 ; i<20 ; i++) form.cnt[i] = new Option(i+1,i+1)
			} else {
				document.getElementsByName("readySpan")[0].innerHTML = ""
				if (maxThisCnt>iniCnt) {
					lastThisCnt = iniCnt
				} else {
					lastThisCnt = maxThisCnt
				}

				if (lastThisCnt<=0) {
					k=1
					form.cnt[0] = new Option(0,0)
					document.getElementsByName("buttonTr")[0].style.display="none"
					document.getElementsByName("buttonTr")[1].style.display=""
				} else {
					for (var k=0 ; k<lastThisCnt ; k++) form.cnt[k] = new Option(k+1,k+1) //수량 셋팅
					document.getElementsByName("buttonTr")[0].style.display=""
					document.getElementsByName("buttonTr")[1].style.display="none"
				}
				for (var l=20 ; l>=k ; l--) form.cnt[l] = null
			}
		}
	}

	function this_submit(val) {

		selectEmpty = false
		idEmpty = 0

		if ("" == "" && ("20" == "0" || "20" == "1")){
			alert("1인 1구매 상품은 로그인후 구매가 가능합니다.");
			location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fshopview%2Easp%3FthisCategory%3D52%26pack%5Fcontent%5Fid%3D935"
			return;
		}

		if (form.cnt[0].value<=0) {
			if ("-1"!="-1") {
				alert("한정수량이 판매완료되었습니다.")
			} else if ("20"=="0" || "20"=="1") {
				alert("이미 구매하셨습니다.")
			} else {
				alert("본 상품은 품절 상태입니다.")
			}
			return false
		}

		if (form.product_id.type=="select-one") {
			if (form.product_id[0].selected) {
				alert ("현재 품절이거나 구매 상품의 옵션을 선택하지 않으셨습니다.")
				form.product_id.focus()
				return false
			}
		} else {
			for (var i=0 ; i<form.product_id.length ; i++) {
				if (form.product_id[i].type=="select-one") {
					if (form.product_id[i][0].selected) {
						alert ("구매 상품의 옵션을 반드시 선택하셔야 합니다.")
						form.product_id[i].focus()
						return false
					}
				}
			}
		}

		if (val==undefined) {
			form.gubun.value = "cart";
			form.target = "_self";
			form.action="shopview_insert_DB.asp?thisCategory=52&immediately=yes";
		} else {
			form.gubun.value = val;
			form.target = "hidden_iframe";
			form.action="shopview_insert_DB.asp?thisCategory=52&";

			eventClientY = event.clientY;
			eventClientX = event.clientX;

			if (val == "cart") {
				document.getElementsByName("order_div")[0].style.display = "block";
				document.getElementsByName("title_span")[0].innerHTML = '장바구니';
				document.getElementsByName("view_result")[0].onclick = function() {location.replace("order_list.asp");}
				document.getElementsByName("view_result")[0].innerHTML = "장바구니로 이동하기";

				fbq('track', 'AddToCart', {
					content_type: 'product',
					content_ids: ['935'],
					value: 22900,
					currency: 'KRW'
				});

			} else {
				document.getElementsByName("order_div")[0].style.display = "block";
				document.getElementsByName("title_span")[0].innerHTML = '위시리스트';
				document.getElementsByName("view_result")[0].onclick = function() {location.replace("wish_list.asp?iniCategory=0");}
				document.getElementsByName("view_result")[0].innerHTML = "위시리스트로 이동하기";
			}
		}

		form.submit()
	}
	confirmCnt()

	function delRow(val){
		var thisValue="";
		for(var i=0 ; i < document.getElementsByName("img_delete").length; i++){
			if(val===document.getElementsByName("img_delete")[i]){
				thisValue = i;
				break;
			}
		}

		if(thisValue !== ""){
			document.getElementsByName("packLinkSelList")[0].deleteRow(thisValue);
		}

		if(document.getElementsByName("img_delete").length===0){
			document.getElementsByName("packLinkSelBlock")[0].style.display="none";
		}
	}

	function tr_colorset(val){
		for(var i=0 ; i < document.getElementsByName("tr_color").length; i++) {
			document.getElementsByName("tr_color")[i].style.backgroundColor="#FFFFFF";
		}

		for(var i=0 ; i < document.getElementsByName("tr_color").length; i++){
			if(val===document.getElementsByName("tr_color")[i])	val.style.backgroundColor="#E0E0E0";
		}

	}

	function inputOrder() {

		//2015-04-24 장바구니, 위시리스트 추가 팝업 들쑥날쑥함을 최소화.
		scrollValue = 0
		if (uAgent.indexOf("Trident") == -1){ //크롬, IE11
			scrollValue = eventClientY + document.body.scrollTop
		}else{
			scrollValue = eventClientY +  document.documentElement.scrollTop
		}

		//document.getElementsByName("order_div")[0].style.top = scrollValue + 20 +"px"
		//document.getElementsByName("order_div")[0].style.left = eventClientX -250 + "px"
		//document.getElementsByName("order_div")[0].style.top = eventClientY + document.documentElement.scrollTop + 20 +"px"
		//document.getElementsByName("order_div")[0].style.left = eventClientX - 200 + "px"
		document.getElementsByName("order_div")[0].style.display = "block";
	}

	function selectPackLink(val) {
		if (val !== "") {
			if (viewPackLink[val][4] > 0) {
				document.getElementById("link_product").innerHTML = "<input type='hidden' id='link_pack_content_id' name='pack_content_id' value='"+ viewPackLink[val][9] +"'><input type='hidden' id='link_product_id' name='product_id' value='"+ viewPackLink[val][0] +"'><input type='hidden' id='link_pack_link' name='pack_link' value='1'>";

				document.getElementsByName("viewPackPrice")[0].value = viewPackLink[val][11];
			} else {
				document.getElementsByName("viewPackPrice")[0].value = 0;
			}
		}
		else {
			document.getElementById("link_product").innerHTML = "";
			document.getElementsByName("viewPackPrice")[0].value = 0;
		}
		sumPriceChange();
	}



//연관상품 스크립트

	function show_restock_view() {
	

		if (confirm("로그인 하시겠습니까?")) {
			location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fshopview%2Easp%3FthisCategory%3D52%26pack%5Fcontent%5Fid%3D935";
			return;
		} else {
			return;
		}
	

		var obj_prod_id = document.getElementsByName("product_id");

		for (i=0; i<obj_prod_id.length; i++) {
			if (obj_prod_id[i].type == "select-one") {
				for (j=0; j<obj_prod_id[i].length; j++) {
					thisArray = eval("viewOption"+ obj_prod_id[i].id);

					for (var j=0; j<thisArray.length; j++) {
						if (thisArray[j][0] == obj_prod_id[i].options[obj_prod_id[i].selectedIndex].value) {
							if (thisArray[j][4] <= 0) {
								var eleInput = document.createElement("input");
								eleInput.setAttribute("name","restock_sel");
								eleInput.setAttribute("type","hidden");
								eleInput.setAttribute("id","restock_sel");
								eleInput.setAttribute("value",thisArray[j][0]);
								form.appendChild(eleInput);
							}
						}
					}
				}
			}
		}

		window.open("","pop_restock","width=500,resizable,height=400");
		form.target = "pop_restock";
		form.action = "restock_alert_input.asp";
		form.method = "post";
		form.submit();

		var restock_sel_prod=document.getElementsByName("restock_sel");

		for(k=0; k<restock_sel_prod.length; k++){
			var reNode = restock_sel_prod[k];
			reNode.parentNode.removeChild(reNode);
		}
	}
	</script>
	<script>
	
	$(function(){
		$('#page-item-view ul.reviews li').click(function(){
			if( $(this).hasClass('open') ) {
				$(this).removeClass('open');
			} else {
				$(this).parent().find(".open").removeClass('open');
				$(this).addClass('open');

				// 모바일에서 큰 이미지 줄이기
				if( isMobile ) {
					$(this).find('.review-body img').each(function(){
						if( $(this).width() > viewportWidth ) {
							$(this).addClass('fullsize');
						}
					});
				}

				var linkname = $(this).find('a').attr('name')
				location.href = "#"+ linkname;
			}
		});
	});
	

</script>


<div id="adn_panel_wrap" class="closing_bg" style="display: none;"></div><script type="text/javascript" id="">(function(){var b=google_tag_manager["GTM-N6PTCN3"].macro(130);if(!b)return null;var c=google_tag_manager["GTM-N6PTCN3"].macro(131),d=google_tag_manager["GTM-N6PTCN3"].macro(132),e=google_tag_manager["GTM-N6PTCN3"].macro(133),a=google_tag_manager["GTM-N6PTCN3"].macro(136);a.map(function(a){ga(a.name+".send","event",{eventCategory:c.customEvent,eventAction:d.naverSearchParameter,eventValue:b,dimension1:e,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(140)})})})();</script><script type="text/javascript" id="">var eventCategory=google_tag_manager["GTM-N6PTCN3"].macro(141),eventAction=google_tag_manager["GTM-N6PTCN3"].macro(142),eventLabel=google_tag_manager["GTM-N6PTCN3"].macro(267),utmParams=google_tag_manager["GTM-N6PTCN3"].macro(307),pageURL=google_tag_manager["GTM-N6PTCN3"].macro(308),customReferrer=google_tag_manager["GTM-N6PTCN3"].macro(310),referrerType=google_tag_manager["GTM-N6PTCN3"].macro(311),userAgent=google_tag_manager["GTM-N6PTCN3"].macro(312),naverSearchParameter=google_tag_manager["GTM-N6PTCN3"].macro(315),productId=google_tag_manager["GTM-N6PTCN3"].macro(328),gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(331);
gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.pageView,eventLabel:customReferrer,dimension1:pageURL,dimension2:customReferrer,dimension3:userAgent,dimension5:referrerType,dimension6:"\uc778\uc9c0",dimension7:naverSearchParameter,dimension8:productId,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(335)})});
utmParams&&utmParams.keyword&&gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.searchKeywords,eventLabel:eventLabel.keyword,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(339)})});
naverSearchParameter&&gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.naverSearchParameter,eventLabel:eventLabel.naverSearchParameter,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(343)})});</script><script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(506);a&&a.keyword&&fbq("trackCustom","SearchKeywords",{keyword:a.keyword})})();</script>
<script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(515);try{google_tag_manager["GTM-N6PTCN3"].macro(520)(a)}catch(b){console.log(b)}kakaoPixel("1234567890123456789").viewContent({id:String(a.product.id)})})();</script>
<script type="text/javascript" id="">(function(){var b=google_tag_manager["GTM-N6PTCN3"].macro(529);try{google_tag_manager["GTM-N6PTCN3"].macro(534)(b)}catch(a){console.log(a)}var c=google_tag_manager["GTM-N6PTCN3"].macro(535),d=google_tag_manager["GTM-N6PTCN3"].macro(536),e=google_tag_manager["GTM-N6PTCN3"].macro(661),f=google_tag_manager["GTM-N6PTCN3"].macro(708),g=google_tag_manager["GTM-N6PTCN3"].macro(711);g.map(function(a){ga(a.name+".ec:addProduct",{id:b.product.id,name:b.product.name,price:b.product.value});ga(a.name+".set","currencyCode",google_tag_manager["GTM-N6PTCN3"].macro(712));ga(a.name+".ec:setAction","detail");ga(a.name+".send","event",{eventCategory:c.ecommerce,eventAction:d.detail,eventLabel:e.productName,
eventValue:f.revenue,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(716)})})})();</script><script type="text/javascript" id="">var eventCategory=google_tag_manager["GTM-N6PTCN3"].macro(717),eventAction=google_tag_manager["GTM-N6PTCN3"].macro(718),eventLabel=google_tag_manager["GTM-N6PTCN3"].macro(843),eventValue=google_tag_manager["GTM-N6PTCN3"].macro(890),pageURL=google_tag_manager["GTM-N6PTCN3"].macro(891),productId=google_tag_manager["GTM-N6PTCN3"].macro(904),productName=google_tag_manager["GTM-N6PTCN3"].macro(917),gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(920);
gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.viewContent,eventLabel:eventLabel.productName,eventValue:eventValue.productValue,dimension1:pageURL,dimension6:"\uad00\uc2ec",dimension8:productId,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(924)})});</script>
<script type="text/javascript" id="">(function(){var a=google_tag_manager["GTM-N6PTCN3"].macro(933);try{google_tag_manager["GTM-N6PTCN3"].macro(938)(a)}catch(b){console.log(b)}fbq("track","ViewContent",{content_type:a.productType,currency:google_tag_manager["GTM-N6PTCN3"].macro(939),content_ids:a.product.id,content_name:a.product.name,value:a.product.value})})();</script>
<script type="text/javascript" id="">(function(){var c=google_tag_manager["GTM-N6PTCN3"].macro(948);try{google_tag_manager["GTM-N6PTCN3"].macro(953)(c)}catch(a){console.log(a)}var d=google_tag_manager["GTM-N6PTCN3"].macro(954),e=google_tag_manager["GTM-N6PTCN3"].macro(955),b=google_tag_manager["GTM-N6PTCN3"].macro(1080),f=google_tag_manager["GTM-N6PTCN3"].macro(1127),g=[{googleBusinessVertical:"retail",eventLabel:b.retail},{googleBusinessVertical:"custom",eventLabel:b.custom}];g.map(function(a){gtag("event",e.viewItem,{send_to:"AW-674646633",id:c.product.id,google_business_vertical:a.googleBusinessVertical,event_category:d.adsRemarketingTag,event_label:a.eventLabel,
value:f.revenue,non_interaction:!0})});gtag("event",e.conversion,{send_to:"AW-674646633/WnLTCOz7_JMBEIbZmO0C",currency:google_tag_manager["GTM-N6PTCN3"].macro(1128),event_category:d.adsConversionTag,event_label:b.viewItem,value:f.productValue,non_interaction:!0})})();</script><iframe src="./상세상품_files/pixel.html" style="display: none;"></iframe><script type="text/javascript" id="">var eventCategory=google_tag_manager["GTM-N6PTCN3"].macro(1293),eventAction=google_tag_manager["GTM-N6PTCN3"].macro(1294),eventLabel=google_tag_manager["GTM-N6PTCN3"].macro(1419),pageURL=google_tag_manager["GTM-N6PTCN3"].macro(1420),gaTrackingCodeList=google_tag_manager["GTM-N6PTCN3"].macro(1423);gaTrackingCodeList.map(function(a){ga(a.name+".send",{hitType:"event",eventCategory:eventCategory.customEvent,eventAction:eventAction.scrollDepth,eventLabel:eventLabel.scrollDepthThreshold,dimension1:pageURL,nonInteraction:!0,referrer:google_tag_manager["GTM-N6PTCN3"].macro(1427)})});</script>
<script type="text/javascript" id="">(function(){fbq("trackCustom","ScrollDepth",{depth:google_tag_manager["GTM-N6PTCN3"].macro(1428)})})();</script>
</body></html>