<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#navigation-bar>a, #navigation-bar{color: gray;};
</style>
<script type="text/javascript">

	
</script>
</head>
<body>
<div id="navigation-bar" >
					<script >	
						let str = "";
						var href_ = window.location.pathname
						href_ = href_.substr(1);
						var href_data = href_.split("/");
						str +="<a href='/'> HOME </a>";
						for(var s of href_data){
							if(s == 'mypage') {
								str +=" > <a href='/mypage/orderlist'>"; 
							}else{
								str +=" > <a href='"+s+"'>"; 
							};
							str += s.toUpperCase() +" </a>";
						}
						if(href_data[href_data.length -1] == 'orderlist'){
							alert();
							$('.member-nav').attr("class","member-nav open-sub-menu");
						}
						
						$("#navigation-bar").html(str);
						
					</script>
				</div>
				<h2 class="page-title"><script>if(href_data[href_data.length-1] == 'orderlist'){
					document.write("MyPage");
				}else{
					document.write(href_data[href_data.length-1]);
				}</script></h2>
<div class="section-member">
<div class="member-nav-wrapper">
	<ul class="member-nav"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li>
			<a href="orderlist">나의 쇼핑현황</a>
			
				<div class="member-sub-nav">
					<a href="orderlist" >주문내역</a>
					<a href="basket">장바구니</a>
					<a href="wish">위시리스트</a>
					<a href="mycoupon">쿠폰</a>
					<a href="mypoint">예치금</a>
				</div>
		</li>
		<li ><a href='modify?mb_id=<sec:authentication property="principal.username"/>'>개인정보수정</a></li>
		<li class="hide-mobile"><a href="/mypage/qna">1:1문의</a></li>
		<li><a href="myreview">나의후기</a></li>
		<li><a href="drawal">회원탈퇴</a></li>
		<!-- class="active" -->
	</ul>
	</div>
	</div>
</body>
</html>