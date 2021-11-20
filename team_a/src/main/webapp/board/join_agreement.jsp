<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>GITF TO PET </title>
<jsp:include page="/include/header.jsp"/>
</head>
<body>
<!DOCTYPE html>
</head>
<body>
<script type="text/javascript" src="../resources/images/top.js"></script>
<style>
#popup-member-join-check { max-width: 540px; padding-top:50px;padding-bottom:30px;}
#popup-member-join-check .ws-join {text-align:center;border-bottom:1px solid #000;padding-bottom: 34px;margin-bottom: 26px; margin-top: 26px;}
#popup-member-join-check .ws-join .title {font-size:26px;}
#popup-member-join-check .ws-join .desc {font-size:13px; color:#555;}
#popup-member-join-check .ws-join .btn-ws-join {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #000;color: #fff;padding: 16px 0px;width: 289px;}

#popup-member-join-check .naver-join {text-align:center; margin-bottom: 26px;}
#popup-member-join-check .naver-join .title {font-size:26px;}
#popup-member-join-check .naver-join .desc {font-size:13px; color:#555;}
#popup-member-join-check .naver-join .btn-login-naver {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #1EC800;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_naver.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}
#popup-member-join-check .naver-join .btn-login-facebook {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #385898;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_facebook.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}
#popup-member-join-check .naver-join .btn-login-kakao {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #F9DF33;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_kakao.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}


</style>
<section>

<div id="popup-member-join-check"  class="section-member pc-width">

	<div class="ws-join">

		<h3 class="title" style="padding-top:60px;">Gift to Pet</h3>
		<p class="desc">GIFT  TO PET  쇼핑몰에 오신걸 환영합니다 <p>
		<div class="article-wrapper">
			<input type="button" class="btn-ws-join" value="회원가입" onclick="location.href='join_write.jsp'" style="cursor:pointer;" />
		</div>
</div>
<div style="height:175px;">
</section>

	<jsp:include page="/include/footer.jsp"/>


</html>