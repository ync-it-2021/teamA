<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>writer</title>
</head>
<body>
<jsp:include page="../includes/header.jsp"/>

<body>

<script type="text/javascript" src="../resources/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../resources/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="../resources/js/fastclick.js"></script>
<script language="javascript" src="../resources/js/common.js" charset="utf-8"></script>
<script language="javascript" src="../resources/js/commonweb.js" charset="utf-8"></script>
<script language="javascript" src="../resources/js/top.js"></script>
<script language="javascript" src="../resources/js/code.js" charset="utf-8"></script>
<script language="javascript" src="../resources/jscode_member.js" charset="utf-8"></script>
<script language="javascript">
//기념일,아이정보
	function fn_ymd(name) {
		rValue = new Array();

		if (name == "Marry") {
			field_name2 = name +"Month";
			field_name3 = name +"Day";
		}
		else {
			field_name1 = "baby"+ name +"_birth_1";
			field_name2 = "baby"+ name +"_birth_2";
			field_name3 = "baby"+ name +"_birth_3";

			//년도
			rValue.push('<select class="type1" name="'+ field_name1 +'">');
			rValue.push('<option value="">선택</option>');
			d = new Date;
			nowYear = d.getFullYear()+1;

			for (i=1995; i<=nowYear; i++) {
				rValue.push('<option value="'+ i +'">'+ i +'</option>');
			}

			rValue.push('</select> 년 &nbsp; ');
		}

		//월
		rValue.push('<select class="type1" name="'+ field_name2 +'">');
		rValue.push('<option value="">선택</option>');

		for (i=1; i<=12; i++) {
			val_month = select_zero(i,2);
			rValue.push('<option value="'+ val_month +'">'+ val_month +'</option>');
		}

		rValue.push('</select> 월 &nbsp;');

		//일
		rValue.push('<select class="type1" name="'+ field_name3 +'">');
		rValue.push('<option value="">선택</option>');

		for (i=1; i<=31 ; i++) {
			val_day = select_zero(i,2);
			rValue.push('<option value="'+ val_day +'">'+ val_day +'</option>');
		}

		rValue.push('</select> 일');
		document.writeln (rValue.join(""));
	}

	function nextCodeFnc(chk) {
		//체크박스 단일선택
		var obj = document.getElementsByName("exYear");
		for(var i=0; i<obj.length; i++){
			if(obj[i].value != chk){
				obj[i].checked = false;
			}
		}
	}
