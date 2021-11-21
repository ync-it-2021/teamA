<!-- form 액션 controller  /write 받을수 있습니다   action 작동안할시 하단 javascript 로컬 방향 액션으로 수정하시면됩니다 qnawrite.jsp 참고-->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/header.jsp" flush="true" />
<meta charset="utf-8">
<title>상품후기</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css"
	rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<body>
	<section>

		<div id="page-member-wish" class="section-member pc-width">
			<div id="navigation-bar">
				<script>document.write(navistr)</script>
				<span onclick="location.href=&#39;/&#39;" style="cursor: pointer">Home</span><span
					onclick="location.href=&#39;/common/process/buy_list.asp&#39;"
					style="cursor: pointer">Mypage </span><span
					onclick="location.href=&#39;/common/process/wish_list.asp&#39;"
					style="cursor: pointer" class="current">Wish List </span>
			</div>
			<h2 class="page-title">
				<script>document.write(siteTitle)</script>
				Mypage
			</h2>


			<div class="member-nav-wrapper">
				<ul class="member-nav open-sub-menu">
					<!-- 나의 쇼핑현황일 때 open-sub-menu class를 추가 -->
					<li class="active">
						<div class="member-sub-nav">
							<a href="orderlist.jsp">주문내역</a> <a href="shoppingbasket.jsp">장바구니</a>
							<a href="wish.jsp">위시리스트</a> <a href="mycoupon.jsp">쿠폰</a>
						</div>
					</li>
					<li><a href="member_Modify.jsp">개인정보수정</a></li>

					<li class="hide-mobile"><a href="qua.jsp">1:1문의</a></li>
					<li class="hide-mobile active"><a href="myreview_view.jsp">나의후기</a></li>
					<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
				</ul>
			</div>


			<!-- mypage 상단 끝 -->
			<div class="contents-wrapper">
				<h2 class="page-sub-title kr">나의 후기</h2>
				<div class="page-content-desc">
					<span class="only-pc">회원님께서 등록하신 리뷰 목록입니다. 작성하신 리뷰를 확인하세요.</span> <span
						class="only-mobile">등록하신 리뷰 목록입니다.</span>
				</div>

				<form action="" name=wtf method="post" enctype="multipart/form-data" onSubmit="return writer();">
					<input type="hidden" name="order_buy_ini_id" /> <input
						type="hidden" name="id" /> <input type="hidden"
						name="pack_content_id" /> <input type="hidden"
						name="category_site_id" /> <input type="hidden"
						name="category_name_id" /> <input type="hidden" name="choice"
						value="insert"> <input type="hidden" name="inputReView"
						value="review">
					<table class="item-table type1 review-write">
						<tr>
							<th>제목</th>
							<td><input
								style="width: 760px; height: 20px; font-size: 30px;" type="text"
								class="input1 subject" name="SUBS" /></td>
						</tr>
						<tr>
							<th>상품 선택</th>
							<td>
								<!-- 상품 조회하여 작성 할 때--> <span
								class="btn-type1 search-button btn-open-search-item"><span>최근
										구매상품 조회</span></span>

							</td>
						</tr>
						</tr>
						<tr>
							<!-- 별위치 세로 수정   2021/11/20 -->
							<style>
.rating-star {
	float: left;
}
</style>



							<th>추천의사</th>
							<td>
								<div class="rating">
									<span class="rating-star blt-rating-5">&nbsp;</span>
								</div> <input type="radio" class="type1" name="jumsu" value="5"
								checked />
								<div class="rating">
									<span class="rating-star blt-rating-4">&nbsp;</span>
								</div> <input type="radio" class="type1" name="jumsu" value="4" />
								<div class="rating">
									<span class="rating-star blt-rating-3">&nbsp;</span>
								</div> <input type="radio" class="type1" name="jumsu" value="3" />
								<div class="rating">
									<span class="rating-star blt-rating-2">&nbsp;</span>
								</div> <input type="radio" class="type1" name="jumsu" value="2" />
								<div class="rating">
									<span class="rating-star blt-rating-1">&nbsp;</span> <input
										type="radio" class="type1" name="jumsu" value="1" />
								</div>
							</td>
						</tr>
					</table>
					<!-- 썸머노트 에디터 사용  부습 충돌 일어남 수정.  -->
					<textarea class="summernote" name="editordata"></textarea>
			</div>

			<div class="review-notice only-pc">
				<p>
					상품문의 및 교환&반품 문의는 1:1 게시판 또는 고객센터 (1644-3955)를 통해 문의주세요.<br /> 게시판
					성격과 맞지 않는 글은 게시판 이동 및 쿠폰 환원 될 수 있습니다.
				</p>
			</div>

			<div class="review-notice only-mobile">
				<p>
					상품문의 및 교환&반품 문의는 1:1 게시판 또는 고객센터<br /> (1644-3955)를 통해 문의주세요.<br />
					게시판 성격과 맞지 않는 글은<br /> 게시판 이동 및 쿠폰 환원 될 수 있습니다.
				</p>
			</div>

			<div class="action-buttons">
				<span class="cancel type1"
					onclick="history.back()">취소</span> <span
					class="submit type2" onclick="writer();">등록</span>
		
			</div>
			</form>
		</div>
		</div>
	</section>
	
</body>
<script>
$('.summernote').summernote({
	 

	height: 440,
	  lang: "ko-KR"
	});
</script>
<script>
	function writer(){
		var f = document.wtf;
		if(f.SUBS.value == ""){
			alert("제목작성부탁드립니다");
			f.SUBS.focus();
			return false;
		}
		
		if(f.editordata.value == ""){
			alert("본문작성 부탁드립니다");
			f.editordata.focus();
			return false;
		}
		else{
			alert("등록완료");
			location.href="myreview_view.jsp";

	
		}
		return true;
	}
	</script>
<jsp:include page="/include/footer.jsp"></jsp:include>