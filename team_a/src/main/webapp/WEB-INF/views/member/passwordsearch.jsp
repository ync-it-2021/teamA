<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>



	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>::몬트라움:: 프리미엄 펫용품 전문쇼핑몰</title>


	<jsp:include page="../includes/header.jsp" />
<body>


	<script language="javascript">
	httpUrl = "searchidinfo0a92.html?ProcessGubun=B"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="loginefb7.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Fsearchidinfo%2Easp%3FProcessGubun%3DB"
	}
</script>
	<script language="javascript" src="../resources/images/top.js"></script>
	<script language="javascript" src="../resources/images/code.js" charset="euc-kr"></script>
	<!--Content영역시작-->
	<section>
		<div id="page-member-find-id" class="section-member pc-width">
			<div id="navigation-bar">
				<span>Home</span> <span>Member</span> <span class="current">아이디/비밀번호 찾기</span>
			</div>

			<h2 class="page-title kr">아이디/비밀번호 찾기</h2>
			<form method="post" name="FindId" id="FindId" action="/member/pwsearch">
				<input type="hidden" name="ProcessGubun" value="A">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" class="form-control" name='auth' value = "ROLE_MEMBER">
				<div class="contents-wrapper">
					<div class="tab-contents">
						<div class="tab-header">
							<ul class="clearfix">
								<li class="tab1" data-target="content1">아이디 찾기</li>
								<li class="tab2 active" data-target="content2">비밀번호 찾기</li>
							</ul>
						</div>
						<div class="tab-content">

							<!-- 아이디 찾기 -->
							<div class="content1">

								<p class="top-comment only-pc">※ 회원정보에 등록된 성명, 휴대폰 또는 성명, 이메일을 통해 ID를 확인할 수 있습니다.</p>
								<p class="top-comment only-mobile">※ 회원정보에 등록된 이메일, 휴대폰을 통해 ID를 확인</p>
								<!-- TAB 동작은 member-find-id.js 에서 참고할 수 있습니다. -->
								<ul class="find-method-select">
									<li><label><input name="search_gu" id="search_gu" value="1" type="radio" checked="checked" /> 이메일</label></li>
									<li><label><input name="search_gu" id="search_gu" value="2" type="radio" /> 휴대폰</label></li>
								</ul>

								<!-- 이메일 찾기 -->
								<div class="clearfix find-method method-email current">
									<ul class="input-items">
										<li><span class="input-name">이름</span> <input name="txUsername1_txt" id="txUsername1_txt" type="text" class="input1 w-width" /> <input name="txUsername1" id="txUsername1" type="hidden" /></li>
										<li><span class="input-name">이메일</span> <input name="txEmail1" id="txEmail1" type="text" class="input1 w-width" /></li>
									</ul>
								</div>

								<!-- 휴대폰 찾기 -->
								<div class="clearfix find-method method-phone">
									<ul class="input-items">
										<li><span class="input-name">이름</span> <input name="txUsername2_txt" id="txUsername2_txt" type="text" class="input1 w-width" /> <input name="txUsername2" id="txUsername2" type="hidden" /></li>
										<li><span class="input-name">휴대폰</span> <script language="javascript">make_select_code("select","handphone","mobile1","type1 phone-select","")</script> - <input name="mobile2" type="text" onkeydown="return onlyNumber(event)" maxlength="2" class="input1 phone1" /> - <input name="mobile3" type="text" onkeydown="return onlyNumber(event)" maxlength="2" class="input1 phone2" /></li>
									</ul>
								</div>
							</div>



							<!-- 비밀번호 찾기 -->
							<div class="content2 active">

								<p class="top-comment only-pc">
									※ 회원정보에 등록된 성명, 휴대폰 또는 성명, 이메일을 통해 임시비밀번호를 발급해드립니다. <br /> ※ 임시비밀번호 로그인 이후 마이페이지&gt;개인정보수정에서 비밀번호를 변경해주세요.
								</p>

								<p class="top-comment only-mobile">
									※ 회원정보에 등록된 휴대폰,이메일을 통해 임시비밀번호를 발급<br /> ※ 로그인 이후 마이페이지&gt;개인정보수정에서 비밀번호를 변경해주세요.
								</p>

								<!-- TAB 동작은 member-find-id.js 에서 참고할 수 있습니다. -->
								<ul class="find-method-select">
									<li><label><input name="search_gu_pass" id="search_gu_pass" value="1" type="radio" checked="checked" /> 이메일</label></li>
									<li><label><input name="search_gu_pass" id="search_gu_pass" value="2" type="radio" /> 휴대폰</label></li>
								</ul>

								<div class="clearfix find-method method-email current">
									<ul class="input-items">
										<li><span class="input-name">아이디</span> <input name="id" id="txUserID1_pass" type="text" class="input1 w-width" /></li>
										<li><span class="input-name">이름</span> <input name="txUsername1_pass_txt" id="txUsername1_pass_txt" type="text" class="input1 w-width" /> <input name="txUsername1_pass" id="txUsername1_pass" type="hidden" /></li>
										<li><span class="input-name">이메일</span> <input name="txEmail1_pass" id="txEmail1_pass" type="text" class="input1 w-width" /></li>
									</ul>
								</div>

								<div class="clearfix find-method method-phone">
									<ul class="input-items">
										<li><span class="input-name">아이디</span> <input name="txUserID2_pass" id="txUserID2_pass" type="text" class="input1 w-width" /></li>
										<li><span class="input-name">이름</span> <input name="txUsername2_pass_txt" id="txUsername2_pass_txt" type="text" class="input1 w-width" /> <input name="txUsername2_pass" id="txUsername2_pass" type="hidden" /></li>
										<li><span class="input-name">휴대폰</span> <script language="javascript">make_select_code("select","handphone","mobile1_pass","type1 phone-select","")</script> - <input name="mobile2_pass" type="text" onkeydown="return onlyNumber(event)" maxlength="4" class="input1 phone1" /> - <input name="mobile3_pass" type="text" onkeydown="return onlyNumber(event)" maxlength="4" class="input1 phone2" /></li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="action-buttons" id="find" style="display:">
					<span class="type1">회원가입</span> <span id="send_content1" class="ok type2" onClick="SendFindId();">찾기</span> <span id="send_content2" class="ok type2" onClick="SendFindPw();" style="display: none">찾기</span>
				</div>

			</form>
		</div>
	</section>
