<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title></title>
	<jsp:include page="/include/header.jsp"/>


<script language="javascript">
	httpUrl = "/common/all_site/member/member_out.asp"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Fmember%5Fout%2Easp"
	}
</script>
<script language="javascript" src="../resources/js/top.js"></script>
<!--Content영역시작-->

<section>
	<div id="page-member-withdraw" class="section-member pc-width">
					<div id="navigation-bar"><script>document.write(navistr)</script></div>
					<h2 class="page-title"><script>document.write(siteTitle)</script></h2>
		<!-- mypage 상단 시작 -->
		
	<div class="member-nav-wrapper">
	<ul class="member-nav"> <!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
		<li>
			<a href="buy_list.jsp">나의 쇼핑현황</a>
			<div class="member-sub-nav">
				<a href="orderlist.jsp">주문내역</a>
				<a href="shoppingbasket.jsp">장바구니</a>
				<a href="wish.jsp">위시리스트</a>
				<a href="mycoupon.jsp">쿠폰</a>
			
			</div>
		</li>
		<li><a href="member_Modify.jsp">개인정보수정</a></li>

		<li class="hide-mobile"><a href="qna.jsp">1:1문의</a></li>
		<li><a href="myreview_view.jsp">나의후기</a></li>
		<li class="active"><a href="member_Withdrawal.jsp" class="active">회원탈퇴</a></li>
	</ul>
	</div>

	
		<!-- mypage 상단 끝 -->
		<div class="contents-wrapper">
			<h2 class="page-sub-title kr">회원탈퇴</h2>
			<div class="page-content-desc">
				불편하셨던 점이나 불만사항을 남겨주시면 적극 반영하여 고객님의 불편함을 해결하도록 노력하겠습니다.
			</div>

			<form name="frmReg" action="/common/all_site/member/member_out_DB.asp" method="post">
				<table class="item-table type1 review-write">
					<tr style="display:none;">
						<th>비밀번호</th>
						<td>
							<input type="password" name="pwd1" class="input1" />
						</td>
					</tr>
					<tr>
						<th>탈퇴사유</th>
						<td class="td-reasons">
							<label><input type="radio" name="OutReason" value="배송서비스 불만" /> 배송서비스 불만</label>
							<label><input type="radio" name="OutReason" value="제품가격/품질 불만" /> 제품가격/품질 불만</label>
							<label><input type="radio" name="OutReason" value="고객응대 불친절 및 지연" /> 고객응대 불친절 및 지연</label>
							<label><input type="radio" name="OutReason" value="제품 주문 과정의 어려움" /> 제품 주문 과정의 어려움</label>
							<label><input type="radio" name="OutReason" value="개인정보유출 우려" /> 개인정보유출 우려</label>
							<label><input type="radio" name="OutReason" value="시스템 에러" /> 시스템 에러</label>
							<label><input type="radio" name="OutReason" value="" /> 기타 (상세한 사유를 입력해주세요)
								<input name="OutReason_text" type="text" class="input1 reason" />
							</label>
							
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="block-row">
								<div class="block-cell title">남기는 말</div>
								<div class="block-cell textarea-wrapper">
									<textarea name="OutReason_etc" class="input1 body"></textarea>
								</div>
							</div>
						</td>
					</tr>
				</table>
				<div>
					<label class="agree-withdraw">
						<input type="checkbox" name="agree" class="type1" />
						회원탈퇴 안내를 모두 확인하였으며 탈퇴에 동의합니다.
					</label>
				</div>
				
				<div class="action-buttons">
					<span class="cancel type1" onClick="history.go(-1);" style="cursor:pointer;">취소</span>
					<span class="ok type2" onClick="WriteCheck2();" style="cursor:pointer;">탈퇴</span>
				</div>
				
			</form>

			<div class="notice-wrapper clearfix">
				<h3>확인해주세요</h3>
				<ul class="notice-list">
					<li>회원탈퇴시 고객님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 본 사이트 고객정보 보호 정책에 따라 관리됩니다.</li>
					<li>탈퇴시 고객님께서 보유하셨던 예치금은 모두 소진되며, 한번 탈퇴한 아이디는 다시 사용 불가합니다.</li>	
				</ul>
			</div>

		</div>
	</div>
</section>
<!--Content영역종료-->
<jsp:include page="/include/footer.jsp"/>