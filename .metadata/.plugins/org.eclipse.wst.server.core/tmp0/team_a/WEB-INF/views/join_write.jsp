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
					<li onclick="location.href='shopmain8356.html?iniCategory=2&amp;thisCategory=54'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_54.png" alt="����Ʈ�긮��" /></li>
					<li onclick="location.href='shopmainc90f.html?iniCategory=2&amp;thisCategory=20'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_20.png" alt="���ε���" /></li>
					<li onclick="location.href='shopmain68fb.html?iniCategory=2&amp;thisCategory=82'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_82.png" alt="���̽�������" /></li>
					<li onclick="location.href='shopmaind59e.html?iniCategory=2&amp;thisCategory=74'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_74.png" alt="�����" /></li>
					<li onclick="location.href='shopmain176d.html?iniCategory=2&amp;thisCategory=22'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_22.png" alt="�������ڼ�" /></li>
				</ul>
				<ul class="clearfix2">
					<li onclick="location.href='shopmain8261.html?iniCategory=2&amp;thisCategory=73'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_73.png" alt="��׾ط�" /></li>
					<li onclick="location.href='shopmain04d6.html?iniCategory=2&amp;thisCategory=21'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_21.png" alt="���÷�" /></li>
					<li onclick="location.href='shopmain64ed.html?iniCategory=2&amp;thisCategory=100'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_100.png" alt="����Ǯ" /></li>
					<li onclick="location.href='shopmain8ecb.html?iniCategory=2&amp;thisCategory=101'" style="cursor:pointer;width:19%;"><img src="../images/img_brand_logo2_101.png" alt="ī����4"/></li>
					<li class="mnb-event-banner" style="cursor:pointer; width: 20%;">
						<span onclick="location.href='members.html'" style="cursor:pointer;"><img src="../images/mnb_icon_1.png" alt="�����" /></span>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!--�׺񿵿�����-->

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
//�����,��������
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

			//�⵵
			rValue.push('<select class="type1" name="'+ field_name1 +'">');
			rValue.push('<option value="">����</option>');
			d = new Date;
			nowYear = d.getFullYear()+1;

			for (i=1995; i<=nowYear; i++) {
				rValue.push('<option value="'+ i +'">'+ i +'</option>');
			}

			rValue.push('</select> �� &nbsp; ');
		}

		//��
		rValue.push('<select class="type1" name="'+ field_name2 +'">');
		rValue.push('<option value="">����</option>');

		for (i=1; i<=12; i++) {
			val_month = select_zero(i,2);
			rValue.push('<option value="'+ val_month +'">'+ val_month +'</option>');
		}

		rValue.push('</select> �� &nbsp;');

		//��
		rValue.push('<select class="type1" name="'+ field_name3 +'">');
		rValue.push('<option value="">����</option>');

		for (i=1; i<=31 ; i++) {
			val_day = select_zero(i,2);
			rValue.push('<option value="'+ val_day +'">'+ val_day +'</option>');
		}

		rValue.push('</select> ��');
		document.writeln (rValue.join(""));
	}

	function nextCodeFnc(chk) {
		//üũ�ڽ� ���ϼ���
		var obj = document.getElementsByName("exYear");
		for(var i=0; i<obj.length; i++){
			if(obj[i].value != chk){
				obj[i].checked = false;
			}
		}
	}
