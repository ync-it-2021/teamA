<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>login</title>
</head>
<jsp:include page="/include/header.jsp"/>
<body>

<script language="javascript">
	httpUrl = "login.html"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="login6d1f.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Flogin%2Easp"
	}
</script>
<!-- 페이지 로그인 부분 관리  -->
<script type="text/javascript" src="../resources/js/top.js"></script>
<style>

#page-member-login form{margin-left:0px;}
</style>
<!-- 페이지 로그인 부분 관리  end -->
		


<section>
<div id="page-member-login" class="section-member pc-width">
	<div id="navigation-bar"><script>document.write(navistr)</script></div>
	<h2 class="page-title"><script>document.write(siteTitle)</script></h2>


	<div class="contents-wrapper login-line">
		<div class="tab-contents">
			<div class="tab-header">
				</ul>
			</div>
			<div class="tab-content">
				<!-- 회원 로그인 -->
				<div class="content1 active">
					<form name="mainFrm" method="post" action="https://www.montraum.com/common/all_site/member/login_process.asp">
					<input type="hidden" name="refer_page" value="">					
					<div class="clearfix">
						<ul class="input-items">
							<li>
								<span class="input-name">아이디</span>
								<input type="text" class="input1" name="LoginId" onKeyDown="javascript:acceptEnter12();" />
							</li>
							<li>
								<span class="input-name">비밀번호</span>
								<input type="password" class="input1" name="LoginPwd" onKeyDown="javascript:acceptEnter22()" />
							</li>
						</ul>
						<div class="btn-wrapper">
							<input type="button" class="btn-login" value="LOGIN" onclick="javascript:SendLoginMain();" style="cursor:pointer;" />
						</div>
					</div>
					</form>						
					<div class="page-link">
						<ul>
							<li><a href="searchidinfo2ce3.html?ProcessGubun=A">아이디 찾기</a></li>
							<li><a href="searchidinfo0a92.html?ProcessGubun=B">비밀번호 찾기</a></li>
							<li><a href="join_write.jsp">회원가입</a></li>
						</ul>
					</div>
				</div>
</div>

<div class="contents-wrapper member-ship-guide clearfix">
	<div class="intro">
		<p class="txt-membership">MEMBERSHIP</p>
		<p class="txt-program">PROGRAM</p>
		<p class="txt-desc">몬트라움 회원만을 위한 차별화된 혜택을 경험하세요.</p>
	</div>

	<ul class="benefits">
		<li class="b-coupon">
			<p class="text1">신규회원</p>
			<p class="text2">할인쿠폰 지급</p>
		</li>
		<li class="b-level">
			<p class="text1">1회 구매 후</p>
			<p class="text2">바로 등급 UP</p>
		</li>
		<li class="b-event">
			<p class="text1">다양한</p>
			<p class="text2">이벤트 참여</p>
		</li>
	</ul>
</div>
</div>

</div>
</div>
		</section>
		



	<!--풋터영역시작 footer 건들지 않는다 -->





<script type="text/javascript">
	function acceptEnter12() {
		if (event.keyCode == 13) {
			document.mainFrm.LoginPwd.focus();
		}
	}

	function acceptEnter22() {
		if (event.keyCode == 13) {
			SendLoginMain();
		}
	}

	//메인 로그인 하는 부분
	function SendLoginMain() {
		var frm = document.mainFrm;

		if (isEmpty(frm.LoginId.value)) {
			alert("ID를 입력해 주십시오.");
			frm.LoginId.focus();
			return;
		}

		if (isEmpty(frm.LoginPwd.value)) {
			alert("비밀번호를 입력해 주십시오.");
			frm.LoginPwd.focus();
			return;
		}
		frm.submit();
	}

</script>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>