<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>정보수정</title>
	<jsp:include page="../includes/header.jsp"/>

	<!-- 네비영역종료-->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script  src="/resources/js/top.js"></script>
	<script  src="/resources/js/code.js" charset="utf-8"></script>
	<script>
	
	/*	<==== 저장된 정보 기입====>  */
	let email = '<c:out value="${member.member_email}"/>';
	let	email_data = email.split("@");
	let phone = '<c:out value="${member.member_phone}"/>';
	let	phone_data = phone.split("-");
	let address = '<c:out value="${member.member_address}"/>';
	let	address_data = address.split(",");
	$(document).ready(function(){
		$(".email1").val(email_data[0]);
		$(".email2").val(email_data[1]);
		$(".email2").css({"backgroundColor" :"#EEEEEE"});
		$(".email2").css({"color" : "#555555"});
		let email_list = $('.email-select').find('option').map(function() {return $(this).val();}).get();
		var ck = 0;
		for(var e of email_list){
			if(email_data[1] == e){
				console.log("ok");
				$('.email-select').find("option[value='"+e+"']").attr('selected','selected');
				ck++;
				break;
			}
		}
		if(ck == 0){
			console.log("no");
			$('.email-select').find("option").last().attr('selected','selected');
		}
		$(".phone1").val(phone_data[0]);
		$(".phone2").val(phone_data[1]);
		$(".phone3").val(phone_data[2]);
		$("#sample3_postcode").val(address_data[0]);
		$("#sample3_address").val(address_data[1]);
		$("#sample3_detailAddress").val(address_data[2]);
	});
	
		//영문/숫자 체크
		function check_Alpha_Num(input){
			var err_cnt=0
			for (var i = 0; i < input.length; i++) {
				var val = input.charAt(i);
				if (!((val >= "0" && val <= "9") || (val >= "a" && val <= "z") || (val >= "A" && val <= "Z")))
				err_cnt ++
			}
			if (err_cnt == 0 ) return true;
			else return false;
		}
		
		//숫자체크(연락처, 휴대폰번호)
		function onlyNumber() {
			if (event.keyCode!=13 && ((event.keyCode < 48) || (event.keyCode > 57))){
				event.returnValue = false;
				alert('숫자만 입력하세요.');
			}
			return true;
		}
	
	/*	<==== 잘못된 부분 체크하는 부분====>  */
	//	1.password
		 function passwordCheck(){
				let	pass = $(".password").val();
				let	pass_check = $(".pass_check").val();
				
				//공백 확인
				if(isEmpty(pass) || isEmpty(pass_check)){
					alert("비밀번호를 입력해주세요!");
					if(isEmpty(pass)){
						$(".password").focus();
					}else{
						$(".pass_check").focus();
					}
					return false;
				}
				
				//일치 확인
				if(pass != pass_check){
					alert("입력하신 비밀번호가 틀립니다. 다시 확인해주세요.");
					$(".password").focus();
					return false;
				}
				
				$.ajax({
					url:"/mypage/passwordCheck",
					type:"get",
					data:{member_id:"${member.member_id}",member_pass:pass},
					success:function(data){
						if(data == "Y"){
							console.log("password ok!");
							return true;
						}else{
							console.log("password error!");
							return false;
						}
					},
					error:function(err){
						return false;
						console.log("error");
					}
				});
			}
	
		//2.E-mail
		function emailCheck(){
			if(isEmpty($(".email1").val()) || isEmpty($(".email2").val())){
				$(".email1").focus();
				alert("E-mail을 정확하게 입력하세요!");
				return false;
			}
			console.log("E-mail ok");
			return true;
		}
	
		//E-mail정규식 체크
		function EmailWriteCheck(email){
		    var emailReg = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
		    return emailReg.test(email);
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
		
		//3.phone number check
		function phoneCheck(){
			if(isEmpty($(".phone1").val()) || isEmpty($(".phone2").val()) || isEmpty($(".phone3").val())){
				$(".phone2").focus();
				alert("전화번호를 정확하게 입력하세요!");
				return false;
			}
			return true;
		}
		
		//4.address
		function addressCheck(){
			if(isEmpty($("#sample3_postcode").val()) || isEmpty($("#sample3_address").val()) || isEmpty($("#sample3_detailAddress").val())){
				$("#sample3_postcode").focus();
				alert("주소를 정확하게 입력하세요!");
				return false;
			}
			
			let address = $("#sample3_postcode").val() +","+ $("#sample3_address").val() +","+ $("#sample3_detailAddress").val();
			console.log(address);
			return true;
		}
		
		function writeAllCheck(){
			console.log("password check");
			if(passwordCheck()){ console.log("check false"); return ;}
			console.log("E-mail check ");
			if(!emailCheck()){ console.log("check false"); return ;}
			console.log("phone check ");
			if(!phoneCheck()) { console.log("check false"); return ;}
			console.log(" address check ");
			if(!addressCheck()){ console.log("check false"); return ;}
			let header = '${_csrf.headerName}';
			let token = '${_csrf.token}';
			let birthday = '<fmt:formatDate pattern="yyyy-MM-dd" value="${member.member_birthday}" />';
			$.ajax({
				url:"/mypage/modify",
				type:"post",
				beforeSend : function(xhr){
					xhr.setRequestHeader(header, token);
				},
				data:{member_id:'${member.member_id}',
					member_pass:'${member.member_pass}',
					member_name:'${member.member_name}',
					member_email:$(".email1").val()+"@"+$(".email2").val(),
					member_phone:$(".phone1").val()+"-"+$(".phone2").val()+"-"+$(".phone3").val(),
					member_mileage:${member.member_mileage},
					member_grade:${member.member_grade},
					member_address:$("#sample3_postcode").val() +","+ $("#sample3_address").val() +","+ $("#sample3_detailAddress").val(),
					member_birthday:birthday},
				success:function(data){
					location.reload();
				},
				error:function(err){
					alert("수정 중 오류가 발생했습니다.!");
					location.reload();
				}
			});
		}

		//이메일 select option선택시 값 바뀜 함수 
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
		
	</script>
</head>
<!--Content영역시작-->
<section class="section_style" >
		
	<jsp:include page="myPageNavigation.jsp"/>

	
		<!-- mypage 상단 끝 -->
		<form  name="frmReg" action="/mypage/modify" method="post">
		<input type="hidden" name="member_id" value='<sec:authentication property="principal.username"/>'>
		<input type="hidden" name="EditGubun" value="M">
		<input type="hidden" name ="Mobile_Ori" value="">
		<input type="hidden" name ="Email_Ori" value="">
		<input type="hidden" name="certNum" value="">
		<input type="hidden" name="mobileCert_ok" value="">
		
		<div class="contents-wrapper member-info-form">
			<h2 class="page-sub-title kr">개인정보 수정</h2>
			<div class="page-content-desc">
				고객님의 소중한 정보를 관리하세요.
			</div>
			
			<h3 class="block-title">필수정보</h3>
			
			<table class="item-table type1 input-form">
				<tr>
					<th>아이디</th>
					<td>
						<div id="user_id"><sec:authentication property="principal.username"/></div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td> 
						<input type="password" name="member_pass" maxlength="20" class="input1 password" autocomplete="new-password" />
						<span class="password-check">
							비밀번호 확인 
							<input type="password" name="pwd2" maxlength="20" class="input1 pass_check" autocomplete="new-password"/>
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
					<td><div id="user_name"><c:out value="${member.member_name}"/></div>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="email" maxlength="45"  autocomplete="off" class="input1 email1" /> 
						@<input type="text" name="email2"  maxlength="30" class="input1 email2" />
						<select name="SelectEmail" OnChange="ChangeEmail()" class="type1 email-select">
							<!-- <script> make_select_code("select","email","SelectEmail","","^직접입력","")</script>  -->
									<option value="naver.com" >naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="empal.com">empal.com</option>
									<option value="empas.com">empas.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="korea.com">korea.com</option>
									<option value="paran.com">paran.com</option>
									<option value="hanafos.com">hanafos.com</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="chollian.net">chollian.net</option>
									<option value="orgio.net">orgio.net</option>
									<option value="freechal.com">freechal.com</option>
									<option value="hitel.net">hitel.net</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="unitel.co.kr">unitel.co.kr</option>
									<option value="nownuri.net">nownuri.net</option>
									<option value="kornet.nm.kr">kornet.nm.kr</option>
									<option value="kebi.com">kebi.com</option>
									<option value="lycos.com">lycos.com</option>
									<option value="ync.ac.kr">ync.ac.kr</option>
									<option class="notEmptyEmail"value="">직접입력</option>
						</select>
						<div class="next-line">
							<input type="checkbox" name="bMail_rcv" value="1"/>
							할인쿠폰 및 이벤트 정보 수신 (선택)
							<span class="alter-notice-wrapper">
								<span class="alter-notice pc-text">이메일/SMS 수신허용 고객님께 신규회원 할인쿠폰이 발급됩니다.</span>
								<span class="alter-notice mobile-text">수신허용 고객님께 신규회원 할인쿠폰이 발급</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<th>휴대폰번호</th>
					<td>
						<script>make_select_code("select","handphone","mobile1","type1 phone1","^선택","")</script> - 
						<input type="tel" name="mobile2" maxlength="4" onkeypress="onlyNumber()" class="input1 phone2" /> - 
						<input type="tel" name="mobile3" maxlength="4" onkeypress="onlyNumber()" class="input1 phone3" />
						<br />
					</td>
				</tr>
				<tr>
						<th>도로명 주소</th>
					<td>
					
						<input type="text" name="" readOnly maxlength="10" class="input1" id="sample3_postcode" />
						<span class="btn-type1 address" name="address1" style="cursor:pointer"   onClick="sample3_execDaumPostcode()">우편번호 찾기</span> <br/>
						
						<input type="text" name="address2" readOnly  class="input1"id="sample3_address" />
						<input type="text" name="address3" maxlength="60"  class="input1" id="sample3_detailAddress" />
					</td>
				
				</tr>
			</table>
			<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
			<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
			</div>
		</div>
		
		
		<div class="contents-wrapper member-info-form">
			<h3 class="block-title">부가정보</h3>
			<table class="item-table type1 input-form">
				<!-- 결혼기념일 지금은 사용 안함 -->
                <div style="display:none;"> <script>fn_ymd("Marry")</script ></div>
			
				<tr>
					<th style="width:77px;">첫째</th>
					<td>
						<div class="field-block">
							반려동물 이름
							<input type="text" name="baby1_name" class="input1" style="ime-mode:active; "/>
						</div>
						<div class="field-block margin-right">
							<label><input type="radio" name="baby1_sex" value="1"/> 강아지</label>
							<label><input type="radio" name="baby1_sex" value="2"/> 고양이</label>
							<label><input type="radio" name="baby1_sex" value="0"/> 기타</label>
						</div>
						<div class="field-block">
							<span>기념일</span>
							<script>fn_ymd("1")</script>
						</div>
					</td>
				</tr>
				
			</table>		
			<p>&nbsp;</p>
			<table class="item-table type1 input-form">
				<tr>
					<th>개인정보 유효기간</th>
					<td>
						<!-- <script>make_select_code("checkbox","expireYear","exYear","null","","","nextCodeFnc(this)","chk","")</script> -->
						<span class="alter-notice-wrapper">
							<span class="alter-notice pc-text">선택하지 않을 경우 관련 법령에 의해 1년 자동 지정</span>
							<span class="alter-notice mobile-text">선택하지 않을 경우 1년 자동 지정</span>
						</span>
					</td>
				</tr>
			</table>
			
			<div class="action-buttons">
				<span class="cancel type1" onClick="location.href='/'" style="cursor:pointer;">취소</span>
				<span class="ok type2" onClick="writeAllCheck();" style="cursor:pointer;">수정</span>
			</div>
		</div>
		</form>
</section>

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
                    document.getElementById("sample3_extraAddress").value ='';
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


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtc14.acecounter.com','8080','AS4A42151972793','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript> <img src='http://gtc14.acecounter.com:8080/?uid=AS4A42151972793&je=n&' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->


<!-- WIDERPLANET  SCRIPT START 2018.5.21 (공통) (* 공통 태그는 타 태그(아이템, 장바구니, 구매완료, 전환 완료)보다 하단에 위치하여야 합니다. ) -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
		ti:"41190",	/*광고주 코드 */
		ty:"Home",	/*트래킹태그 타입 */
		device:"web"	/*디바이스 종류  (web 또는  mobile)*/

	};
}));
</script>
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
<!-- Enliple Common Tracker v3.6 [공용] end -->

