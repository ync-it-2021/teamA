<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<section>
		<div id="page-main">
			<!-- 메인롤링배너 XML -->
			<div id="main-banner">
				<div class="item">
					<div class="image only-pc" onclick="location.href='index.jsp'"
						style="cursor:pointer;background-image:url('../resources/images/1_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview3d62.html?idx=521'"
						style="background-image:url('../resources/images/2_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview1798.html?idx=522'"
						style="cursor:pointer;background-image:url('../resources/images/3_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview1798.html?idx=522'"
						style="background-image:url('../resources/images/4_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventviewbca9.html?idx=523'"
						style="cursor:pointer;background-image:url('../resources/images/5_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventviewbca9.html?idx=523'"
						style="background-image:url('../resources/images/6_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview297f.html?idx=519'"
						style="cursor:pointer;background-image:url('../resources/images/7_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview297f.html?idx=519'"
						style="background-image:url('../resources/images/8_20211025am83150.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				<div class="item">
					<div class="image only-pc" onclick="location.href='eventview695e.html?idx=517'"
						style="cursor:pointer;background-image:url('../resources/images/9_20211025am83150.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='eventview695e.html?idx=517'"
						style="background-image:url('../resources/images/10_20211025am83150.jpg')"></div>
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
			
				<div class="contents-wrapper recom-wrapper pc-width">
				<div style="text-align:center; width:100%" id="recom_tit"><img src="../resources/images/main_title_01.png"></div>
				<br>
				<div style="float:left;" id="recom_bn"><img src="../resources/images/finder_bn.jpg"></div>
				<div id="recom_gubun">
					<a href="recommend0bce.html?gubun=1" onmouseout="MM_swapImgRestore()"
						onmouseover="MM_swapImage('image1','','../resources/images/dog_on.png',1)" style="padding-right:30px;">
						<img src="../resources/images/dog_off.png" id="image1" border="0" />
					</a>
					<span style="padding-right:30px;font-size:20px;font-weight:bold">OR</span>
					<a href="recommend7f02.html?gubun=2" onmouseout="MM_swapImgRestore()"
						onmouseover="MM_swapImage('image2','','../resources/images/cat_on.png',1)">
						<img src="../resources/images/cat_off.png" id="image2" border="0" />
					</a>
				</div>
			</div>		
			
			
			
</body>
</html>