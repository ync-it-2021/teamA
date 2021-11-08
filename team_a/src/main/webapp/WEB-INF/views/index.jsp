<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> A_team</title>
</head>
<body>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>A_team_project</title>

</head>
<body>

	<!--헤더영역시작-->
	


<jsp:include page="includes/header.jsp"/>




	<!--Content영역시작-->
	<section>
		<div id="page-main">
			<!-- 메인롤링배너 XML -->
			<div id="main-banner">
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview3d62.html?idx=521'"
						style="cursor:pointer;background-image:url('../images/1_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview3d62.html?idx=521'"
						style="background-image:url('../images/2_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview1798.html?idx=522'"
						style="cursor:pointer;background-image:url('../images/3_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview1798.html?idx=522'"
						style="background-image:url('../images/4_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventviewbca9.html?idx=523'"
						style="cursor:pointer;background-image:url('../images/5_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventviewbca9.html?idx=523'"
						style="background-image:url('../images/6_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview297f.html?idx=519'"
						style="cursor:pointer;background-image:url('../images/7_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview297f.html?idx=519'"
						style="background-image:url('../images/8_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview695e.html?idx=517'"
						style="cursor:pointer;background-image:url('../images/9_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview695e.html?idx=517'"
						style="background-image:url('../images/10_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
			</div>


			<!-- 메인베너 스크립트 -->
			<script type="text/javascript">


				$('#main-banner').owlCarousel({
					loop: true,
					nav: true,
					autoplay: true,
					items: 1,
					dots: true,
					navText: "",
				});

			</script>

			<!-- 메인롤링배너 XML -->


			<!-- 몬트라움 맞춤 제품 찾기 (상품추천) 클릭해서  원하는 상품 찾기 배너 밑에 고양이 강아지 부분 -->
			<div class="contents-wrapper recom-wrapper pc-width">
				<div style="text-align:center; width:100%" id="recom_tit"><img src="../images/main_title_01.png"></div>
				<br>
				<div style="float:left;" id="recom_bn"><img src="../images/finder_bn.jpg"></div>
				<div id="recom_gubun">
					<a href="recommend0bce.html?gubun=1" onmouseout="MM_swapImgRestore()"
						onmouseover="MM_swapImage('image1','','../images/dog_on.png',1)" style="padding-right:30px;">
						<img src="../images/dog_off.png" id="image1" border="0" />
					</a>
					<span style="padding-right:30px;font-size:20px;font-weight:bold">OR</span>
					<a href="recommend7f02.html?gubun=2" onmouseout="MM_swapImgRestore()"
						onmouseover="MM_swapImage('image2','','../images/cat_on.png',1)">
						<img src="../images/cat_off.png" id="image2" border="0" />
					</a>
				</div>
			</div>
			<!-- 몬트라움 맞춤 제품 찾기 (상품추천) 클릭해서  원하는 상품 찾기 배너 밑에 고양이 강아지 부분  끝-->



			<!-- MD's CHOICE 시작-->
			<div class="contents-wrapper best-seller-wrapper pc-width">
				<div style="text-align:center;  width:100%; margin-bottom: -35px; margin-top:50px" id="best_seller_tit">
					<img src="../images/main_title_02.png">
				</div>

				<div id="best-seller" class="item-list-type1">
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview5b19.html?pack_content_id=1011'">
								<img class="item-image" src="../images/p1011_20191226am91347_1.jpg"
									alt="MDs Choice 0" />
								<p class="item-title">프로도기</p>
								<p class="item-description">[생필품FAIR]<br>노스멜패드 M 200매 (50매 x 4개)</p>
								<p class="item-price"><span class="list-price">60,000</span> <span
										class="now-price">34,900</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview29bc.html?pack_content_id=1447'">
								<img class="item-image" src="../images/p1447_20200403pm43728_1.jpg"
									alt="MDs Choice 1" />
								<p class="item-title">프로도기</p>
								<p class="item-description">[생필품FAIR]<br>노스멜패드 L 대용량 패키지 200매</p>
								<p class="item-price"><span class="list-price">76,000</span> <span
										class="now-price">44,900</span>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopviewae08.html?pack_content_id=1448'">
								<img class="item-image" src="../images/p1448_20211005pm41949_1.jpg"
									alt="MDs Choice 2" />
								<p class="item-title">프로도기</p>
								<p class="item-description">[생필품FAIR]<br>트레이닝패드 XL 대용량 패키지 120매</p>
								<p class="item-price"><span class="list-price">64,000</span> <span
										class="now-price">37,900</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview6f62.html?pack_content_id=1571'">
								<img class="item-image" src="../images/p1571_20210901pm33611_1.jpg"
									alt="MDs Choice 3" />
								<p class="item-title">프로도기</p>
								<p class="item-description">[생필품FAIR]<br>퍼펙션패드 XL 80매 (20매 x 4개)</p>
								<p class="item-price"><span class="list-price">80,000</span> <span
										class="now-price">46,900</span>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview7151.html?pack_content_id=1551'">
								<img class="item-image" src="../images/p1551_20201231am113249_1.jpg"
									alt="MDs Choice 4" />
								<p class="item-title">디그앤롤</p>
								<p class="item-description">[생필품FAIR] 핑크젤리 에어솔루션 모래 19.5kg (7.5kg + 12kg)</p>
								<p class="item-price"><span class="list-price">70,000</span> <span
										class="now-price">37,900</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview107e.html?pack_content_id=1515'">
								<img class="item-image" src="../images/p1515_20200825pm35329_1.jpg"
									alt="MDs Choice 5" />
								<p class="item-title">디그앤롤</p>
								<p class="item-description">[생필품FAIR]<br>핑크젤리 에어솔루션 모래 30kg (7.5kg x 4개)</p>
								<p class="item-price"><span class="list-price">108,000</span> <span
										class="now-price">58,900</span>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopviewc490.html?pack_content_id=1612'">
								<img class="item-image" src="../images/p1612_20210622am105512_1.jpg"
									alt="MDs Choice 6" />
								<p class="item-title">디그앤롤</p>
								<p class="item-description">[생필품FAIR] 핑크젤리 두부솔루션 모래 49L (7L x 7개)</p>
								<p class="item-price"><span class="list-price">77,000</span> <span
										class="now-price">39,900</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview110f.html?pack_content_id=1319'">
								<img class="item-image" src="../images/p1319_20210905pm114143_1.jpg"
									alt="MDs Choice 7" />
								<p class="item-title">마스</p>
								<p class="item-description">[생필품FAIR]<br>플러쉬 콤 (19cm)</p>
								<p class="item-price"><span class="list-price">29,000</span> <span
										class="now-price">15,900</span>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview6e57.html?pack_content_id=1035'">
								<img class="item-image" src="../images/p1035_20210905pm114331_1.jpg"
									alt="MDs Choice 8" />
								<p class="item-title">마스</p>
								<p class="item-description">[생필품FAIR]<br>매트&하드 슬리커</p>
								<p class="item-price"><span class="list-price">30,000</span> <span
										class="now-price">16,500</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopviewd1a3.html?pack_content_id=1641'">
								<img class="item-image" src="../images/p1641_20210929am82337_1.jpg"
									alt="MDs Choice 9" />
								<p class="item-title">에그풀</p>
								<p class="item-description">허그미 펫 타올 M 2개세트</p>
								<p class="item-price"><span class="list-price">52,000</span> <span
										class="now-price">25,900</span>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview37f1.html?pack_content_id=1642'">
								<img class="item-image" src="../images/p1642_20210929am82428_1.jpg"
									alt="MDs Choice 10" />
								<p class="item-title">에그풀</p>
								<p class="item-description">허그미 펫 타올 L 2개세트</p>
								<p class="item-price"><span class="list-price">66,000</span> <span
										class="now-price">32,900</span>
							</li>

							<li class="item" style="cursor:pointer;"
								onclick="location.href = 'shopview9687.html?pack_content_id=1637'">
								<img class="item-image" src="../images/p1637_20210929am81938_1.jpg"
									alt="MDs Choice 11" />
								<p class="item-title">에그풀</p>
								<p class="item-description">계란후라이 넥카라</p>
								<p class="item-price"><span class="list-price">23,000</span> <span
										class="now-price">14,900</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<script>
				$('#best-seller').owlCarousel({
					loop: true,
					nav: true,
					autoplay: true,
					items: 2,
					margin: 0,
					dotsEach: 2,
					navText: ['<img src="/static/img/common/btn_prev.png">', '<img src="../images/btn_next.png">'],
					dots: true,
					responsive: {
						360: { items: 2, margin: 0, dotsEach: 2, slideBy: 2 },
						1000: { items: 2, margin: 20, dotsEach: 2, nav: false, slideBy: 2 }
					}
				});
			</script>

			<!-- MD's CHOICE 끝-->



			<!-- BEST ITEMS -->
			<div id="best-items" style="margin-bottom:50px;">
				<div class="pc-width">
					<div id="category_name_title"
						style="text-align:center;  width:100%; margin-top:30px; margin-bottom:20px;"><img
							src="../images/main_title_03.png"></div>
					<div class="category-item-wrapper">
						<div id="category-item" class="tmphot" cate="1">
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopview2670.html?thisCategory=0&amp;pack_content_id=1360'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1360_20191204pm24605_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">노스멜패드 XL 대용량 패키지 120매</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopviewa065.html?thisCategory=0&amp;pack_content_id=1499'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1499_20210830am81418_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">이지츄 그레인프리 피쉬 2kg</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopview0d4b.html?thisCategory=0&amp;pack_content_id=1497'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1497_20210830am81519_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">그레인프리 덕 2.72kg</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview28fc.html?thisCategory=0&amp;pack_content_id=1074'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1074_20210830am80834_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "54", "write")</script>
										</p>
										<p class="item-description">홀리스틱 캣 다이어트 5.4kg (전연령)</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopviewd7de.html?thisCategory=0&amp;pack_content_id=1496'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1496_20210830am81546_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">그레인프리 덕 1.36kg</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview8a75.html?thisCategory=0&amp;pack_content_id=1072'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1072_20210830am80849_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "54", "write")</script>
										</p>
										<p class="item-description">그레인프리 캣 다이어트 5.4kg (전연령)</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopviewb559.html?thisCategory=0&amp;pack_content_id=1515'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1515_20200825pm35329_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "73", "write")</script>
										</p>
										<p class="item-description">[생필품FAIR]^핑크젤리 에어솔루션 모래 30kg (7.5kg x 4개)</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview3e55.html?thisCategory=0&amp;pack_content_id=1447'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1447_20200403pm43728_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">[생필품FAIR]^노스멜패드 L 대용량 패키지 200매</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopviewa2b5.html?thisCategory=0&amp;pack_content_id=1011'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1011_20191226am91347_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">[생필품FAIR]^노스멜패드 M 200매 (50매 x 4개)</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview69c5.html?thisCategory=0&amp;pack_content_id=1448'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1448_20211005pm41949_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">[생필품FAIR]^트레이닝패드 XL 대용량 패키지 120매</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopview7a72.html?thisCategory=0&amp;pack_content_id=1495'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1495_20210830am81652_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">그레인프리 캣 피쉬 1.81kg</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopviewa914.html?thisCategory=0&amp;pack_content_id=1498'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1498_20210830am81446_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">이지츄 그레인프리 피쉬 1kg</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopviewb4f5.html?thisCategory=0&amp;pack_content_id=1581'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1581_20211007pm31955_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "54", "write")</script>
										</p>
										<p class="item-description">그레인프리 오션 레시피(연어) 5.9kg</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview95e9.html?thisCategory=0&amp;pack_content_id=1500'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1500_20210830am81348_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "101", "write")</script>
										</p>
										<p class="item-description">오리지날 치킨 1.36kg</p>
									</li>
								</ul>
							</div>
							<div class="page-block">
								<ul>
									<li class="item"
										onclick="location.href = 'shopview1209.html?thisCategory=0&amp;pack_content_id=1574'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1574_20210901pm33415_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">퍼펙션패드 XL 120매 (20매 x 6개)</p>
									</li>

									<li class="item"
										onclick="location.href = 'shopview06fe.html?thisCategory=0&amp;pack_content_id=1518'"
										style="cursor:pointer;">
										<img class="item-image" src="../images/p1518_20210901pm32923_1.jpg">
										<p class="item-title">
											<script language="javascript">view_name("view_brand", "20", "write")</script>
										</p>
										<p class="item-description">퍼펙션패드 XXL 80매 (20매 x 4개)</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- BEST ITEMS -->





			<!-- BEST REVIEW(후기)  PC-->

			<div class="contents-wrapper best-review-wrapper pc-width only-pc">
				<div class="title-wrapper-title" style="text-align:center; margin-bottom:-30px;  width:100%;"><img
						src="../images/main_title_04.png"></div>
				<div class="more-btn">
					<img onclick="location.href='review9500.html?potoGubun=2'" style="cursor:pointer;"
						src="../images/bt_more.png">
				</div>
				<div id="mont-review">
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_view5098.html?id=15851'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20211015am83329.jpg);">
								</div>
								<p class="item-title"><span class="title">너무 추천</span><span
										class="id-name">JIN23*****</span></p>
								<p class="item-description">두툼하고 흡수도 잘돼서 너무 좋아요!
									그리고 스티커가 있어서 고정도 잘 됩니다????
								</p>
							</li>

							<li class="item" onclick="location.href='review_view7759.html?id=15844'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20211012am85146.jpg);">
								</div>
								<p class="item-title"><span class="title">이 사료만 먹여요</span><span
										class="id-name">LEPEC********</span></p>
								<p class="item-description">화식으로 바꿔보려고 했는데, 저희 아이는 건사료에 익숙해서 그런지 잘 안 먹더라고요. 그래서 다시 몇년째
									먹이고 있는 베스트브리드 연어 사료로 돌아왔습니다. 저희 아이는 알러지가 </p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_view62c4.html?id=15835'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20211007pm70001.jpg);">
								</div>
								<p class="item-title"><span class="title">세번째구매♡</span><span
										class="id-name">CLAMP***</span></p>
								<p class="item-description">세번째 구매네요ㅎㅎ
									알갱이가 큰편이라 조금 으깨서 주는데
									강아지가 너무 맛있게 잘먹어요^^</p>
							</li>

							<li class="item" onclick="location.href='review_view4d39.html?id=15823'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210930am102131.jpg);">
								</div>
								<p class="item-title"><span class="title">건강한 사료</span><span
										class="id-name">JINNY****</span></p>
								<p class="item-description">울 아이가 잘먹고 건강하게 자라고 있어요.
									안심하고 먹일수있는 사료를 구할수있어서 얼마나다행인지요! 늘 함께해주길~</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_viewb63e.html?id=15822'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210930am122032.jpg);">
								</div>
								<p class="item-title"><span class="title">3번째 재구매 후기입니당!</span><span
										class="id-name">YGGH0***</span></p>
								<p class="item-description">저는 사료 유목민이었어요 ㅠㅠ
									진짜 2년 동안 계속 바꾸고 처방사료도 먹어봤지만 턱드름이 안 사라졌었어요,,,,,
									그리고 발가락 사이에 염증이 생기는 지간염도 계속 재발했구</p>
							</li>

							<li class="item" onclick="location.href='review_view6413.html?id=15818'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210924am94129.jpg);">
								</div>
								<p class="item-title"><span class="title">6키로 푸들도 성공 !! ㅠㅠ</span><span
										class="id-name">HAEUN***</span></p>
								<p class="item-description">가방 구매는 이번이 처음이라 진짜 많은 제품 알아보고 고르다가 몬트라움 선택했는데 ㅠㅠㅠ
									사실 구매하면서도 아 들어갈까... 6키로에 푸들인데.... 들어갈까... 엄청 고민하다</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_viewf9d9.html?id=15812'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210916pm93128.jpg);">
								</div>
								<p class="item-title"><span class="title">퍼펙션 패드</span><span
										class="id-name">K1630*********</span></p>
								<p class="item-description">사이즈도 적당하고 냄새도 다른 패드보다 덜 나고 흡수력이 정말 짱입니다...색상이 어두워서 노란 오줌이
									안보이니 미관상 더 나은것 같고..바닥에 부착이 되니 밀리지도 않고 너무 편</p>
							</li>

							<li class="item" onclick="location.href='review_view1225.html?id=15804'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210914pm111041.jpg);">
								</div>
								<p class="item-title"><span class="title">카르나4 울 강쥐가 넘 잘 먹습니다!! </span><span
										class="id-name">YYSUE*</span></p>
								<p class="item-description">마약 사료로 불리는 허x사료 이후 이렇게 잘 먹는 건사료는 처음입니다.
									치킨 거의 다 먹어가서 이번엔 알맹이가 더 작다는 이지츄 두 봉지나 구매했어요.
									잘 품절된다고 해서 미리</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_view43f5.html?id=15786'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210911pm44557.jpg);">
								</div>
								<p class="item-title"><span class="title">왜 카르나 카르나 하는지 알겠어요</span><span
										class="id-name">ANDMO****</span></p>
								<p class="item-description">핸드폰 인증번호가 안와서 어렵게 회원가입하고 구매한 카르나4
									여러 사료를 테스트해보고 결정!
									급여해보니 변 상태도 좋고 영양소부터 알갱이크기 단단함정도까지 마음에든다
									꾸</p>
							</li>

							<li class="item" onclick="location.href='review_view448a.html?id=15778'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210908pm11153.jpg);">
								</div>
								<p class="item-title"><span class="title">사료투정하던아이..</span><span
										class="id-name">IM131*</span></p>
								<p class="item-description">전자렌지 20초정도 돌려주면
									아주아주 잘 먹어요
									응가도 이쁘구????</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_viewec20.html?id=15771'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210903am104600.jpg);">
								</div>
								<p class="item-title"><span class="title">잘 먹어요!!</span><span
										class="id-name">DLGKS******</span></p>
								<p class="item-description">오븐이라 그런지 정말 손으로 만졌을따 기름기가 없어요.
									너무 너무 좋습니다. 사료 냄새는 꼬순내나요.
									둘째는 처음에는 안먹었고 첫째가 바로 잘 먹었는데 첫째보고는 자기도 따라 </p>
							</li>

							<li class="item" onclick="location.href='review_view559a.html?id=15767'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210902pm60242.jpg);">
								</div>
								<p class="item-title"><span class="title">꾸준히 사용하는 패드입니다</span><span
										class="id-name">XQHGH**</span></p>
								<p class="item-description">다견가정이라 항상 이 패드만 사용해요
									원래 Xxl 사용하다가 xl도 한번 사봤어요
									쉬아 색이 안보여서 좋아요 흡수력도 최고입니당</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_view63a3.html?id=15765'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210901am74746.jpg);">
								</div>
								<p class="item-title"><span class="title">역시..!! 좋네요</span><span
										class="id-name">OUTOF*******</span></p>
								<p class="item-description">푸들 전용과 독 다이어트 번갈아 먹이고 있어요. 이번엔 두 팩으로 사료창고를 채웠어요.</p>
							</li>

							<li class="item" onclick="location.href='review_view6242.html?id=15764'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210831pm21211.jpg);">
								</div>
								<p class="item-title"><span class="title">2년째 먹이는 사료입니다</span><span
										class="id-name">LEPEC********</span></p>
								<p class="item-description">육류 알러지에 아마씨 알러지까지 있는 아이를 키우고 있어 먹일 수 있는 사료가 많지 않습니다.다행히
									베스트브리드 홀리스틱 콜드 워터 레시피 연어는 육류, 아마씨가 함유 되지 않아 </p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_view278b.html?id=15755'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210824am93127.jpg);">
								</div>
								<p class="item-title"><span class="title">침대를 너무 좋아해요</span><span
										class="id-name">N1628*********</span></p>
								<p class="item-description">오랜만에 침대를 바꿔줬는데, 바로 적응하고 저렇게 꿀잠을 자네요.5kg 미니어처푸들인데 튼튼하고 크기도
									적당해 만족합니다.&nbsp;</p>
							</li>

							<li class="item" onclick="location.href='review_view56e5.html?id=15750'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210823pm12239.jpg);">
								</div>
								<p class="item-title"><span class="title">잘 먹어요!! 감동ㅠㅠ</span><span
										class="id-name">YYSUE*</span></p>
								<p class="item-description">울 강쥐 이제 겨우 1살인데,
									심한 편식견이에요ㅠㅠ
									마약사료도 거부, 동결건조, 화식도 거부ㅠㅠ
									멍생보감에 성분 좋은 사료 검색하고,
									강사모에서도 검색하고,
									네이버 쇼핑에</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_viewa044.html?id=15745'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210821pm51921.jpg);">
								</div>
								<p class="item-title"><span class="title">완전 좋아요</span><span
										class="id-name">TNGKS****</span></p>
								<p class="item-description">우리집 강아지가 너무 좋아하네요밥먹는거 아니면 계속 올라가있어요엄청 편안해 보여서 저도 누워보니,
									푹신푹신한게 좋네요그리고 강아지가 방석위에 쉬를 했는데 방수가 되더라구요?!좋은 </p>
							</li>

							<li class="item" onclick="location.href='review_view24e0.html?id=15741'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210817am103256.jpg);">
								</div>
								<p class="item-title"><span class="title">너무 잘먹어요^^</span><span
										class="id-name">CLAMP***</span></p>
								<p class="item-description">항상 알갱이가 작은사료만 사서 먹였는데 강아지가 급하게 먹구 삼키면서 켁켁되는게 너무 심해서 큰알갱이사료를
									찾게 되었네요
									성분도 좋아야해서 고르다가 카르나4를 선택하게 되었어요^</p>
							</li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li class="item" onclick="location.href='review_viewe70a.html?id=15722'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210804pm50058.jpg);">
								</div>
								<p class="item-title"><span class="title">최고최고</span><span class="id-name">HOYEE*</span>
								</p>
								<p class="item-description">-견종 : 킹찰스 스파니엘
									-몸무게 : 5.7kg
									-체고: 35cm
									-몸길이(머리~엉덩이) : 55cm
									-앉은키 : 40cm

									조만간 기차로 장거리 이동을 해야해서 이</p>
							</li>

							<li class="item" onclick="location.href='review_viewb7ab.html?id=15719'"
								style="cursor:pointer;">
								<div
									style="width:236px;height:186px;background-position:center center;background-repeat:no-repeat;background-size:236px 186px;text-align:center;background-image:url(../images/20210803pm90101.jpg);">
								</div>
								<p class="item-title"><span class="title">너무너무 잘먹어요^^</span><span
										class="id-name">EKDMS****</span></p>
								<p class="item-description">저희 애기들이 엄청잘먹아요! 구토증상없이 식감이 바삭바삭한지 저희집 사료종류다 여섯개 인데 카리나 4 가
									압도적이네요 강아지꺼도 삿는다 다잘먹어요 이제부터 정착입니다 ??</p>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<script>
				$('#mont-review').owlCarousel({
					loop: false,
					items: 2,
					margin: 0,
					nav: true,
					dots: false,
					dotsEach: 2,
					navText: ['<img src="/static/img/main/btn_prev.png">', '<img src="../images/btn_next-2.png">'],
					responsive: {
						360: { margin: 0 },
						1000: { margin: 20 }
					}
				});

			</script>


			<style type="text/css">
				.wide_twobanner07 {
					background-image: url("../images/main_wide_banner_18_bg.jpg");
					background-repeat: repeat;
				}

				.wide_twobanner07 .contents-wrapper {
					width: 1120px;
					margin: 0 auto;
				}

				.wide_twobanner07 .contents-wrapper a {
					overflow: hidden;
				}
			</style>

			<section>
				<div class="wide_twobanner07">
					<div class="contents-wrapper only-pc">
						<a href="eventviewfdd5.html?idx=350">
							<img src="../images/main_wide_banner_18.jpg" alt="첫구매특가" title="첫구매특가">
						</a>
					</div>

				</div>
			</section>


			<!--new arrival 시작-->
			<div class="contents-wrapper best-seller-wrapper2 pc-width">
				<div id="title-wrapper2-title"
					style="text-align:center; margin-bottom: -35px;  width:100%; margin-top:50px"><img
						src="../images/main_title_05.png"></div>
				<div id="best-seller2" class="item-list-type1">

					<!-- { block for repeat items } -->

					<div class="page-block">
						<ul>
							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview36d0.html?thisCategory=0&amp;pack_content_id=1648'"
								style="cursor:pointer;">

								<img class="item-image best" src="../../../resources/upload/product/${test.prd_img1}">

								<p class="item-title">프로도기</p>
								<p class="item-description">아로마패드 M 150매 (50매 x 3개)</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1648"
										name="best_ori_count1648">42,000</span><span class="now-price"
										id="best_promotion_ID1648" name="best_promotion_ID1648">24,900</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopviewd260.html?thisCategory=0&amp;pack_content_id=1652'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1652_20211022pm23813_1.jpg">

								<p class="item-title">디그앤롤</p>
								<p class="item-description">핑크젤리 프라임솔루션 모래 6.5kg (향선택)</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1652"
										name="best_ori_count1652">34,000</span><span class="now-price"
										id="best_promotion_ID1652" name="best_promotion_ID1652">19,800</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview0c0f.html?thisCategory=0&amp;pack_content_id=1635'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1635_20210929am81425_1.jpg">

								<p class="item-title">에그풀</p>
								<p class="item-description">허그미 펫 타올 M</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1635"
										name="best_ori_count1635">26,000</span><span class="now-price"
										id="best_promotion_ID1635" name="best_promotion_ID1635">16,900</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview081d.html?thisCategory=0&amp;pack_content_id=1636'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1636_20210929am81555_1.jpg">

								<p class="item-title">에그풀</p>
								<p class="item-description">허그미 펫 타올 L</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1636"
										name="best_ori_count1636">33,000</span><span class="now-price"
										id="best_promotion_ID1636" name="best_promotion_ID1636">21,400</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview1aa6.html?thisCategory=0&amp;pack_content_id=1568'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1568_20210901pm33146_1.jpg">

								<p class="item-title">프로도기</p>
								<p class="item-description">퍼펙션패드 XL (20매)-향 선택</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1568"
										name="best_ori_count1568">20,000</span><span class="now-price"
										id="best_promotion_ID1568" name="best_promotion_ID1568">13,000</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview6d55.html?thisCategory=0&amp;pack_content_id=1637'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1637_20210929am81938_1.jpg">

								<p class="item-title">에그풀</p>
								<p class="item-description">계란후라이 넥카라</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1637"
										name="best_ori_count1637">23,000</span><span class="now-price"
										id="best_promotion_ID1637" name="best_promotion_ID1637">14,900</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview6759.html?thisCategory=0&amp;pack_content_id=1604'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1604_20210726am90440_1.jpg">

								<p class="item-title">위고노</p>
								<p class="item-description">2way 와이드업 캔버스 슬링백</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1604"
										name="best_ori_count1604">85,000</span><span class="now-price"
										id="best_promotion_ID1604" name="best_promotion_ID1604">48,500</span>

								</p>

							</li>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview1e86.html?thisCategory=0&amp;pack_content_id=1591'"
								style="cursor:pointer;">

								<img class="item-image best" src="../images/p1591_20211007pm32029_1.jpg">

								<p class="item-title">베스트브리드</p>
								<p class="item-description">홀리스틱 토이 스몰브리드 레시피 1.8kg</p>

								<p class="item-price">

									<span class="list-price" id="best_ori_count1591"
										name="best_ori_count1591">34,000</span><span class="now-price"
										id="best_promotion_ID1591" name="best_promotion_ID1591">23,800</span>

								</p>

							</li>
							<!-- { end repeat } -->
						</ul>
					</div>

				</div>
			</div>
			<!-- new arrival 끝-->
			<!--  sale 특가 시원하게 쏩니다 부분  -->
			<style type="text/css">
				.wide_twobanner06 {
					background-image: url("../images/main_wide_banner_21_bg.jpg");
					background-repeat: repeat;
				}

				.wide_twobanner06 .contents-wrapper {
					width: 1120px;
					margin: 0 auto;
				}

				.wide_twobanner06 .contents-wrapper a {
					overflow: hidden;
				}
			</style>
			<!--  sale 특가 시원하게 쏩니다 부분  끝 -->
			<section>
				<div class="wide_twobanner06">
					<div class="contents-wrapper only-pc">
						<a href="eventview9b14.html?idx=462">
							<img src="../images/main_wide_banner_21.jpg" alt="SALE" title="SALE">
						</a>
					</div>

				</div>
			</section>

			<!-- 하단 움직이는 이미지  scroller 부분  -->
			<div class="contents-wrapper mont-event-wrapper pc-width">
				<div id="mont-event-title" style="text-align:center; margin-top:50px; width:100%"><img
						src="../images/main_title_06.png"></div>
				<div class="more-btn">
					<img onclick="location.href='event.html'" style="cursor:pointer;" src="../images/bt_event_more.png">
				</div>

				<div id="mont-event">
					<div class="page-block">
						<ul>
							<li><a href="eventview695e.html?idx=517">
									<p><img src="../images/1_20210917pm11158.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventviewbca9.html?idx=523">
									<p><img src="../images/2_20211022pm24809.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventview1798.html?idx=522">
									<p><img src="../images/3_20211022pm23332.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventviewf30c.html?idx=513">
									<p><img src="../images/4_20211008pm33238.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventview297f.html?idx=519">
									<p><img src="../images/6_20210929am84821.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
				</div>
				<!-- 하단 배송 교환 문의 아이콘 부분  -->
				<div id="mont-bn">
					<div class="bn-div mr" onClick="location.href='list.html'" style="cursor:pointer;">
						<div class="bn-img" style="height:107px;"><img src="../images/main_icon_cs.png" alt=""></div>
						<div class="bn-txt">배송/교환/환불 등<br><span>문의는 여기로!</span></div>
					</div>

					<div class="bn-div" onClick="location.href='members.html'" style="cursor:pointer;">
						<div class="bn-img"><img src="../images/main_icon_member.png" alt=""></div>
						<div class="bn-txt">혜택뿜뿜<br><span>MEMBERSHIP</span></div>
					</div>

				</div>
				<!-- 하단 배송 교환 문의 아이콘 부분   끝-->
			</div>
			<script>
				$('#mont-event').owlCarousel({
					loop: true,
					nav: true,
					autoplay: true,
					items: 1,
					margin: 0,
					dotsEach: 1,
					navText: ['<img src="/static/img/main/btn_prev.png">', '<img src="../images/btn_next-2.png">'],
					dots: false,
					responsive: {
						360: { items: 1, margin: 0, dotsEach: 1, slideBy: 1 },
						1000: { items: 2, margin: 10, dotsEach: 1, slideBy: 2 }
					}
				});
			</script>
			<!-- 하단에 qna news 부분 입니다 -->
			<div style="clear:both;margin-bottom:30px;"></div>
			<div class="cs-wrapper_topline">
				<div>
					<div class="contents-wrapper cs-wrapper pc-width clearfix">
						<div class="ico ico-news" onclick="location.href='press.html'" style="cursor:pointer;">NEWS
						</div>
						<div class="ico ico-faq" onclick="location.href='faq.html'" style="cursor:pointer;">FAQ</div>
						<div class="ico ico-review" onclick="location.href='list.html'" style="cursor:pointer;">Q&A
						</div>
						<div class="notice">
							<p class="title">NOTICE</p>

							<!-- { block for repeat items } -->
							<p class="item"><a href="noticeview49ec.html?notice_Gubun=B&amp;idx=444">사랑의 사료 기부 캠페인 당첨자
									발표</a></p>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<p class="item"><a href="noticeviewa42a.html?notice_Gubun=B&amp;idx=471">몬트라움 리뷰 이벤트 당첨자
									발표♥</a></p>
							<!-- { end repeat } -->

							<!-- { block for repeat items } -->
							<p class="item"><a href="noticeview4577.html?notice_Gubun=B&amp;idx=419">3주년 장바구니 이벤트 당첨자
									발표~♥</a></p>
							<!-- { end repeat } -->

							<p class="more"><a href="notice.html">+</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 하단에 qna news 부분 입니다  끝-->
	</section>


	<footer>
		<div id="sitemap" class="only-pc">
			<div class="pc-width">
				<div class="inner-div clearfix">
					<div class="section">
						<h3></h3>
						<!-- <ul>
							<li onclick="location.href='shopmain8356.html?iniCategory=2&amp;thisCategory=54'"
								style="cursor:pointer;">BEST BREED</li>
							<li onclick="location.href='shopmainc90f.html?iniCategory=2&amp;thisCategory=20'"
								style="cursor:pointer;">PRODOGGIE</li>
							<li onclick="location.href='shopmaind59e.html?iniCategory=2&amp;thisCategory=74'"
								style="cursor:pointer;">WEGONO</li>
							<li onclick="location.href='shopmain176d.html?iniCategory=2&amp;thisCategory=22'"
								style="cursor:pointer;">MARS ALCOSO</li>
							<li onclick="location.href='shopmain8261.html?iniCategory=2&amp;thisCategory=73'"
								style="cursor:pointer;">DIG & ROLL</li>
							<li onclick="location.href='shopmain04d6.html?iniCategory=2&amp;thisCategory=21'"
								style="cursor:pointer;">KOMPLETT</li>
							<li onclick="location.href='shopmain68fb.html?iniCategory=2&amp;thisCategory=82'"
								style="cursor:pointer;">ICELAND PET</li>
							<li onclick="location.href='shopmain8ecb.html?iniCategory=2&amp;thisCategory=101'"
								style="cursor:pointer;">CARNA4</li>
						</ul> -->
					</div>
					<div class="section">
						<h3>SHOP</h3>
						<ul>
							<li onclick="location.href='shopmain95da.html?iniCategory=24&amp;thisCategory='"
								style="cursor:pointer;">사료</li>
							<li onclick="location.href='shopmaind449.html?iniCategory=87&amp;thisCategory='"
								style="cursor:pointer;">간식</li>
							<li onclick="location.href='shopmainacb9.html?iniCategory=25&amp;thisCategory='"
								style="cursor:pointer;">배변용품</li>
							<li onclick="location.href='shopmain84ed.html?iniCategory=27&amp;thisCategory='"
								style="cursor:pointer;">미용</li>
							<li onclick="location.href='shopmaine79f.html?iniCategory=28&amp;thisCategory='"
								style="cursor:pointer;">리빙/외출</li>
							<li onclick="location.href='shopmain31f3.html?iniCategory=76&amp;thisCategory='"
								style="cursor:pointer;">고양이</li>
						</ul>
					</div>
					<div class="section">
						<h3>EVENT</h3>
						<ul>
							<!-- li onclick="location.href='/common/all_site/Notice/event.asp'" style="cursor:pointer;">샘플신청</li -->
							<li onclick="location.href='event.html'" style="cursor:pointer;">진행중 EVENT</li>
							<li onclick="location.href='notice-2.html'" style="cursor:pointer;">당첨자 발표</li>
							<li onclick="location.href='review.html'" style="cursor:pointer;">BEST REVIEW</li>
						</ul>
					</div>
					<div class="section">
						<h3>MEMBER</h3>
						<ul>
							<li onclick="location.href='join_agreement.html'" style="cursor:pointer;">회원가입</li>
							<li onclick="location.href='login.html'" style="cursor:pointer;">로그인</li>
							<li onclick="location.href='searchidinfo2ce3.html?ProcessGubun=A'" style="cursor:pointer;">
								아이디 찾기</li>
							<li onclick="location.href='searchidinfo0a92.html?ProcessGubun=B'" style="cursor:pointer;">
								비밀번호 찾기</li>
						</ul>
					</div>
					<div class="section">
						<h3>CONTACT</h3>
						<ul>
							<li onclick="location.href='notice-2.html'" style="cursor:pointer;">공지사항</li>
							<li onclick="location.href='faq.html'" style="cursor:pointer;">FAQ</li>
							<li onclick="location.href='list.html'" style="cursor:pointer;">Q&A</li>
							<li onclick="location.href='aboutus.html'" style="cursor:pointer;">제휴문의</li>
						</ul>
					</div>
					<div class="cs-center">
						<img src="../images/img_contact.png" alt="CONTACT INFO - NO SPAM" />
						<div class="sns-icons">
							<span class="youtubu"><a
									href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1"
									target="_blank"><img src="../images/youtubu_icon.png" alt="facebook"
										style="width:38px;"></a></span>
							<span class="facebook"><a href="https://post.naver.com/welovemontraum" target="_blank"><img
										src="../images/naver_icon.png" alt="facebook" style="width:38px;"></a></span>
							<span class="facebook"><a href="https://www.facebook.com/montraum2017" target="_blank"><img
										src="../images/facebook_icon.png" alt="facebook"></a></span>
							<span class="instar"><a href="https://www.instagram.com/montraum_official"
									target="_blank"><img src="../images/instargram_icon.png"
										alt="instargram"></a></span>
						</div>
					</div>

				</div>
			</div>
		</div>


	</footer>
	<!--풋터영역종료-->
	</div>
	<!-- 우측  퀵 메뉴 부분 시작입니다 . -->
	<div id="quickmenu" name="quickmenu" class="only-pc">
		<ul class="quick_banner">
			<a href="eventview064b.html?idx=162">
				<li class="nosmell"></li>
			</a>
			<a href="eventviewf89f.html?idx=136">
				<li class="bestbreed"></li>
			</a>
			<a href="eventviewfdd5.html?idx=350">
				<li class="firstbuying"></li>
			</a>
			<a href="eventview9b14.html?idx=462">
				<li class="sale"></li>
			</a>

		</ul>
		<div class="viewed">
			<a href="javascript:gdscroll(-86)" onfocus=blur()>
				<p><img src="../images/quickmenu_arrowup.png"></p>
			</a>
			<p class="tit">VIEWED <span id="num" name="num"></span></p>
			<div id="TODAYLIST2" name="TODAYLIST2" style="height:255px;overflow:hidden;"></div>
			<a href="javascript:gdscroll(86)" onfocus=blur()>
				<p><img src="../images/quickmenu_arrowdown.png"></p>
			</a>
		</div>
		<div class="go-top">
			<p>TOP</p>
		</div>
	</div>

	<!--  우측측 퀵메뉴 부분  -->
	<script type="text/javascript">
		//퀵메뉴
		$(function () {
			var UI = {
				init: function () { this.quickMenuFn(); },
				initialize: function () {
					this.id = {
						target: { quick: '#quickmenu' }
					};
					this.init();
				},
				quickMenuFn: function () {
					var quick = $(this.id.target.quick);
					var qTop = parseInt(quick.css('top'));

					$(window).scroll(function () {
						var winTop = $(window).scrollTop();
						var preTop = qTop + winTop;
						var newTop = winTop + qTop - (parseInt(quick.css('height')) + qTop - $(window).height() + 10);

						if (newTop <= qTop) {
							newTop = qTop;
						}
						quick.stop().animate({ top: newTop }, 400);
					})
				},

				scrollTop: function (eTarget, speed) {
					var speed = speed || null;
					eTarget.on('click', function () {
						$('html, body').animate({
							scrollTop: $("body").offset().top
						}, speed)
					})
				}
			};
			$(function () {
				UI.initialize();
			})
		})
	</script>
	<!--  우측측 퀵메뉴 부분  끝-->


	<script type="text/javascript">
		var currentCategory = null;
		function showCategory(id, obj) {
			if (currentCategory == id) {
				closeCategory();
				return false;
			} else if (currentCategory) {
				closeCategory();
			}

			$("#best-items").addClass('open');
			$(obj).addClass('active');
			currentCategory = id;

			$(".tmphot").hide();
			$("div [cate=" + id + "]").show();

			// #category-item 에 데이타를 ajax 등으로 넣은 후 success callback으로 사용하세요.
			// setTimeout 은 위 ajax 로 갖고오는 타임과 css animation의 샘플을 위해 넣은 것입니다.
			// @load data
			//		window.setTimeout(function(){
			$("div [cate=" + id + "]").owlCarousel({
				loop: false,
				items: 2,
				margin: 0,
				dotsEach: 2,
				dots: true,
				nav: false,
				navText: ['<img src="/static/img/common/btn_prev.png">', '<img src="../images/btn_next.png">'],
				afterUpdate: showItems(),
				responsive: {
					360: { margin: 0, nav: true },
					1000: { margin: 0, nav: true }
				},
			});
			//		}, 100);
		}

		function showItems() {
			$("#best-items").addClass('show-items');
		}

		function closeCategory() {
			$("#best-items li.active").removeClass('active');
			$("#best-items").removeClass('open');
			$("#best-items").removeClass('show-items');
			currentCategory = null;
		}

		//카테고리 기본 오픈, id 와 li seq
		showCategory('1', $("#best-items ul li:eq(0)"));



		function removeHtml(str) {
			var pattern = /[&lt;][^>]*[>]|[<][^>]*[>]/g
			str = str.replace(pattern, "");
			return str;
		}

	</script>




</body>
</html>