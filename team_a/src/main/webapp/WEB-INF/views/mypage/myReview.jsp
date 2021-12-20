<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>리뷰</title>
	<jsp:include page="../includes/header.jsp"/>
	<meta name="description" content="">
	<meta name="author" content="">

<section class="section_style">
	<div id="page-member-my-review" class="section-member pc-width">
			
		<jsp:include page="myPageNavigation.jsp"/>
	
		
		
		<div class="contents-wrapper">
			<h2 class="page-sub-title kr">나의 후기</h2>
			<div class="page-content-desc">
				<span class="only-pc">회원님께서 등록하신 리뷰기 목록입니다. 작성하신 리뷰를 확인하세요.</span>
				<span class="only-mobile">등록하신 리뷰기 목록입니다.</span>
				<span class="btn-write btn-up-right"><a href="myreview_input.jsp">리뷰작성</a></span>
			</div>
	
	
			<table class="item-table type1">
				<tr>
					<th class="subject">상품정보</th>
					<th class="rate">만족도</th>
					<th class="regdate">작성일</th>
				</tr>
				<!-- repeat item -->
	
				<tr>
					<td colspan="3" class="empty">작성하신 후기가 없습니다.</td>
				</tr>
	
				<!--  -->
			</table>
	
			<!-- PC 페이지 -->
			<div class="pagination1 only-pc">
				<span class='btn-page prev'></span><span class='btn-page next'></span>
			</div>
		</div>
	
	</div>
	<form name="form1" method="post" action="myreview_insert_DB.asp" enctype="multipart/form-data">
	<input type="hidden" name="choice">
	<input type="hidden" name="id">
	<input type="hidden" name="pack_content_id">
	<input type="hidden" name="givepoint">
	</form>
</section>


	<jsp:include page="../includes/footer.jsp"/>