</html>
<SCRIPT language=JavaScript>

function SendFindId(){
	
	console.log("SendFindId()");
	

	if (document.getElementsByName("search_gu")[0].checked == true)
	{
		if (isEmpty(document.FindId.txUsername1_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername1_txt.focus(); return}
		if (isEmpty(document.FindId.txEmail1.value)){ alert("이메일을 입력해 주세요");  document.FindId.txEmail1.focus(); return}
		document.FindId.txUsername1.value = escape(document.FindId.txUsername1_txt.value)
	}else if (document.getElementsByName("search_gu")[1].checked == true)
	{
		if (isEmpty(document.FindId.txUsername2_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername2_txt.focus(); return}
		if (isEmpty(document.FindId.mobile1.value)||isEmpty(document.FindId.mobile2.value)||isEmpty(document.FindId.mobile3.value)){ alert("휴대폰 번호를 입력해 주세요"); return}
		document.FindId.txUsername2.value = escape(document.FindId.txUsername2_txt.value)
	}

	
	document.FindId.ProcessGubun.value = "A";
	document.FindId.submit();
	return
}

function SendFindPw(){

	console.log("SendFindPW()");
	if (document.getElementsByName("search_gu_pass")[0].checked == true)
	{
		if (isEmpty(document.FindId.txUserID1_pass.value)){ alert("아이디를 입력하세요");  document.FindId.txUserID1_pass.focus(); return}
		if (isEmpty(document.FindId.txUsername1_pass_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername1_pass_txt.focus(); return}
		if (isEmpty(document.FindId.txEmail1_pass.value)){ alert("이메일을 입력해 주세요");  document.FindId.txEmail1_pass.focus(); return}
		document.FindId.txUsername1_pass.value = escape(document.FindId.txUsername1_pass_txt.value)
	}else if (document.getElementsByName("search_gu_pass")[1].checked == true)
	{
		if (isEmpty(document.FindId.txUserID2_pass.value)){ alert("아이디를 입력하세요");  document.FindId.txUserID2_pass.focus(); return}
		if (isEmpty(document.FindId.txUsername2_pass_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername2_pass_txt.focus(); return}
		if (isEmpty(document.FindId.mobile1_pass.value)||isEmpty(document.FindId.mobile2_pass.value)||isEmpty(document.FindId.mobile3_pass.value)){ alert("휴대전화를 입력해 주세요"); return}
		document.FindId.txUsername2_pass.value = escape(document.FindId.txUsername2_pass_txt.value)
	}

	
	document.FindId.ProcessGubun.value = "B";
	document.FindId.submit();
	return
}

<!--
if("B" == "B" ){
		$("#send_content1").hide();
		$("#send_content2").show();
	if("" == "N" ){
		//search_chg("2");
	}
}


function SendFindId(){
	

	if (document.getElementsByName("search_gu")[0].checked == true)
	{
		if (isEmpty(document.FindId.txUsername1_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername1_txt.focus(); return}
		if (isEmpty(document.FindId.txEmail1.value)){ alert("이메일을 입력해 주세요");  document.FindId.txEmail1.focus(); return}
		document.FindId.txUsername1.value = escape(document.FindId.txUsername1_txt.value)
	}else if (document.getElementsByName("search_gu")[1].checked == true)
	{
		if (isEmpty(document.FindId.txUsername2_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername2_txt.focus(); return}
		if (isEmpty(document.FindId.mobile1.value)||isEmpty(document.FindId.mobile2.value)||isEmpty(document.FindId.mobile3.value)){ alert("휴대폰 번호를 입력해 주세요"); return}
		document.FindId.txUsername2.value = escape(document.FindId.txUsername2_txt.value)
	}

	
	document.FindId.ProcessGubun.value = "A";
	document.FindId.submit();
	return
}

function SendFindPw(){

	if (document.getElementsByName("search_gu_pass")[0].checked == true)
	{
		if (isEmpty(document.FindId.txUserID1_pass.value)){ alert("아이디를 입력하세요");  document.FindId.txUserID1_pass.focus(); return}
		if (isEmpty(document.FindId.txUsername1_pass_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername1_pass_txt.focus(); return}
		if (isEmpty(document.FindId.txEmail1_pass.value)){ alert("이메일을 입력해 주세요");  document.FindId.txEmail1_pass.focus(); return}
		document.FindId.txUsername1_pass.value = escape(document.FindId.txUsername1_pass_txt.value)
	}else if (document.getElementsByName("search_gu_pass")[1].checked == true)
	{
		if (isEmpty(document.FindId.txUserID2_pass.value)){ alert("아이디를 입력하세요");  document.FindId.txUserID2_pass.focus(); return}
		if (isEmpty(document.FindId.txUsername2_pass_txt.value)){ alert("이름을 입력하세요");  document.FindId.txUsername2_pass_txt.focus(); return}
		if (isEmpty(document.FindId.mobile1_pass.value)||isEmpty(document.FindId.mobile2_pass.value)||isEmpty(document.FindId.mobile3_pass.value)){ alert("휴대전화를 입력해 주세요"); return}
		document.FindId.txUsername2_pass.value = escape(document.FindId.txUsername2_pass_txt.value)
	}

	
	document.FindId.ProcessGubun.value = "B";
	document.FindId.submit();
	return
}


function SendFindPass(gu){
		
	window.open("searchidinfo_mail2630.html?UserID=&amp;Pass_gu="+gu,"PassWord","width=450 ,height=220,top=400,left=700 , scrollbars=no");

}

function onlyNumber(event) {

	var key = window.event ? event.keyCode : event.which;    

    if ((event.shiftKey == false) && ((key  > 47 && key  < 58) || (key  > 95 && key  < 106)

    || key  == 35 || key  == 36 || key  == 37 || key  == 39  // 방향키 좌우,home,end  

    || key  == 8  || key  == 46|| key  == 9 ) // del, back space

    ) {

        return true;

    }else {

        return false;

    }    

}

$(function(){
	//탭동작 스크립트
	$(".tab-contents .tab-header li").click(function(){
		var target = $(this).attr('data-target');
		$(this).parent().find("li.active").removeClass('active');
		$(this).addClass('active');
		$(this).closest('.tab-contents').find('.tab-content div.active').removeClass('active');
		$(this).closest('.tab-contents').find("."+target).addClass('active');
		$("#search_gu")[0].checked = true;
		$("#search_gu_pass")[0].checked = true;
		$(".tab-content").find(".find-method").removeClass('current');
		$(".tab-content").find(".method-email").addClass('current');
		$(".tab-content").find(".top-comment.result").hide();
		$(".tab-content").find(".find-method-select").show();
		$(".ok").hide();
		$("#send_"+target).show();
		$("#find").show();
		$("#re_find").hide();
	});
	
	//이메일/휴대폰 전환 스크립트
	$(".find-method-select input").change(function(){
		var method = $(this).val();
		if (method == '1') {
			method = "method-email";
		} else {
			method = "method-phone";
		}
		$(this).closest('.tab-content').find('.find-method').removeClass('current');
		$(this).closest('.tab-content').find('.'+method).addClass('current');
	})
});

//-->
</SCRIPT>
<jsp:include page="../includes/footer.jsp" />
</body>
</html>