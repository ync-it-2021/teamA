<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="includes/header.jsp"/>

<body>

<div id="brand-list">
			<div class="pc-width">
				<ul class="clearfix2">
					<li onclick="location.href='shopmain8356.html?iniCategory=2&amp;thisCategory=54'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_54.png" alt="베스트브리드" /></li>
					<li onclick="location.href='shopmainc90f.html?iniCategory=2&amp;thisCategory=20'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_20.png" alt="프로도기" /></li>
					<li onclick="location.href='shopmain68fb.html?iniCategory=2&amp;thisCategory=82'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_82.png" alt="아이슬란드펫" /></li>
					<li onclick="location.href='shopmaind59e.html?iniCategory=2&amp;thisCategory=74'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_74.png" alt="위고노" /></li>
					<li onclick="location.href='shopmain176d.html?iniCategory=2&amp;thisCategory=22'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_22.png" alt="마스알코소" /></li>
				</ul>
				<ul class="clearfix2">
					<li onclick="location.href='shopmain8261.html?iniCategory=2&amp;thisCategory=73'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_73.png" alt="디그앤롤" /></li>
					<li onclick="location.href='shopmain04d6.html?iniCategory=2&amp;thisCategory=21'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_21.png" alt="컴플렛" /></li>
					<li onclick="location.href='shopmain64ed.html?iniCategory=2&amp;thisCategory=100'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_100.png" alt="에그풀" /></li>
					<li onclick="location.href='shopmain8ecb.html?iniCategory=2&amp;thisCategory=101'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_101.png" alt="카르나4"/></li>
					<li class="mnb-event-banner" style="cursor:pointer; width: 20%;">
						<span onclick="location.href='members.html'" style="cursor:pointer;"><img src="../images/mnb_icon_1.png" alt="멤버십" /></span>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--네비영역종료-->

<script language="javascript">
	httpUrl = "join_write.html"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="logincbe8.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Fjoin%5Fwrite%2Easp"
	}
</script>
<script language="javascript" src="../images/top.js"></script>
<script language="javascript" src="../images/code.js" charset="euc-kr"></script>
<script language="javascript" src="../images/code_member.js" charset="euc-kr"></script>
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
		<form name="frmReg" action="#" method="post">
		<input type="hidden" name="coupon" value="">
		<input type="hidden" name="Mobile_Ori" value="">
		<input type="hidden" name="Email_Ori" value="">
		<input type="hidden" name="addr1_Ori" value="">
		<input type="hidden" name="addr2_Ori" value="">
		<input type="hidden" name="idcheck_ok" value="">
		<input type="hidden" name="mobileCert_ok" value="">
		<input type="hidden" name="certNum" value="">
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
						for (var i=nowDate.getFullYear()-14; i>=1900; i--) document.write ("<option value='"+ i +"'>"+ i +"</option>");
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
							<script language="javascript">make_select_code("select","email","SelectEmail","","^직접입력","","x")</script>
							<option value="naver.com">naver.com</option><option value="gmail.com">gmail.com</option><option value="hanmail.net">hanmail.net</option><option value="nate.com">nate.com</option><option value="hotmail.com">hotmail.com</option><option value="empal.com">empal.com</option><option value="empas.com">empas.com</option><option value="dreamwiz.com">dreamwiz.com</option><option value="korea.com">korea.com</option><option value="paran.com">paran.com</option><option value="hanafos.com">hanafos.com</option><option value="lycos.co.kr">lycos.co.kr</option><option value="chollian.net">chollian.net</option><option value="orgio.net">orgio.net</option><option value="freechal.com">freechal.com</option><option value="hitel.net">hitel.net</option><option value="hanmir.com">hanmir.com</option><option value="unitel.co.kr">unitel.co.kr</option><option value="nownuri.net">nownuri.net</option><option value="kornet.nm.kr">kornet.nm.kr</option><option value="kebi.com">kebi.com</option><option value="lycos.com">lycos.com</option><option value="lycos.co.kr">lycos.co.kr</option></select>
						</select>
						<div class="next-line">
							<input type="checkbox" name="bMail_rcv" value="1" onclick="$(this).parents('td').find('.alter-notice-wrapper').toggle()" />
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
				<tr style="display:none;">
					<th>지번주소</th>
					<td>
						<input type="text" name="zip" readOnly maxlength="7" class="input1 zipcode" />
						<span class="btn-type1 address" style="cursor:pointer" onClick="ZipSearch('frmReg');">우편번호 찾기</span> <br />
						<input type="text" name="addr1" readOnly class="input1 address1" />
						<input type="text" name="addr2" maxlength="60" class="input1 address2" />
					</td>
				</tr>
			
					<th>도로명 주소</th>
					<td>
						<input type="text" name="road_zip" readOnly maxlength="7" class="input1 zipcode" />
						<span class="btn-type1 address" style="cursor:pointer" onClick="ZipSearch('frmReg');">우편번호 찾기</span> <br />
						<input type="text" name="road_addr1" readOnly class="input1 address1" />
						<input type="text" name="road_addr2" maxlength="60" class="input1 address2" />
					</td>
				</tr>
			</table>
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
<!--Content영역종료-->
<div style="display:none;">
	<!--풋터영역시작-->
