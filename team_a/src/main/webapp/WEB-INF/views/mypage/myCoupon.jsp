<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일  ");
%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>::몬트라움:: 프리미엄 펫용품 전문쇼핑몰</title>
	<jsp:include page="../includes/header.jsp"/>
	<body>
	
	

	<script language="javascript">
		httpUrl = "/common/process/mycoupon.asp"
		httpUrl2 = "www.montraum.com"
		function loginCheck() {
			location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fmycoupon%2Easp"
		}
	</script>

	<script>
		$(document).ready(function(){
			$(".member-nav").addClass("open-sub-menu");					
		});
	</script>
			
	
<script language="javascript" src="/resources/js/top.js"></script>


<!-- <script language="javascript" src="/resources/js/_vir0001/code.js" charset="utf-8"></script> -->
<script language="javascript" src="/resources/js/code.js" charset="utf-8"></script>



<!--Content영역시작-->
		<section class="section_style">
							
	<jsp:include page="myPageNavigation.jsp"/>

				<div class="contents-wrapper coupontop">
				<h2 class="page-sub-title kr">쿠폰</h2>
				<div class="page-content-desc">
					<span class="only-pc">각 쿠폰은 유효기간과 혜택금액이 상이 할 수 있으므로 사용 전 반드시 확인해주세요.</span>
					<span class="only-mobile">유효기간과 혜택금액이 상이할 수 있습니다.</span>
					<span class="btn-write btn-up-right" onclick="$('.coupon-summary').slideToggle();$('.coupon-add').slideToggle();">쿠폰등록</span>
				</div>

					<div class="coupon-summary">
						<span class="coupon-text"><span>회원님의 할인쿠폰은</span></span> 
						<span class="num">0장</span> 
						<span class="hide-mobile">입니다.</span> 
						<span class="date"> 현재 기준 <%= sf.format(nowTime) %>

						</span>
					</div>
					<div class="coupon-add">
						<form name="form1" method="post" action="mycoupon_register.asp">
							<span class="coupon-text"><span>쿠폰번호</span></span>
							<input type="text" class="input1 input3" name="couponRegister" style="ime-mode:disabled" onkeypress="return event.keyCode!=13"/>
							<input type="submit" class="submit2" value="등록" onclick="this_submit()"/>
						</form>
					</div>
					<iframe name="hidden_iframe" style="display:none;width:400px;height:100px"></iframe>
					<div class="coupon-list">
						<div class="block-row block-title">
							<div class="block-cell title">쿠폰명</div>
							<div class="block-cell date">발행일</div>
							<div class="block-cell expire">유효기간</div>
						</div>



						
						<div>
							<div class="block-cell empty">보유하신 쿠폰이 없습니다.</div>
						</div>
						
					</div>
					
					<!-- PC 페이지 -->
					<div class="pagination1 only-pc">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>
			
					<!-- 모바일 페이지 -->		
					<div class="pagination2 only-mobile">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>
				</div>
			</div>
	
		</section>
<!--Content영역종료-->
	<jsp:include page="../includes/footer.jsp"/>