</script>
<!--Content영역시작-->
<section>
	<div id="page-member-join-step2" class="section-member pc-width">
		<div id="navigation-bar">
			<span>Home</span>
			<span>Member</span>
			<span class="current">Join</span>
		</div>

		<h2 class="page-title">Join</h2>
		<div id="authText" name="authText" style="display:none;margin:5px 0;"></div>
		<form name="frmReg" action="/member/join_write" method="post">
		<input type="hidden" name="coupon" value="">
		<input type="hidden" name="Mobile_Ori" value="">
		<input type="hidden" name="Email_Ori" value="">
		<input type="hidden" name="addr1_Ori" value="">
		<input type="hidden" name="addr2_Ori" value="">
		<input type="hidden" name="idcheck_ok" value="">
		<input type="hidden" name="mobileCert_ok" value="">
		<input type="hidden" name="certNum" value="">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="hidden" class="form-control" name='auth' value = "ROLE_MEMBER">
		<div class="contents-wrapper member-info-form">
			<h2 class="page-sub-title kr">개인정보 입력</h2>
			<div class="page-content-desc">
				몬트라움에 오신것을 환영합니다. 필수입력 사항입니다.
			</div>

			<table class="item-table type1 input-form">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id" class="input2 member-id" onKeypress="if ((event.keyCode > 32 && event.keyCode < 48) || (event.keyCode > 57 && event.keyCode < 65) || (event.keyCode > 90 && event.keyCode < 97)) event.returnValue = false;" maxlength="20" />
						<span class="btn-type1 findid" style="cursor:pointer">중복확인</span>
						<span class="form-comment">※ 6~15자리의 영문 숫자를 조합하여 만들어 주세요.</span>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="pwd1" maxlength="20" class="input1" />
						<span class="password-check">
							비밀번호 확인
							<input type="password" name="pwd2" maxlength="20" class="input1" />
						</span>
					</td>
				</tr>
				<tr class="password-check-mobile">
					<th>비밀번호 확인</th>
					<td>
						<input type="password" name="pwd2_mobile" maxlength="20" class="input1" />
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" class="input1" name="name" value="">
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
					<script language="javascript">
						nowDate = new Date();
						document.write ("<select name='birth1' class='type1'>");
						for (var i=nowDate.getFullYear()-20; i>=1950; i--) document.write ("<option value='"+ i +"'>"+ i +"</option>");
						document.write ("</select>년 &nbsp;");

						document.write ("<select name='birth2' class='type1'>");
						for (var i=1 ; i<=12; i++) document.write ("<option value='"+ select_zero(i,2) +"'>"+ i +"</option>");
						document.write ("</select>월 &nbsp;");

						document.write ("<select name='birth3' class='type1'>");
						for (var i=1 ; i<=31; i++) document.write ("<option value='"+ i +"'>"+ i +"</option>");
						document.write ("</select>일");
					</script>
					</td>
				</tr>
					<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="email" maxlength="45" onkeydown="space_no()" onkeyup="space_no2()" autocomplete="off" class="input1 email1" /> @
						<input type="text" name="email2"  maxlength="30" onkeydown ="space_no()" onkeyup="space_no2()" class="input1 email2" />
						<select name="SelectEmail" OnChange="ChangeEmail()" class="type1 email-select">
							<script> make_select_code("select","email","SelectEmail","","^직접입력","","x")</script>
							<option value="naver.com">naver.com</option><option value="gmail.com">gmail.com</option><option value="hanmail.net">hanmail.net</option><option value="nate.com">nate.com</option><option value="hotmail.com">hotmail.com</option><option value="empal.com">empal.com</option><option value="empas.com">empas.com</option><option value="dreamwiz.com">dreamwiz.com</option><option value="korea.com">korea.com</option><option value="paran.com">paran.com</option><option value="hanafos.com">hanafos.com</option><option value="lycos.co.kr">lycos.co.kr</option><option value="chollian.net">chollian.net</option><option value="orgio.net">orgio.net</option><option value="freechal.com">freechal.com</option><option value="hitel.net">hitel.net</option><option value="hanmir.com">hanmir.com</option><option value="unitel.co.kr">unitel.co.kr</option><option value="nownuri.net">nownuri.net</option><option value="kornet.nm.kr">kornet.nm.kr</option><option value="kebi.com">kebi.com</option><option value="lycos.com">lycos.com</option><option value="lycos.co.kr">lycos.co.kr</option></select>
						</select>
						
						
						
						<div class="next-line">
							<input type="checkbox" name="bMail_rcv" value="1" onclick="$(this).parents('td').find('.alter-notice-wrapper').toggle()" />
							할인쿠폰 및 이벤트 정보 수신 (선택)
							<span class="alter-notice-wrapper">
								<span class="alter-notice pc-text">이메일/SMS 수신허용 고객님께 신규회원 할인쿠폰이 발급됩니다.</span>
								<span class="alter-notice mobile-text">수신허용   고객님께 신규회원 할인쿠폰이 발급</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<th>휴대폰번호</th>
					<td>
							<script language="javascript">make_select_code("select","handphone","mobile1","type1 phone1","^선택","")</script> -
						<input type="text" name="mobile2" maxlength="4" onkeypress="onlyNumber()" class="input1 phone2" /> -
						<input type="text" name="mobile3" maxlength="4" onkeypress="onlyNumber()" class="input1 phone3" /><br class="only-mobile" /><br class="only-mobile" />
						 
						</div>
					</td>
				</tr>
				<tr style="display:none;">
					<th>연락처</th>
					<td>
						<script language="javascript">make_select_code("select","tel","tel1","type1 phone1","^선택")</script> -
						<input type="text" name="tel2" maxlength="4" onkeypress="onlyNumber()" class="input1 phone2" /> -
						<input type="text" name="tel3" maxlength="4" onkeypress="onlyNumber()" class="input1 phone3" />
					</td>
				</tr>
			
		
					<th>도로명 주소</th>
					<td>
					
						<input type="text" name="address1" readOnly maxlength="10" class="input1" id="sample3_postcode" />
						<span class="btn-type1 address"  name="address1" style="cursor:pointer"   onClick="sample3_execDaumPostcode()">우편번호 찾기</span> <br />
						
						<input type="text" name="address2" readOnly  class="input1"id="sample3_address" />
						<input type="text" name="address3" maxlength="60"  class="input1" id="sample3_detailAddress" />
					</td>
				
			</table>
			<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
			<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
			</div>
			
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div class="contents-wrapper member-info-form">
			<h2 class="page-sub-title kr">부가정보 입력</h2>
			<div class="page-content-desc">
				부가정보는 선택입력 사항입니다.
			</div>

			<table class="item-table type1 input-form">
				<!-- 결혼기념일 지금은 사용 안함 -->
                <div style="display:none;"><script language="javascript">fn_ymd("Marry")</script></div>
				<tr>
					<th style="width:77px;">첫째</th>
					<td>
						<div class="field-block">
							반려동물 이름
							<input type="text" name="baby1_name" class="input1" style="ime-mode:active;" />
						</div>
						<div class="field-block margin-right">
							<label><input type="radio" name="baby1_sex" value="1"/> 강아지</label>
							<label><input type="radio" name="baby1_sex" value="2"/> 고양이</label>
							<label><input type="radio" name="baby1_sex" value="0"/> 기타</label>
						</div>
						<div class="field-block">
							<span>기념일</span>
							<script language="javascript">fn_ymd("1")</script>
						</div>
					</td>
				</tr>
				
			</table>
			<p>&nbsp;</p>
		         
			<p>&nbsp;</p>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div class="contents-wrapper member-info-form">
			<h2 class="page-sub-title kr">가입약관 동의</h2>
			<div class="article-wrapper">
				<input type="checkbox" name="useAgree" value="1" /> 회원약관 동의 <span class="btn-type1 useAgree" style="cursor:pointer">내용보기</span>
			</div>
			<div class="article-wrapper">
				<input type="checkbox" name="infoAgree" value="1" /> 개인정보 수집 및 이용 동의 <span class="btn-type1 infoAgree" style="cursor:pointer">내용보기</span>
			</div>
			<div class="action-buttons" name="sub1" id="sub1">
				<span class="ok type2" onClick="WriteCheck2();" style="cursor:pointer">가입</span>
			</div>
			
			
			
			
			
		</div>
		<iframe name="hidden_iframe" style="display:none"></iframe>
		</form>
	</div>