</script>
<!--Content��������-->
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
			<h2 class="page-sub-title kr">�������� �Է�</h2>
			<div class="page-content-desc">
				��Ʈ��� ���Ű��� ȯ���մϴ�. �ʼ��Է� �����Դϴ�.
			</div>

			<table class="item-table type1 input-form">
				<tr>
					<th>���̵�</th>
					<td>
						<input type="text" name="id" class="input2 member-id" onKeypress="if ((event.keyCode > 32 && event.keyCode < 48) || (event.keyCode > 57 && event.keyCode < 65) || (event.keyCode > 90 && event.keyCode < 97)) event.returnValue = false;" maxlength="20" />
						<span class="btn-type1 findid" style="cursor:pointer">�ߺ�Ȯ��</span>
						<span class="form-comment">�� 6~15�ڸ��� ���� ���ڸ� �����Ͽ� ����� �ּ���.</span>
					</td>
				</tr>
				<tr>
					<th>��й�ȣ</th>
					<td>
						<input type="password" name="pwd1" maxlength="20" class="input1" />
						<span class="password-check">
							��й�ȣ Ȯ��
							<input type="password" name="pwd2" maxlength="20" class="input1" />
						</span>
					</td>
				</tr>
				<tr class="password-check-mobile">
					<th>��й�ȣ Ȯ��</th>
					<td>
						<input type="password" name="pwd2_mobile" maxlength="20" class="input1" />
					</td>
				</tr>
				<tr>
					<th>�̸�</th>
					<td>
						<input type="text" class="input1" name="name" value="">
					</td>
				</tr>
				<tr>
					<th>�������</th>
					<td>
					<script language="javascript">
						nowDate = new Date();
						document.write ("<select name='birth1' class='type1'>");
						for (var i=nowDate.getFullYear()-14; i>=1900; i--) document.write ("<option value='"+ i +"'>"+ i +"</option>");
						document.write ("</select>�� &nbsp;");

						document.write ("<select name='birth2' class='type1'>");
						for (var i=1 ; i<=12; i++) document.write ("<option value='"+ select_zero(i,2) +"'>"+ i +"</option>");
						document.write ("</select>�� &nbsp;");

						document.write ("<select name='birth3' class='type1'>");
						for (var i=1 ; i<=31; i++) document.write ("<option value='"+ i +"'>"+ i +"</option>");
						document.write ("</select>��");
					</script>
					</td>
				</tr>
				<tr>
					<th>�̸���</th>
					<td>
						<input type="text" name="email" maxlength="45" onkeydown="space_no()" onkeyup="space_no2()" autocomplete="off" class="input1 email1" /> @
						<input type="text" name="email2"  maxlength="30" onkeydown ="space_no()" onkeyup="space_no2()" class="input1 email2" />
						<select name="SelectEmail" OnChange="ChangeEmail()" class="type1 email-select">
							<script language="javascript">make_select_code("select","email","SelectEmail","","^�����Է�","","x")</script>
							<option value="naver.com">naver.com</option><option value="gmail.com">gmail.com</option><option value="hanmail.net">hanmail.net</option><option value="nate.com">nate.com</option><option value="hotmail.com">hotmail.com</option><option value="empal.com">empal.com</option><option value="empas.com">empas.com</option><option value="dreamwiz.com">dreamwiz.com</option><option value="korea.com">korea.com</option><option value="paran.com">paran.com</option><option value="hanafos.com">hanafos.com</option><option value="lycos.co.kr">lycos.co.kr</option><option value="chollian.net">chollian.net</option><option value="orgio.net">orgio.net</option><option value="freechal.com">freechal.com</option><option value="hitel.net">hitel.net</option><option value="hanmir.com">hanmir.com</option><option value="unitel.co.kr">unitel.co.kr</option><option value="nownuri.net">nownuri.net</option><option value="kornet.nm.kr">kornet.nm.kr</option><option value="kebi.com">kebi.com</option><option value="lycos.com">lycos.com</option><option value="lycos.co.kr">lycos.co.kr</option></select>
						</select>
						<div class="next-line">
							<input type="checkbox" name="bMail_rcv" value="1" onclick="$(this).parents('td').find('.alter-notice-wrapper').toggle()" />
							�������� �� �̺�Ʈ ���� ���� (����)
							<span class="alter-notice-wrapper">
								<span class="alter-notice pc-text">�̸���/SMS ������� ���Բ� �ű�ȸ�� ���������� �߱޵˴ϴ�.</span>
								<span class="alter-notice mobile-text">������� ���Բ� �ű�ȸ�� ���������� �߱�</span>
							</span>
						</div>
					</td>
				</tr>
				<tr>
					<th>�޴�����ȣ</th>
					<td>
						<script language="javascript">make_select_code("select","handphone","mobile1","type1 phone1","^����","")</script> -
						<input type="text" name="mobile2" maxlength="4" onkeypress="onlyNumber()" class="input1 phone2" /> -
						<input type="text" name="mobile3" maxlength="4" onkeypress="onlyNumber()" class="input1 phone3" /><br class="only-mobile" /><br class="only-mobile" />
						 
						</div>
					</td>
				</tr>
				<tr style="display:none;">
					<th>����ó</th>
					<td>
						<script language="javascript">make_select_code("select","tel","tel1","type1 phone1","^����")</script> -
						<input type="text" name="tel2" maxlength="4" onkeypress="onlyNumber()" class="input1 phone2" /> -
						<input type="text" name="tel3" maxlength="4" onkeypress="onlyNumber()" class="input1 phone3" />
					</td>
				</tr>
				<tr style="display:none;">
					<th>�����ּ�</th>
					<td>
						<input type="text" name="zip" readOnly maxlength="7" class="input1 zipcode" />
						<span class="btn-type1 address" style="cursor:pointer" onClick="ZipSearch('frmReg');">�����ȣ ã��</span> <br />
						<input type="text" name="addr1" readOnly class="input1 address1" />
						<input type="text" name="addr2" maxlength="60" class="input1 address2" />
					</td>
				</tr>
			
					<th>���θ� �ּ�</th>
					<td>
						<input type="text" name="road_zip" readOnly maxlength="7" class="input1 zipcode" />
						<span class="btn-type1 address" style="cursor:pointer" onClick="ZipSearch('frmReg');">�����ȣ ã��</span> <br />
						<input type="text" name="road_addr1" readOnly class="input1 address1" />
						<input type="text" name="road_addr2" maxlength="60" class="input1 address2" />
					</td>
				</tr>
			</table>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div class="contents-wrapper member-info-form">
			<h2 class="page-sub-title kr">�ΰ����� �Է�</h2>
			<div class="page-content-desc">
				�ΰ������� �����Է� �����Դϴ�.
			</div>

			<table class="item-table type1 input-form">
				<!-- ��ȥ����� ������ ��� ���� -->
                <div style="display:none;"><script language="javascript">fn_ymd("Marry")</script></div>
				<tr>
					<th style="width:77px;">ù°</th>
					<td>
						<div class="field-block">
							�ݷ����� �̸�
							<input type="text" name="baby1_name" class="input1" style="ime-mode:active;" />
						</div>
						<div class="field-block margin-right">
							<label><input type="radio" name="baby1_sex" value="1"/> ������</label>
							<label><input type="radio" name="baby1_sex" value="2"/> �����</label>
							<label><input type="radio" name="baby1_sex" value="0"/> ��Ÿ</label>
						</div>
						<div class="field-block">
							<span>�����</span>
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
			<h2 class="page-sub-title kr">���Ծ�� ����</h2>
			<div class="article-wrapper">
				<input type="checkbox" name="useAgree" value="1" /> ȸ����� ���� <span class="btn-type1 useAgree" style="cursor:pointer">���뺸��</span>
			</div>
			<div class="article-wrapper">
				<input type="checkbox" name="infoAgree" value="1" /> �������� ���� �� �̿� ���� <span class="btn-type1 infoAgree" style="cursor:pointer">���뺸��</span>
			</div>
			<div class="action-buttons" name="sub1" id="sub1">
				<span class="ok type2" onClick="WriteCheck2();" style="cursor:pointer">����</span>
			</div>
		</div>
		<iframe name="hidden_iframe" style="display:none"></iframe>
		</form>
	</div>
