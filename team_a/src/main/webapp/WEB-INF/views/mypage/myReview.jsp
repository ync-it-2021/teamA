<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
				<span class="btn-write btn-up-right"><a href="/mypage/review/write">리뷰작성</a></span>
			</div>
	
	
			<table class="item-table type1">
				<thead>
				<tr>
					<th class="prd_name">상품 이름</th>
					<th class="order_contents">주문내용</th>
					<th class="rate">리뷰 내용</th>
					<th class="regdate">작성일</th>
					<th class="rate">점수</th>
				</tr>
				</thead>
				<tbody class="chat">
				
				</tbody>
				<!-- repeat item -->
				
				
				
	
				<!--  -->
			</table>
	
			<!-- PC 페이지 -->
			<div class="pagination1 only-pc" >
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
	
	<script type="text/javascript">
	// 날짜 포맷 변환
	function displayTime(timeValue) {

		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {

			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');

		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();

			return [ yy, '-', (mm > 9 ? '' : '0') + mm, '-',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}

	//댓글 목록
	function getList() {
		console.log("getList ..............");
		let replyUL = $(".chat");
		let str="";
		
		$.ajax({
			url:'/replies/member/mypage/<sec:authentication property="principal.username"/>',
			dataType:"json",
			success:function(data){
				for (var i = 0, len = data.length || 0; i < len; i++) {
				str +="<tr data-rv='"+data[i].prd_idx+"' style='text-align: center;'><td>"+data[i].prd_name+"</td>";
				str +="<td>"+data[i].od_details+"</td>";
				str +="<td>"+data[i].review_contents+"</td>";
				str +='<td>'+displayTime(data[i].review_date)+'</td>';
				str +="<td>"+data[i].review_point+"</td></tr>";
				}
					replyUL.html(str);
			},
		error:function(request, status, error ){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		}
		
		});
	}
	$(document).ready(function(){
		getList();
		$(".chat").on('click','tr',function(e){
			console.log("상품 상세 페이지로 이동-"+$(this).data("rv"));
		});
	});
	
	
	
	
	
	</script>
