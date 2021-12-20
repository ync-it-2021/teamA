<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
</head>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript" src="/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<jsp:include page="../includes/header.jsp" />
<body>
	<section class="section_style">
	<jsp:include page="myPageNavigation.jsp"/>

			<!-- mypage 상단 끝 -->
			<div class="contents-wrapper">
				<h2 class="page-sub-title kr">나의 후기</h2>
				<div class="page-content-desc">
					<span class="only-pc">회원님께서 등록하신 리뷰 목록입니다. 작성하신 리뷰를 확인하세요.</span> <span
						class="only-mobile">등록하신 리뷰 목록입니다.</span>
				</div>

				<form name="form" method="post" enctype="multipart/form-data">
					<input type="hidden" name="member_id" value='<sec:authentication property="principal.username"/>' />
					<table class="item-table type1 review-write">
						<tr>
							<th>주문 선택</th>
							<td>
								<!-- 상품 조회하여 작성 할 때--> 
								  <input type="number" class="input1 od_idx" name="order_idx" placeholder="주문 번호" readonly="readonly"/> <span class="btn-type1 search-button btn-open-search-item" onclick="search_jumun()">최근 구매상품 조회</span> 
							</td>
						</tr>
						<tr>
							<th>상품</th>
							<td>
								<!-- 상품 조회하여 작성 할 때--> 
								<input type="hidden" class="input1 prd_idx" name="prd_idx" readonly="readonly"/>
								  <input type="text" style="width:30%" class="input1 prd_name" placeholder="상품 이름" readonly="readonly"/>
							</td>
						</tr>
						<tr>
							<th>별점</th>
							<td>
								<input type="hidden" class="point" value="5"/>
								<input type="radio" name="review_point" class="type1 rv_point"  value="5" checked /><span class="rating"><span class="rating-star blt-rating-5">&nbsp;</span></span>
								<input type="radio" name="review_point" class="type1 rv_point"  value="4" /> <span class="rating"><span class="rating-star blt-rating-4">&nbsp;</span></span>
								<input type="radio" name="review_point" class="type1 rv_point"  value="3" /> <span class="rating"><span class="rating-star blt-rating-3">&nbsp;</span></span>
								<input type="radio" name="review_point" class="type1 rv_point"  value="2" /><span class="rating"><span class="rating-star blt-rating-2">&nbsp;</span></span>
								<input type="radio" name="review_point" class="type1 rv_point"  value="1" /><span class="rating"><span class="rating-star blt-rating-1">&nbsp;</span></span>
						</td>
						</tr>
						<tr>
							<th>
								<label>빠른 작성 </label>
							</th>
								<td>
								<select OnChange="ChangeContents()" class="type1 contents-select">
									<option value="">직접입력</option>
									<option value="배송이 빨라요.">배송이 빨라요.</option>
									<option value="품질이 좋아요.">품질이 좋아요.</option>
									<option value="색이 마음에 들어요.">색이 마음에 들어요.</option>
									<option value="아이들이 좋아해요.">아이들이 좋아해요.</option>
									
								</select>
								</td>
							
						</tr>
					</table>
				
					<textarea name="review_contents" class="contents" rows="10" cols="30" style="width:100%;" placeholder="리뷰 내용"></textarea>
					<div id="file_input" style="margin-bottom: 15px;">첨부 파일 : <input type="file" name="uploadFile" /></div>
			</form>
					<script type="text/javascript">
					 function search_jumun(){
						 window.open("/mypage/order/search?type=R","jumunpop","width=600,height=600,scrollbars=yes,resizable");
						}
					 
					 function this_submit() {
						 
							 if ($(".od_idx").val() == "" || $(".prd_name").val() == "") {
								alert ("주문 번호를 찾기를 해주세요.");
								$(".od_idx").focus();
								return false;
							}
							 
							
							if ($(".contents").val()== "") {
								alert ("내용을 작성해 주십시오");
								return false;
							} 
							let header = '${_csrf.headerName}';
							let token = '${_csrf.token}';
							let data=$("form").serialize();
							console.log(JSON.stringify(data));
							$.ajax({
								url:"/replies/new",
								type:"POST",
								data: JSON.stringify({
									member_id:'<sec:authentication property="principal.username"/>',
									order_idx:$(".od_idx").val(),
									prd_idx:$(".prd_idx").val(),
									review_contents:$(".contents").val(),
									review_point:$(".point").val(),
									review_img:$(".review_img").val()
								}
								),
								contentType : "application/json; charset=utf-8",
								beforeSend : function(xhr){
									xhr.setRequestHeader(header, token);
								},
								success:function(data){
										console.log(data);
								},
								error : function(err) {
										console.log(err);
									
								}
							});
								
							
							
							
						}
					 
						function ChangeContents() {
							$(".contents").val($(".contents-select").val());
						}
						
						$(".rv_point").on("click",function(e){
							$(".point").val($(this).val());
						})
					 
					</script>
					
					<div class="review-notice only-pc">
						<p>
							상품문의 및 교환&반품 문의는 1:1 게시판 또는 고객센터 (1644-3955)를 통해 문의주세요.<br />
							게시판 성격과 맞지 않는 글은 게시판 이동 및 쿠폰 환원 될 수 있습니다.
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
							class="submit type2" onclick="javascript:this_submit();">등록</span>
					</div>
				
			</div>
		</div>
	</section>

<jsp:include page="../includes/footer.jsp"/>
	