</div>
<footer>
	<div id="sitemap" class="only-pc">
		<div class="pc-width">
			<div class="inner-div clearfix">
				<div class="section">
					<h3>BRAND</h3>
					<ul>
						<li onclick="location.href='shopmain8356.html?iniCategory=2&amp;thisCategory=54'" style="cursor:pointer;">BEST BREED</li>
						<li onclick="location.href='shopmainc90f.html?iniCategory=2&amp;thisCategory=20'" style="cursor:pointer;">PRODOGGIE</li>
						<li onclick="location.href='shopmaind59e.html?iniCategory=2&amp;thisCategory=74'" style="cursor:pointer;">WEGONO</li>
						<li onclick="location.href='shopmain176d.html?iniCategory=2&amp;thisCategory=22'" style="cursor:pointer;">MARS ALCOSO</li>
						<li onclick="location.href='shopmain8261.html?iniCategory=2&amp;thisCategory=73'" style="cursor:pointer;">DIG & ROLL</li>
						<li onclick="location.href='shopmain04d6.html?iniCategory=2&amp;thisCategory=21'" style="cursor:pointer;">KOMPLETT</li>
						<li onclick="location.href='shopmain68fb.html?iniCategory=2&amp;thisCategory=82'" style="cursor:pointer;">ICELAND PET</li>
						<li onclick="location.href='shopmain8ecb.html?iniCategory=2&amp;thisCategory=101'" style="cursor:pointer;">CARNA4</li>
					</ul>
				</div>
				<div class="section">
					<h3>SHOP</h3>
					<ul>
						<li onclick="location.href='shopmain95da.html?iniCategory=24&amp;thisCategory='" style="cursor:pointer;">사료</li>
						<li onclick="location.href='shopmaind449.html?iniCategory=87&amp;thisCategory='" style="cursor:pointer;">간식</li>
						<li onclick="location.href='shopmainacb9.html?iniCategory=25&amp;thisCategory='" style="cursor:pointer;">배변용품</li>
						<li onclick="location.href='shopmain84ed.html?iniCategory=27&amp;thisCategory='" style="cursor:pointer;">미용</li>
						<li onclick="location.href='shopmaine79f.html?iniCategory=28&amp;thisCategory='" style="cursor:pointer;">리빙/외출</li>
						<li onclick="location.href='shopmain31f3.html?iniCategory=76&amp;thisCategory='" style="cursor:pointer;">고양이</li>
					</ul>
				</div>
				<div class="section">
					<h3>EVENT</h3>
					<ul>
						<!-- li onclick="location.href='/common/all_site/Notice/event.asp'" style="cursor:pointer;">샘플신청</li -->
						<li onclick="location.href='event.html'" style="cursor:pointer;">진행중 EVENT</li>
						<li onclick="location.href='notice-2.html'" style="cursor:pointer;">당첨자 발표</li>
						<li onclick="location.href='review.html'" style="cursor:pointer;">BEST REVIEW</li>
					</ul>
				</div>
				<div class="section">
					<h3>MEMBER</h3>
					<ul>
						<li onclick="location.href='join_agreement.html'" style="cursor:pointer;">회원가입</li>
						<li onclick="location.href='login.html'" style="cursor:pointer;">로그인</li>
						<li onclick="location.href='searchidinfo2ce3.html?ProcessGubun=A'" style="cursor:pointer;">아이디 찾기</li>
						<li onclick="location.href='searchidinfo0a92.html?ProcessGubun=B'" style="cursor:pointer;">비밀번호 찾기</li>
					</ul>
				</div>
				<div class="section">
					<h3>CONTACT</h3>
					<ul>
						<li onclick="location.href='notice-2.html'" style="cursor:pointer;">공지사항</li>
						<li onclick="location.href='faq.html'" style="cursor:pointer;">FAQ</li>
						<li onclick="location.href='list.html'" style="cursor:pointer;">Q&A</li>
						<li onclick="location.href='aboutus.html'" style="cursor:pointer;">제휴문의</li>
					</ul>
				</div>
				<div class="cs-center">
					<img src="../images/img_contact.png" alt="CONTACT INFO - NO SPAM" />
					<div class="sns-icons">
						<span class="youtubu"><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="../images/youtubu_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://post.naver.com/welovemontraum" target="_blank"><img src="../images/naver_icon.png" alt="facebook" style="width:38px;"></a></span>
						<span class="facebook"><a href="https://www.facebook.com/montraum2017" target="_blank"><img src="../images/facebook_icon.png" alt="facebook"></a></span>
						<span class="instar"><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="../images/instargram_icon.png" alt="instargram"></a></span>
					</div>
				</div>

			</div>
		</div>
	</div>



</body>
</html>