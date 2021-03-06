<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<c:if test="${not empty evt}">
				<c:forEach var="evt" items="${evt}">
						<div class="item">
							<div class="image only-pc" onclick="location.href='${evt.evt_move_uri}'"
								style="cursor:pointer; background-image:url('/resources/upload/${evt.evt_main_img}')"></div>
							<!-- { image for pc } -->
	
							<div class="image only-mobile" onclick="location.href='${evt.evt_move_uri}'"
								style="background-image:url('/resources/upload/${evt.evt_main_img}')"></div>
							<!-- { image for mobile } -->
						</div>
				</c:forEach>
				
				<c:if test="${fn:length(evt) == 1}">
					<div class="item">
						<div class="image only-pc" onclick="location.href='${evt.evt_move_uri}'"
							style="cursor:pointer;background-image:url('/resources/upload/${evt.evt_main_img}')"></div>
						<!-- { image for pc } -->

						<div class="image only-mobile" onclick="location.href='${evt.evt_move_uri}'"
							style="background-image:url('/resources/upload/${evt.evt_main_img}')"></div>
						<!-- { image for mobile } -->
					</div>
				</c:if>
			</c:if>
			
			<c:if test="${empty evt}">
				<div class="item">
					<div class="image only-pc" onclick="location.href='/'"
						style="cursor:pointer;background-image:url('/resources/images/event_empty.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='/'"
						style="background-image:url('/resources/images/event_empty.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
				
				<div class="item">
					<div class="image only-pc" onclick="location.href='/'"
						style="cursor:pointer;background-image:url('/resources/images/event_empty.jpg')"></div>
					<!-- { image for pc } -->

					<div class="image only-mobile" onclick="location.href='/'"
						style="background-image:url('/resources/images/event_empty.jpg')"></div>
					<!-- { image for mobile } -->
				</div>
			</c:if>
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