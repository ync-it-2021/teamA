<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>1:1문의 작성</title>
	<jsp:include page="../includes/header.jsp"/>
	<meta name="description" content="">
	<meta name="author" content="">
	

	<!--link rel="stylesheet" type="text/css" href="//cloud.typography.com/7688574/788488/css/fonts.css" /-->



<script language="javascript">
	httpUrl = "/common/process/qanda/write.asp"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="/common/all_site/member/login.asp?refer_page=%2Fcommon%2Fprocess%2Fqanda%2Fwrite%2Easp"
	}
</script>
<script language="javascript" src="../resources/images/top.js"></script>
<!--Content영역시작-->
<section class="section_style">
	<div id="page-member-ask" class="section-member pc-width">
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
				<a href="mypoint.jsp">예치금</a>
			</div>
		</li>
		<li><a href="member_Modify.jsp">개인정보수정</a></li>
		<li><a href="baesong_addr.jsp">주소록관리</a></li>
		<li class="hide-mobile active"><a href="qna.jsp">1:1문의</a></li>
		<li><a href="myreview_view.jsp">나의후기</a></li>
		<li><a href="member_Withdrawal.jsp">회원탈퇴</a></li>
	</ul>
	</div>

	
		<!-- mypage 상단 끝 -->
		<div class="contents-wrapper">
			<h2 class="page-sub-title kr">1:1 문의</h2>
			<div class="page-content-desc">
				<span class="only-pc">제품, 주문, 배송 등에 관한 문의사항을 남겨주세요. 빠르고 친절하게 안내해 드립니다.</span>
				<span class="only-mobile">제품, 주문, 배송 등에 관한 문의사항을 남겨주세요.</span>
			</div>

			<form name="form1" method="post" action="/mypage/qna/write" enctype="multipart/form-data">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" name="member_id" value='<sec:authentication property="principal.username"/>'>
				<table class="item-table type1 ask-write">
					<tr>
						<th>질문유형</th>
						<td>
							<select name="oi_kind" class="type2 kind" onChange="view_jumun(this.value);">
								<option value="N">일반문의</option>
								<option value="O">주문관련 문의</option>
							</select>
							<span id="jumun" name="jumun" style="display:none;">
								<input type="number" name ="od_idx" class="input1 od_idx" readOnly>
								<span class="ok type2 btn-type1" onClick="search_jumun();" style="cursor:pointer;">주문번호 찾기</span>
							</span>
						</td>
					</tr>
					<tr>
					</tr>
					<tr>
						<th>제목</th>
						<td>
							<input type="text"  name="oi_title" class="input2 title" style="width:90%"/>
						</td>
					</tr>
				</table>
				<div id="qna-body-pc" class="input-wrapper">
					<script type="text/javascript" src="/_vir0001/easyEditor/easyEditor_euckrCustomer.js" charset="euc-kr"></script>
<script type="text/javascript" >
var ed = new easyEditor("content");
ed.cfg.Btn = ["font","size","bar",
				"left","center","right","bar",
				"color","hilite","bar",
				"bold","italic","underline","strike","bar",
				"hr","link","bar",
				"image","bar","source"];
ed.cfg.height='450px'
ed.init();
</script>

				</div>
				<div id="qna-body-mobile" class="input-wrapper">
					<textarea class="input1 contents" name="oi_contents" rows="10" placeholder="내용 입력"></textarea>
				</div>
				<div>첨부 파일 : <input type="file" name="uploadFile"/></div>
				
				<div class="action-buttons">
					<span class="cancel type1" onclick="history.back();" style="cursor:pointer;">취소</span>
					<span class="ok type2" onclick="this_submit();" style="cursor:pointer;">등록</span>
				</div>
			</form>

		</div>
	</div>
</section>



<jsp:include page="../includes/footer.jsp"/>

	

<script type="text/javascript" async src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
<!-- WIDERPLANET  SCRIPT START 2018.5.21 (공통)-->


<!-- Enliple Common Tracker v3.6 [공용] start -->
<script type="text/javascript">
<!--
function mobRf() {
    var rf = new EN();
    rf.setData("userid", "montraum");
    rf.setSSL(true);
    rf.sendRf();
}
//-->
</script>






<script type="text/javascript">

	form = document.form1;

	function this_submit() {
		if ($(".kind").val() == "O" && $(".od_idx").val() == "" ) {
			alert("문의형태가 [주문관련 문의]인 경우 주문번호찾기를 통하여 주문번호를 입력하여 주십시오.");
			$(".od_idx").focus();
			return false;
		}

		if ($(".title").val() == "") {
			alert ("제목을 작성해 주십시오");
			form.subject.focus();
			return false;
		}

		if ($(".contents").val()== "") {
			alert ("내용을 작성해 주십시오");
			return false;
		} 
		
		form.submit();
	}


	function view_jumun(val){
		if (val == "O") {
			document.getElementsByName("jumun")[0].style.display = "";
		} else {
			document.getElementsByName("jumun")[0].style.display = "none";
			form.jumuncode.value = "";
			form.id.value = "";
		}
	}


	function search_jumun(){
	 window.open("/mypage/order/search","jumunpop","width=600,height=600,scrollbars=yes,resizable");
	}



	$(function() {
		if (!isMobile) {
			 document.getElementById("qna-body-pc").style.display = "block";
			 document.getElementById("qna-body-mobile").style.display = "none";
			 document.getElementById("qna-file-mobile").innerHTML = "";
		}
		else {
			document.getElementById("qna-body-pc").style.display = "none";
			document.getElementById("qna-body-mobile").style.display = "block";
			document.getElementById("qna-file-mobile").innerHTML = "<th>파일첨부</th><td><input type=\"file\" name=\"file\" /></td>";
		}
	});
//-->
</SCRIPT>