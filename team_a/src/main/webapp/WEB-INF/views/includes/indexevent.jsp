<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style type="text/css">
				.wide_twobanner06 {
					background-image: url("../resources/images/main_wide_banner_21_bg.jpg");
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
							<img src="../resources/images/main_wide_banner_21.jpg" alt="SALE" title="SALE">
						</a>
					</div>

				</div>
			</section>

			<!-- 하단 움직이는 이미지  scroller 부분  -->
			<div class="contents-wrapper mont-event-wrapper pc-width">
				<div id="mont-event-title" style="text-align:center; margin-top:50px; width:100%"><img
						src="../resources/images/main_title_06.png"></div>
				<div class="more-btn">
					<img onclick="location.href='event.html'" style="cursor:pointer;" src="../resources/images/bt_event_more.png">
				</div>

				<div id="mont-event">
					<div class="page-block">
						<ul>
							<li><a href="eventview695e.html?idx=517">
									<p><img src="../resources/images/1_20210917pm11158.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventviewbca9.html?idx=523">
									<p><img src="../resources/images/2_20211022pm24809.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventview1798.html?idx=522">
									<p><img src="../resources/images/3_20211022pm23332.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventviewf30c.html?idx=513">
									<p><img src="../resources/images/4_20211008pm33238.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
					<div class="page-block">
						<ul>
							<li><a href="eventview297f.html?idx=519">
									<p><img src="../resources/images/6_20210929am84821.jpg" alt=""></p>
								</a></li>
						</ul>
					</div>
				</div>
				<!-- 하단 배송 교환 문의 아이콘 부분  -->
				<div id="mont-bn">
					<div class="bn-div mr" onClick="location.href='list.html'" style="cursor:pointer;">
						<div class="bn-img" style="height:107px;"><img src="../resources/images/main_icon_cs.png" alt=""></div>
						<div class="bn-txt">배송/교환/환불 등<br><span>문의는 여기로!</span></div>
					</div>

					<div class="bn-div" onClick="location.href='members.html'" style="cursor:pointer;">
						<div class="bn-img"><img src="../resources/images/main_icon_member.png" alt=""></div>
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
					navText: ['<img src="../resources/images/btn_prevw.png">', '<img src="../resources/images/btn_next-2.png">'],
					dots: false,
					responsive: {
						360: { items: 1, margin: 0, dotsEach: 1, slideBy: 1 },
						1000: { items: 2, margin: 10, dotsEach: 1, slideBy: 2 }
					}
				});
			</script>
</body>
</html>