</section>
<!--Content��������-->
<div style="display:none;">
	<!--ǲ�Ϳ�������-->
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
						<li onclick="location.href='shopmain95da.html?iniCategory=24&amp;thisCategory='" style="cursor:pointer;">���</li>
						<li onclick="location.href='shopmaind449.html?iniCategory=87&amp;thisCategory='" style="cursor:pointer;">����</li>
						<li onclick="location.href='shopmainacb9.html?iniCategory=25&amp;thisCategory='" style="cursor:pointer;">�躯��ǰ</li>
						<li onclick="location.href='shopmain84ed.html?iniCategory=27&amp;thisCategory='" style="cursor:pointer;">�̿�</li>
						<li onclick="location.href='shopmaine79f.html?iniCategory=28&amp;thisCategory='" style="cursor:pointer;">����/����</li>
						<li onclick="location.href='shopmain31f3.html?iniCategory=76&amp;thisCategory='" style="cursor:pointer;">�����</li>
					</ul>
				</div>
				<div class="section">
					<h3>EVENT</h3>
					<ul>
						<!-- li onclick="location.href='/common/all_site/Notice/event.asp'" style="cursor:pointer;">���ý�û</li -->
						<li onclick="location.href='event.html'" style="cursor:pointer;">������ EVENT</li>
						<li onclick="location.href='notice-2.html'" style="cursor:pointer;">��÷�� ��ǥ</li>
						<li onclick="location.href='review.html'" style="cursor:pointer;">BEST REVIEW</li>
					</ul>
				</div>
				<div class="section">
					<h3>MEMBER</h3>
					<ul>
						<li onclick="location.href='join_agreement.html'" style="cursor:pointer;">ȸ������</li>
						<li onclick="location.href='login.html'" style="cursor:pointer;">�α���</li>
						<li onclick="location.href='searchidinfo2ce3.html?ProcessGubun=A'" style="cursor:pointer;">���̵� ã��</li>
						<li onclick="location.href='searchidinfo0a92.html?ProcessGubun=B'" style="cursor:pointer;">��й�ȣ ã��</li>
					</ul>
				</div>
				<div class="section">
					<h3>CONTACT</h3>
					<ul>
						<li onclick="location.href='notice-2.html'" style="cursor:pointer;">��������</li>
						<li onclick="location.href='faq.html'" style="cursor:pointer;">FAQ</li>
						<li onclick="location.href='list.html'" style="cursor:pointer;">Q&A</li>
						<li onclick="location.href='aboutus.html'" style="cursor:pointer;">���޹���</li>
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