</section>
<script>
function check_Alpha_Num(input) {
		var err_cnt = 0;

		for (var i=0; i<input.length; i++) {
			var val = input.charAt(i);

			if (!((val >= "0" && val <= "9") || (val >= "a" && val <= "z") || (val >= "A" && val <= "Z"))) err_cnt++;
		}

		if (err_cnt == 0) {
			return true;
		}
		else {
			return false;
		}
	}

	//숫자체크(연락처, 휴대폰번호)
	function onlyNumber() {
		if (event.keyCode != 13 && ((event.keyCode < 48) || (event.keyCode > 57))) {
			event.returnValue = false;
			alert('숫자만 입력하세요.');
		}
		return true;
	}

	//아이디 중복확인 popup 호출
	function idchk() {
		var id = document.frmReg.id.value;

		if (id.length < 6 || id.length > 15) {
			alert("아이디를 입력하세요. (6-15자).");
			document.frmReg.id.focus();
			return;
		}

		if (!check_Alpha_Num(id.toUpperCase()))	{
			alert("아이디는 영문/숫자 이외의 문자는 허용되지 않습니다.");
			document.frmReg.id.focus();
			return;
		}

	}

	//Submit
	function WriteCheck2() {
		var Frm = document.frmReg;

		// id check 시작
		if (isEmpty(Frm.id.value)) {
			alert("ID를 입력해 주십시오");
			Frm.id.focus();
			return;
		}

		if (Frm.id.value.length < 6 || Frm.id.value.length > 15) {
			alert("아이디는 6자이상 15이하로 입력하셔야 합니다");
			Frm.id.focus();
			return;
		}

		for (var i=0; i<Frm.id.value.length; i++) {
			var a = Frm.id.value.charCodeAt(i);

			if (a > 128) {
				alert("ID 로 한글은 사용하실수 없습니다.");
				Frm.id.value = "";
				Frm.id.focus();
				return;
			}
		}

		if (!(check_Alpha_Num(Frm.id.value))) {
			alert("ID는 반드시 영문과 숫자 조합으로 등록하셔야 합니다.");
			Frm.id.focus();
			return;
		}

		if (Frm.idcheck_ok.value != "ok") {
			alert("ID 중복확인을 하세요.");
			return;
		}

		// 비밀번호 check
		var cnt = 0;

		if (isEmpty(Frm.pwd1.value)) {
			alert("비밀번호를 입력해 주십시오");
			Frm.pwd1.focus();
			return;
		}

		if (isEmpty(Frm.pwd2.value) && isEmpty(Frm.pwd2_mobile.value)) {
			alert("비밀번호 확인을 입력해 주십시오");
			Frm.pwd2.focus();
			return;
		}

		var str = Frm.pwd1.value;

		for(var i=0; i<str.length; ++i) {
			if (str.charAt(0) == str.substring(i, i+1)) ++cnt;
		}

		if (Frm.pwd1.value != "") {
			if (cnt == str.length) {
				alert("보안상의 이유로 한 문자로 연속된 비밀번호는 허용하지 않습니다.");
				Frm.pwd1.value = "";
				Frm.pwd2.value = "";
				Frm.pwd2_mobile.value = "";
				Frm.pwd1.focus();
				return;
			}
		}

		if (Frm.pwd2.value != "" && Frm.pwd1.value != Frm.pwd2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			Frm.pwd1.value = "";
			Frm.pwd2.value = "";
			Frm.pwd1.focus();
			return;
		}

		if (Frm.pwd2_mobile.value != "" && Frm.pwd1.value != Frm.pwd2_mobile.value) {
			alert("비밀번호가 일치하지 않습니다.");
			Frm.pwd1.value = "";
			Frm.pwd2_mobile.value = "";
			Frm.pwd1.focus();
			return;
		}

		if (Frm.pwd1.value.length < 6 || Frm.pwd1.value.length > 15) {
			alert("비밀번호는 6자이상 15이하로 입력하셔야 합니다");
			Frm.pwd1.focus();
			return;
		}

		if (!(check_Alpha_Num(Frm.pwd1.value) == true)) {
			alert("비밀번호는 반드시 영문과 숫자 조합으로 등록하셔야 합니다.");
			Frm.pwd1.focus();
			return;
		}

		if (isEmpty(Frm.name.value)) {
			alert("이름을 입력해 주십시오");
			Frm.name.focus();
			return;
		}
		
		//email 새로들어가는 부분 시작
		if (isEmpty(Frm.email.value)) {
			alert("이메일 주소 앞자리를 입력해 주십시오");
			Frm.email.focus();
			return;
		}

		if (isEmpty(Frm.email2.value)) {
			alert("이메일 주소 뒷부분을 입력 또는 선택해 주십시오");
			Frm.SelectEmail.focus();
			return;
		}

		//핸드폰번호
		if (isEmpty(Frm.mobile1.value)) {
			alert("핸드폰 번호 앞자리를 선택해 주십시오");
			Frm.mobile1.focus();
			return;
		}

		if (isEmpty(Frm.mobile2.value)) {
			alert("핸드폰 번호 가운데자리를 입력해 주십시오");
			Frm.mobile2.focus();
			return;
		}

		if (isEmpty(Frm.mobile3.value)) {
			alert("핸드폰 번호 뒷자리를 입력해 주십시오");
			Frm.mobile3.focus();
			return;
		}

		if (Frm.useAgree.checked != true) {
			alert("회원 약관에 동의해 주십시오");
			Frm.useAgree.focus();
			return;
		}

		if (Frm.infoAgree.checked != true) {
			alert("개인정보 수집 및 이용에 동의해 주십시오");
			Frm.infoAgree.focus();
			return;
		}

		Frm.action = "join_write";
		Frm.target = "_self";
		Frm.submit();
	}

	//메일주소 선택
	function ChangeEmail() {
		if (document.getElementsByName("SelectEmail")[0].value == "") {
			document.getElementsByName("email2")[0].readOnly = false;
			document.getElementsByName("email2")[0].value = "";
			document.getElementsByName("email2")[0].style.backgroundColor = "#ffffff";
    	    document.getElementsByName("email2")[0].style.color = "#000000";
		}
		else {
			document.getElementsByName("email2")[0].readOnly = true;
			document.getElementsByName("email2")[0].value = document.getElementsByName("SelectEmail")[0].value ;
			document.getElementsByName("email2")[0].style.backgroundColor = "#EEEEEE";
    	    document.getElementsByName("email2")[0].style.color = "#555555";
		}
	}

	//이메일 주소 체크 정규식 - 20130409
	function EmailCheck(mail) {
		var sMail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		if (sMail.test(mail) == false) {
			return false;
		}
		else {
			return true;
		}
	}

	function space_no() {
		if(event.keyCode == 64) {
			alert("@는 입력 하실 수 없습니다.\n이메일 형식대로 입력하시기 바랍니다.");
			event.returnValue = false;
		}
	}

	function space_no2() {
		if(document.getElementsByName("email")[0].value.indexOf("@") != -1) {
			alert("@는 입력 하실 수 없습니다.\n이메일 형식대로 입력하시기 바랍니다.");
			document.getElementsByName("email")[0].value = "";
		}

		if(document.getElementsByName("email2")[0].value.indexOf("@")!= -1) {
			alert("@는 입력 하실 수 없습니다.\n이메일 형식대로 입력하시기 바랍니다.");
			document.getElementsByName("email2")[0].value = "";
		}
	}

	function certSendSms() {
		var certNum = "";
		var chars = "0123456789";
		var frm = document.frmReg;

		if (isEmpty(frm.mobile1.value)) {
			alert("핸드폰 번호 앞자리를 선택해 주십시오");
			frm.mobile1.focus();
			return;
		}

		if (isEmpty(frm.mobile2.value)) {
			alert("핸드폰 번호 가운데자리를 입력해 주십시오");
			frm.mobile2.focus();
			return;
		}

		if (isEmpty(frm.mobile3.value)) {
			alert("핸드폰 번호 뒷자리를 입력해 주십시오");
			frm.mobile3.focus();
			return;
		}

		for (var i=0; i<6; i++) {
			var rnum = Math.floor(Math.random() * chars.length);
			certNum += chars.substring(rnum, rnum + 1);
		}

		frm.certNum.value = certNum;

		frm.action = "certsendsms.html";
		frm.target = "hidden_iframe";
		frm.submit();
	}

	function certNumCheck() {
		var frm = document.frmReg;

		if (frm.certNum.value == frm.mobileCertNum.value) {
			frm.mobileCert_ok.value = 1;
			alert("인증 되었습니다.");
		}
		else {
			frm.mobileCert_ok.value = "";
			alert("인증번호가 틀립니다. 다시 확인해주세요.");
		}
	}

	$(".item-table.type1.input-form .btn-type1.findid").click(function() {
		var id = document.frmReg.id.value;

		if(id.length < 6 || id.length > 15) {
			alert("아이디를 입력하세요. (6-15자).");
			document.frmReg.id.focus();
			return;
		}

		if (!check_Alpha_Num(id.toUpperCase()))	{
			alert("아이디는 영문/숫자 이외의 문자는 허용되지 않습니다. ");
			document.frmReg.id.focus();
			return;
		}

		openPopup(this, "findid4541.html?UserId="+ id, 550, 400);
	});




	</script>
	<script>
	function fn_ymd(name) {
		rValue = new Array();

		if (name == "Marry") {
			field_name2 = name +"Month";
			field_name3 = name +"Day";
		}
		else {
			field_name1 = "baby"+ name +"_birth_1";
			field_name2 = "baby"+ name +"_birth_2";
			field_name3 = "baby"+ name +"_birth_3";

			//년도
			rValue.push('<select class="type1" name="'+ field_name1 +'">');
			rValue.push('<option value="">선택</option>');
			d = new Date;
			nowYear = d.getFullYear()+1;

			for (i=1995; i<=nowYear; i++) {
				rValue.push('<option value="'+ i +'">'+ i +'</option>');
			}

			rValue.push('</select> 년 &nbsp; ');
		}

		//월
		rValue.push('<select class="type1" name="'+ field_name2 +'">');
		rValue.push('<option value="">선택</option>');

		for (i=1; i<=12; i++) {
			val_month = select_zero(i,2);
			rValue.push('<option value="'+ val_month +'">'+ val_month +'</option>');
		}

		rValue.push('</select> 월 &nbsp;');

		//일
		rValue.push('<select class="type1" name="'+ field_name3 +'">');
		rValue.push('<option value="">선택</option>');

		for (i=1; i<=31 ; i++) {
			val_day = select_zero(i,2);
			rValue.push('<option value="'+ val_day +'">'+ val_day +'</option>');
		}

		rValue.push('</select> 일');
		document.writeln (rValue.join(""));
	}

	function nextCodeFnc(chk) {
		//체크박스 단일선택
		var obj = document.getElementsByName("exYear");
		for(var i=0; i<obj.length; i++){
			if(obj[i].value != chk){
				obj[i].checked = false;
			}
		}
	}
	</script>
	<!-- 
	<!--  우편스  -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                
                    // 조합된 참고항목을 해당 필드에 넣는다.
                   
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script> 
	
	
	
	
	
	
	

<!--Content영역종료-->
<div style="display:none;">
	<!--풋터영역시작-->
</div>
<jsp:include page="../includes/footer.jsp"/>


</body>
</html>