<script src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js" defer="defer" onload="mobRf();"></script>



<!-- ADN Tracker[공통] start -->
<script type="text/javascript">
var adn_param = adn_param || [];
adn_param.push([{ 	
 ui:'101877',
 ut:'Home'
}]);
</script>
<script type="text/javascript" async src="//fin.rainbownine.net/js/adn_tags_1.0.0.js"></script>
<!-- ADN Tracker[공통] end -->

<!-- ADN 크로징 설치  start -->
<script type="text/javascript">
var adn_panel_param = adn_panel_param || [];
adn_panel_param.push([{
 ui:'101877',	
 ci:'1018770001',
 gi:'21528'
}]);
</script>
<script type="text/javascript" async src="//fin.rainbownine.net/js/adn_closingad_1.1.1.js"></script>
<!-- ADN 크로징 설치 end -->

<!-- ADN 크로징 설치 반응형 start -->
<script type="text/javascript">
var adn_mobile_panel_param = adn_mobile_panel_param || [];
adn_mobile_panel_param.push([{
 ui:'101877',  
 ci:'1018770002',
 gi:'21530'
}]);
</script>
<script type="text/javascript" async src="//fin.rainbownine.net/js/adn_mobile_closingad_1.1.2.js"></script>
<!-- ADN 크로징 설치 end -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WDLJW3X"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
<script>

//우편번호 검색 - 도로명주소 적용
	function ZipSearch(val) {
		formname = val;
		window.open("/common/all_site/zipcode/zipcode_2019.asp","zipsearch","width=610,height=660,top=0,left=0, scrollbars=no,resizable");
	}

	function mobileChk(){
		if(form.mobile1.value == "010" && form.mobile2.value == "1111" && form.mobile3.value == "1111") {
			return true;
		}else{
			if(form.mobileCert_ok.value == 1){
				return true;
			}else{
				alert("휴대폰 인증을 진행해 주십시오");
				return false;
			}
		}
	}
</script>
	<jsp:include page="../includes/footer.jsp"/>