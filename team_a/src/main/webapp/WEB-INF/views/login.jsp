<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<jsp:include page="includes/header.jsp"/>
<body>

	<script language="javascript">
	httpUrl = "login.html"
	httpUrl2 = "www.montraum.com"

	function loginCheck() {
		location.href="login6d1f.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Flogin%2Easp"
	}
</script>
<script type="text/javascript" src="../images/top.js"></script>
<style>
.tab-content .naver-join {text-align:center; margin-top: 26px;margin-bottom: 26px;}
.tab-content .naver-join .title {font-size:26px;}
.tab-content .naver-join .desc {font-size:13px; color:#555;}
.tab-content .naver-join .btn-login-naver {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #1EC800;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_naver.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}
.tab-content .naver-join .btn-login-facebook {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #385898;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_facebook.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}
.tab-content .naver-join .btn-login-kakao {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #F9DF33;color: #fff;padding: 16px 0px;width: 289px;background-image: url('../images/sns_logo_kakao.png');background-position: 44px center;background-repeat: no-repeat;text-indent: 35px;}


#page-member-login form{margin-left:0px;}

</style>

<section>
<div id="page-member-login" class="section-member pc-width">
	<div id="navigation-bar"><script>document.write(navistr)</script></div>
	<h2 class="page-title"><script>document.write(siteTitle)</script></h2>

	<div class="contents-wrapper login-line">
		<div class="tab-contents">
			<div class="tab-header">
				</ul>
			</div>
			<div class="tab-content">
				<!-- ȸ�� �α��� -->
				<div class="content1 active">
					<form role="form" name="mainFrm" method="post" action="/login">
					<input type="hidden" name="refer_page" value="">					
					<div class="clearfix">
						<ul class="input-items">
							<li>
								<span class="input-name">���̵�</span>
								<input type="text" class="input1" placeholder="userid"
										name="username" onKeyDown="javascript:acceptEnter12();" />
							</li>
							<li>
								<span class="input-name">��й�ȣ</span>
								<input type="password" class="input1" placeholder="Password"
										name="password" onKeyDown="javascript:acceptEnter22()" />
							</li>
						</ul>
						<div class="btn-wrapper">
							<input type="submit" data-oper='login' class="btn-login" value="LOGIN" onclick="javascript:SendLoginMain();" style="cursor:pointer;" />
						</div>
					</div>
					<!--Ȩ������ ��ū  -->
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>						
					<div class="page-link">
						<ul>
							<li><a href="searchidinfo2ce3.html?ProcessGubun=A">���̵� ã��</a></li>
							<li><a href="searchidinfo0a92.html?ProcessGubun=B">��й�ȣ ã��</a></li>
							<li><a href="join_agreement.html">ȸ������</a></li>
						</ul>
					</div>

		
					
				</div>
				
				




</div>

<div class="contents-wrapper member-ship-guide clearfix">
	<div class="intro">
		<p class="txt-membership">MEMBERSHIP</p>
		<p class="txt-program">PROGRAM</p>
		<p class="txt-desc">��Ʈ��� ȸ������ ���� ����ȭ�� ������ �����ϼ���.</p>
	</div>

	<ul class="benefits">
		<li class="b-coupon">
			<p class="text1">�ű�ȸ��</p>
			<p class="text2">�������� ����</p>
		</li>
		<li class="b-level">
			<p class="text1">1ȸ ���� ��</p>
			<p class="text2">�ٷ� ��� UP</p>
		</li>
		<li class="b-event">
			<p class="text1">�پ���</p>
			<p class="text2">�̺�Ʈ ����</p>
		</li>
	</ul>
</div>
</div>



		</section>

<div style="display:none;">
	<!--ǲ�Ϳ������� footer �ǵ��� �ʴ´� -->
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
	<!-- { pc �� mobile ȭ�� �б� } -->
	<div class="common-mobile-bottom">
		<div class="ico ico-news" onclick="location.href='press.html'" style="cursor:pointer;">NEWS</div>
		<div class="ico ico-review" onclick="location.href='review.html'" style="cursor:pointer;">REVIEW</div>
	</div>
	<div id="copyright" class="pc-width clearfix only-pc">
		<img class="ci" src="../images/img-ci.png" alt="MONTRAUM" />

		<div class="copyright-text">
			<ul>
				<li>��ȣ : (��)�ڶ쿤�� | </li>
				<li>���θ� : ��Ʈ��� | </li>
				<li>��ǥ�̻� : ǥ���� | </li>
				<li>������������ �� û�ҳ� ��ȣ å���� : ��ȫ��</li>
				<li>
					<a href="privacy.html">�������� ó����ħ &gt;</a>
					<a href="agreement2.html">�̿��� ></a>
				</li>
			</ul>
			<ul>
				<li>����ڵ�Ϲ�ȣ : 108-81-91594 | </li>
				<li>����ǸŻ���Ű� : �� 2013-���ﱸ��-0728ȣ</li>
			</ul>
			<ul>
				<li>�ּ� : ����Ư���� ���α� �����з� 33�� 48 �븢����ƮŸ�� 7�� 13��  </li>
				<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1088191594" target="_blank">��������� Ȯ�� &gt;</a></li>
			</ul>
			<p class="escrow"><strong>����ũ�� ����</strong> | �����ŷ��� ���� (��)�̴Ͻý��� ���ž��� (����ũ��)�� �����Ͽ� ���񽺸� �����ϰ� �ֽ��ϴ�.)
				<a href="javascript:f_escrowKsnet();">���Ի�� Ȯ��</a> &gt;</p>
		</div>

		<div class="family-site-social">
			<!--div class="select-box">
				<div class="default">FAMILY SITE</div>
			</div-->
			<!-- select class="select-box">
				<option value="">FAMILY SITE</option>
				<option value="http://www.einebaum.com">���̳ʹٿ�</option>
				<option value="http://www.makenmerk.com">���˸޸�ũ</option>
				<option value="http://www.botanicaltherapy.co.kr">��Ÿ�����׶���</option>
				<option value="http://www.marcusnmarcus.co.kr">��Ŀ���ظ�Ŀ��</option>
				<option value="http://www.moisnlois.com">���̽��ط��̽�</option>
				<option value="http://www.deglingos.co.kr">���۸���</option>
				<option value="http://www.cloudbkorea.co.kr">Ŭ�����</option>
				<option value="http://www.donodono.co.kr">���뵵��</option>
			</select -->
			<!--div class="sns_logo">
				<ul>
					<li><img src="/static/img/footer/blt_social_01.png" alt="Service" /></li>
					<li><img src="/static/img/footer/blt_social_02.png" alt="What" /></li>
					<li><img src="/static/img/footer/blt_social_03.png" alt="FACEBOOK" /></li>
					<li><img src="/static/img/footer/blt_social_04.png" alt="BLOG?" /></li>
					<li><img src="/static/img/footer/blt_social_05.png" alt="KAKAO TALK" /></li>
				</ul>
			</div-->
		</div>

	</div>
	<div id="copyright-mobile" class="only-mobile">
		<div class="clearfix copyright-top">
			<img class="ci" src="../images/img-ci.png" alt="MONTRAUM" />

			<div class="cs-center">
				<p><span class="text1">CS CENTER</span> <a href="tel:1644-3955" class="phone-number">1644-3955</a></p>
				<p class="comment">��㰡�ɽð� 10:00~17:00 (�����/������ �޹�)</p>
			</div>

			<div class="family-site-social">
				<div class="bottom-sns">
					<ul>
						<li><a href="https://www.youtube.com/channel/UCHg6I0zobz8sKK6HOErzLzg/featured?disable_polymer=1" target="_blank"><img src="../images/youtubu_icon.png" style="width:10vw;padding-right:.56vw" alt="youtubu" /></a></li>
						<li><a href="https://m.post.naver.com/profile.nhn?authorId=welovemontraum" target="_blank"><img src="../images/naver_icon.png" style="width:10vw;" alt="naver post" /></a></li>
						<li><a href="https://m.facebook.com/montraum2017" target="_blank"><img src="../images/facebook_icon.png" style="width:10.55vw;" alt="facebook" /></a></li>
						<li><a href="https://www.instagram.com/montraum_official" target="_blank"><img src="../images/instargram_icon.png" style="width:10.55vw;" alt="instargram" /></a></li>
					</ul>
				</div>

				<!--div class="select-box">
					<div class="default">FAMILY SITE</div>
				</div-->
				<!-- select class="select-box">
					<option value="">FAMILY SITE</option>
					<option value="http://www.einebaum.com">���̳ʹٿ�</option>
					<option value="http://www.makenmerk.com">���˸޸�ũ</option>
					<option value="http://www.botanicaltherapy.co.kr">��Ÿ�����׶���</option>
					<option value="http://www.marcusnmarcus.co.kr">��Ŀ���ظ�Ŀ��</option>
					<option value="http://www.moisnlois.com">���̽��ط��̽�</option>
					<option value="http://www.deglingos.co.kr">���۸���</option>
					<option value="http://www.cloudbkorea.co.kr">Ŭ�����</option>
					<option value="http://www.donodono.co.kr">���뵵��</option>
				</select -->

				<!--div>
					<ul>
						<li><img src="/static/img/footer/blt_social_01.png" alt="Service" /></li>
						<li><img src="/static/img/footer/blt_social_02.png" alt="What" /></li>
						<li><img src="/static/img/footer/blt_social_03.png" alt="FACEBOOK" /></li>
						<li><img src="/static/img/footer/blt_social_04.png" alt="BLOG?" /></li>
						<li><img src="/static/img/footer/blt_social_05.png" alt="KAKAO TALK" /></li>
					</ul>
				</div-->
			</div>
		</div>
		<div class="copyright-text">
			<ul>
				<li>��ȣ : (��)�ڶ쿤�� | </li>
				<li>���θ� : ��Ʈ��� | </li>
				<li>��ǥ�̻� : ǥ����</li>
				<li>������������ �� û�ҳ� ��ȣ å���� : ��ȫ��</li>
				<li>
					<a href="privacy.html">�������� ó����ħ &gt;</a>
					<a href="agreement2.html">�̿��� ></a>
				</li>
			</ul>
			<ul>
				<li>����ڵ�Ϲ�ȣ : 108-81-91594</li>
				<li>����ǸŻ���Ű� : �� 2013-���ﱸ��-0728ȣ </li>
			</ul>
			<ul>
				<li>�ּ� : ����Ư���� ���α� �����з� 33�� 48 �븢����ƮŸ�� 7�� 13�� </li>
				<li><a href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1088191594" target="_blank">��������� Ȯ�� &gt;</a></li>
			</ul>
			<p class="escrow">
				<strong>����ũ�� ����</strong> | �����ŷ��� ���� (��)�̴Ͻý��� ���ž��� (����ũ��)��<br />
				�����Ͽ� ���񽺸� �����ϰ� �ֽ��ϴ�.)
				<a href="javascript:f_escrowKsnet();">���Ի�� Ȯ��</a> &gt;</p>
		</div>
		<div class="mobile-quick">
			<div class="log-btn">
				
				<a href="login83f1.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Flogin%2Easp&amp;inicategory=0"><div class="login-btn only-mobile">login</div></a>
				
			</div>
			<div class="go-top"><p>TOP</p></div>
		</div>
	</div>

</footer>
<!--ǲ�Ϳ�������-->
</div>
<div id="quickmenu" name="quickmenu" class="only-pc">
	<ul class="quick_banner">
		<a href="eventview064b.html?idx=162"><li class="nosmell"></li></a>
		<a href="eventviewf89f.html?idx=136"><li class="bestbreed"></li></a>
		<a href="eventviewfdd5.html?idx=350"><li class="firstbuying"></li></a>
		<a href="eventview9b14.html?idx=462"><li class="sale"></li></a>

	</ul>
	<div class="viewed">
		<a href="javascript:gdscroll(-86)" onfocus=blur()><p><img src="../images/quickmenu_arrowup.png"></p></a>
		<p class="tit">VIEWED <span id="num" name="num"></span></p>
		<div id="TODAYLIST2" name="TODAYLIST2" style="height:255px;overflow:hidden;"></div>
		<a href="javascript:gdscroll(86)" onfocus=blur()><p><img src="../images/quickmenu_arrowdown.png"></p></a>
	</div>
	<div class="go-top"><p>TOP</p></div>
</div>
<script type="text/javascript">
	//���޴�
	$(function() {
		var UI = {
			init: function() {this.quickMenuFn();},
			initialize: function() {
				this.id = {
					target: {quick: '#quickmenu'}
				};
				this.init();
			},
			quickMenuFn: function() {
				var quick = $(this.id.target.quick);
				var qTop = parseInt(quick.css('top'));

				$(window).scroll(function() {
					var winTop = $(window).scrollTop();
					var preTop = qTop + winTop;
					var newTop = winTop + qTop - (parseInt(quick.css('height'))+qTop-$(window).height()+10);

					if (newTop <= qTop) {
						newTop = qTop;
					}
					quick.stop().animate({top: newTop}, 400);
				})
			},

			scrollTop: function(eTarget, speed) {
				var speed = speed || null;
				eTarget.on('click', function() {
					$('html, body').animate({
						scrollTop: $("body").offset().top
					}, speed)
				})
			}
		};
		$(function() {
			UI.initialize();
		})
	})
</script>

<!-- ����� ���̵�� 170621-�ֹ����۾� -->
<div id="sidebar2">
	<div class="top">
		<img src="../images/img_sidebar_logo.png" alt="MONTRAUM" class="ci"/>
		<div class="buttons">
			
			<a href="join_agreement.html">ȸ������</a>
			<a href="login83f1.html?refer_page=%2Fcommon%2Fall%5Fsite%2Fmember%2Flogin%2Easp&amp;inicategory=0">�α���</a>
			
		</div>
	</div>

	<div class="block-1">
		<ul>
			<a href="shopbest6534.html?category_etc_id=1&amp;iniCategory=0"><li class="ico ico-best" style="background-size:initial;">BEST</li></a>
			<a href="event.html"><li class="ico ico-event" style="background-size:initial;">EVENT</li></a>
			<a href="members.html"><li class="ico ico-membership" style="background-size:initial;">MEMBERSHIP</li></a>
		</ul>
	</div>

	<div class="tab-contents">
		<div class="tab-header">
			<ul class="clearfix">
				<li class="tab1 active" data-target="content1">CATEGORY</li>
				<li class="tab2" data-target="content2">BRAND</li>
				<li class="tab3" data-target="content3">COMMUNITY</li>
			</ul>
		</div>

		<div class="tab-content">
			<!-- categoty -->
			<div class="content1 active">
				<ul class="cate-content">
					<li class="cate-list-skin open">
						<h3 class="depth-1" onclick="allCateClose(0);$(this).parent().find('.depth-2').slideToggle();"><p>������ ���</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmain3398.html?iniCategory=24&amp;thisCategory=29">�׷�������</a></div>
							
							<div><a href="shopmainde9a.html?iniCategory=24&amp;thisCategory=57">Ȧ����ƽ</a></div>
							
							<div><a href="shopmain715b.html?iniCategory=24&amp;thisCategory=60">���ɺ�</a></div>
							
							<div><a href="shopmaind3d7.html?iniCategory=24&amp;thisCategory=95">�����̾�</a></div>
							
							<div><a href="shopmain1856.html?iniCategory=24&amp;thisCategory=108">����&������</a></div>
							
						</div>
					</li>
					<li class="cate-list-out">
						<h3 class="depth-1" onclick="allCateClose(2);$(this).parent().find('.depth-2').slideToggle();"><p>����� ���</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmain3798.html?iniCategory=107&amp;thisCategory=109">�׷�������</a></div>
							
							<div><a href="shopmain410a.html?iniCategory=107&amp;thisCategory=110">Ȧ����ƽ</a></div>
							
							<div><a href="shopmain271e.html?iniCategory=107&amp;thisCategory=111">���ɺ�</a></div>
							
							<div><a href="shopmain833e.html?iniCategory=107&amp;thisCategory=114">�����̾�</a></div>
							
							<div><a href="shopmain6ad9.html?iniCategory=107&amp;thisCategory=112">����&������</a></div>
							
						</div>
					</li>
					<li class="cate-list-bedding">
						<h3 class="depth-1" onclick="allCateClose(1);$(this).parent().find('.depth-2').slideToggle();"><p>�躯��ǰ</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmaina0d3.html?iniCategory=25&amp;thisCategory=30">Ʈ���̴� �е�</a></div>
							
							<div><a href="shopmain673c.html?iniCategory=25&amp;thisCategory=31">�뽺�� �е�</a></div>
							
							<div><a href="shopmaina2c1.html?iniCategory=25&amp;thisCategory=115">��ũ�� �е�</a></div>
							
							<div><a href="shopmaina3e6.html?iniCategory=25&amp;thisCategory=117">����� �е�</a></div>
							
							<div><a href="shopmainab79.html?iniCategory=25&amp;thisCategory=121">�Ʒθ� �е�</a></div>
							
							<div><a href="shopmain20b9.html?iniCategory=25&amp;thisCategory=96">����ġ �躯��</a></div>
							
						</div>
					</li>
					<li class="cate-list-living">
						<h3 class="depth-1" onclick="allCateClose(3);$(this).parent().find('.depth-2').slideToggle();"><p>�̿�</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmain7b85.html?iniCategory=27&amp;thisCategory=102">��</a></div>
							
							<div><a href="shopmain60d5.html?iniCategory=27&amp;thisCategory=55">��Ʈŷ</a></div>
							
							<div><a href="shopmainf38b.html?iniCategory=27&amp;thisCategory=52">�귯��</a></div>
							
							<div><a href="shopmaincea8.html?iniCategory=27&amp;thisCategory=62">����</a></div>
							
							<div><a href="shopmaine5a9.html?iniCategory=27&amp;thisCategory=119">���Ÿ��</a></div>
							
							<div><a href="shopmain451c.html?iniCategory=27&amp;thisCategory=105">�������</a></div>
							
						</div>
					</li>
					<li class="cate-list-toy">
						<h3 class="depth-1" onclick="allCateClose(4);$(this).parent().find('.depth-2').slideToggle();"><p>����/����</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmainf65c.html?iniCategory=28&amp;thisCategory=99">�� ����</a></div>
							
							<div><a href="shopmain55e4.html?iniCategory=28&amp;thisCategory=81">�� ������</a></div>
							
							<div><a href="shopmain5903.html?iniCategory=28&amp;thisCategory=86">��󸶾�漮</a></div>
							
							<div><a href="shopmain3997.html?iniCategory=28&amp;thisCategory=43">�޸��� ħ��</a></div>
							
							<div><a href="shopmain879a.html?iniCategory=28&amp;thisCategory=120">��ī��</a></div>
							
							<div><a href="shopmain0fa7.html?iniCategory=28&amp;thisCategory=104">�峭��</a></div>
							
						</div>
					</li>
					<li class="cate-list-cat">
						<h3 class="depth-1" onclick="allCateClose(5);$(this).parent().find('.depth-2').slideToggle();"><p>����� ��ǰ</p></h3>
						<div class="depth-2" name="cateList">
							
							<div><a href="shopmain830a.html?iniCategory=76&amp;thisCategory=113">ȭ���</a></div>
							
							<div><a href="shopmain898e.html?iniCategory=76&amp;thisCategory=78">��</a></div>
							
							<div><a href="shopmainf3bd.html?iniCategory=76&amp;thisCategory=79">�̿�</a></div>
							
						</div>
					</li>
				</ul>
			</div>
			<!-- //categoty -->

			<!-- brand -->
			<div class="content2">
				<ul class="cate-content">
					<li class="cate-list open">
						<div class="depth">
							<div><a href="shopmain8356.html?iniCategory=2&amp;thisCategory=54">BEST BREED <span class="info">(Holistic Pet Nutrition)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmainc90f.html?iniCategory=2&amp;thisCategory=20">PRODOGGIE <span class="info">(Smart Training Pad)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmaind59e.html?iniCategory=2&amp;thisCategory=74">WEGONO <span class="info">(Easy&Trendy Pet��s Outdoor Goods)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmain176d.html?iniCategory=2&amp;thisCategory=22">MARS ALCOSO <span class="info">(Masterpiece Grooming Tools)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmain8261.html?iniCategory=2&amp;thisCategory=73">DIG & ROLL <span class="info">(Ideal Cat Brand)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmain04d6.html?iniCategory=2&amp;thisCategory=21">KOMPLETT <span class="info">(PET BED)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmain68fb.html?iniCategory=2&amp;thisCategory=82">ICELAND PET <span class="info">(The Clean Power of Nature)</span></a></div>
						</div>
						<div class="depth">
							<div><a href="shopmain8ecb.html?iniCategory=2&amp;thisCategory=101">CARNA4 <span class="info">(Hand Crafted Pet Food)</span></a></div>
						</div>
					</li>
				</ul>
			</div>
			<!-- //brand -->

			<!-- community -->
			<div class="content3">
				<ul class="cate-content">
					<li class="cate-list open">
						<div class="depth">
							<div><a href="review.html">Product Review</a></div>
							<div><a href="notice-2.html">Notice</a></div>
							<div><a href="faq.html">FAQ</a></div>
							<div><a href="list.html">1:1 QNA</a></div>
							<div><a href="members.html">Membership</a></div>
							<div><a href="press.html">News</a></div>
						</div>
					</li>
				</ul>
			</div>
			<!-- //community -->

		</div>
	</div>
	<div class="viewed-items">
		<h3>VIEWED (<span id="viewedCnt"></span>)</h3>
		<div class="viewed-item-list" id="TODAYLIST"></div>
	</div>
</div>
<!--���̵�� ����-->

<div id="body-mask" onclick="closeSidebar();"></div>

<script type="text/javascript">
	$(document).ready(function(){
		$(".select-box").change(function(){
			if($(this).val() != ""){
				$("#familyFrm").attr("action",$(this).val());
				$("#familyFrm").submit();
			}
		});
	});

	function f_escrowKsnet(){
		//�̴Ͻý� ����ũ�� ����Ȯ��
		window.open("https://mark.inicis.com/mark/escrow_popup.php?mid=monvatesc0","mark","scrollbars=no,resizable=no,width=565,height=683");
	}


	var endnum=0

	if(getCookie("TodayGoods") != ""){
		TodayGoods = getCookie("TodayGoods").split(",")
		TodayGoods.unique();
		endnum = TodayGoods.length
	}else{
		TodayGoods = new Array()
		endnum = 0;
	}
	document.getElementById("viewedCnt").innerText = endnum;
	document.getElementsByName("num")[0].innerText = "("+endnum+")��"

	if (endnum>0) {
		var sumText2 ="";
		for (var i=0 ; i<endnum ; i++) {

			if (TodayGoods[i].split("^").length==4 && TodayGoods[i].indexOf("category_site")==-1) {
				if (TodayGoods[i].split("^")[1].substring(0,1) == "P")
				{
					sumText = "<div class=\"item\"><img src='/_vir0001/product_img/middle/"+ TodayGoods[i].split("^")[1] + "' "
					sumText2 += "<li><img width='80' width='80' src='/_vir0001/product_img/middle/"+ TodayGoods[i].split("^")[1] + "' style='cursor:pointer;' onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\"></li> "
				}else{
					sumText = "<div class=\"item\"><img src='/_vir0001/product_img/ini_product/middle/"+ TodayGoods[i].split("^")[1] + "' "
					sumText2 += "<li><img width='80' width='80' src='/_vir0001/product_img/ini_product/middle/"+ TodayGoods[i].split("^")[1] + "' style='cursor:pointer;' onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\"></li> "
				}

				sumText = sumText + " onclick=\"location.href='/common/process/shopview.asp?pack_content_id="+ TodayGoods[i].split("^")[0] +"&thisCategory="+TodayGoods[i].split("^")[3]+"'\" "
				sumText = sumText + "></div>"



				document.getElementById("TODAYLIST").innerHTML = document.getElementById("TODAYLIST").innerHTML + sumText
			}
		}
		document.getElementById("TODAYLIST2").innerHTML = "<ul class='list'>" + sumText2 + "</ul>"

	}
	function gdscroll(gap)
	{
		var gdscroll = document.getElementsByName('TODAYLIST2')[0];
		gdscroll.scrollTop += gap;
	}

</script>

<form name="familyFrm" id="familyFrm" action="#" target="_blank"></form>


<script type="text/javascript">
	$(function(){
		$(".cate-content li .depth-1").click(function(){
			if( $(this).parent().hasClass('open') ) {
				$(this).parent().removeClass('open');
			} else {
				$(this).parents('.cate-content').find(".open").removeClass('open');
				$(this).parent().addClass('open');
			}
		});
	})

	// TAB �� ������ ��ũ��Ʈ
	$(function(){
		$(".tab-contents .tab-header li").click(function(){
			var target = $(this).attr('data-target');
			$(this).parent().find("li.active").removeClass('active');
			$(this).addClass('active');
			$(this).closest('.tab-contents').find('.tab-content div.active').removeClass('active');
			$(this).closest('.tab-contents').find("."+target).addClass('active');
		});
	});

	function allCateClose(idx) {
		var cateList = document.getElementsByName("cateList");
		for(i=0;i<cateList.length;i++){
			if(idx != i) {
				cateList[i].style.display = "none";
			}
		}
	}
</script>
<script language="javascript" src="../images/code.js"></script>


<!-- AceCounter Log Gathering Script V.7.5.2017020801 -->
<script language='javascript'>
	var _AceGID=(function(){var Inf=['gtc14.acecounter.com','8080','AS4A42151972793','AW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src=(location.protocol.indexOf('http')==0?location.protocol:'http:')+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
</script>
<noscript><img src='http://gtc14.acecounter.com:8080/?uid=AS4A42151972793&amp;je=n&amp;' border='0' width='0' height='0' alt=''></noscript>
<!-- AceCounter Log Gathering Script End -->


<!-- WIDERPLANET  SCRIPT START 2018.5.21 (����) (* ���� �±״� Ÿ �±�(������, ��ٱ���, ���ſϷ�, ��ȯ �Ϸ�)���� �ϴܿ� ��ġ�Ͽ��� �մϴ�. ) -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
	return {
		wp_hcuid:"",   /*���ѹ� �� Unique ID (ex. �α���  ID, ���ѹ� �� )�� ��ȣȭ�Ͽ� ����.
				*���� : �α��� ���� ���� ����ڴ� ��� ���� �������� �ʽ��ϴ�.*/
		ti:"41190",	/*������ �ڵ� */
		ty:"Home",	/*Ʈ��ŷ�±� Ÿ�� */
		device:"web"	/*����̽� ����  (web �Ǵ�  mobile)*/

	};
}));
</script>
<script type="text/javascript" async src="../images/wp_astg_4.0.js"></script>
<!-- WIDERPLANET  SCRIPT START 2018.5.21 (����)-->


<!-- Enliple Common Tracker v3.6 [����] start -->
<script type="text/javascript">

function mobRf() {
    var rf = new EN();
    rf.setData("userid", "montraum");
    rf.setSSL(true);
    rf.sendRf();
}

</script>
<!-- Enliple Common Tracker v3.6 [����] end -->



<script src="../images/enliple_min3.6.js" defer="defer" onload="mobRf();"></script>



<!-- ADN Tracker[����] start -->
<script type="text/javascript">
var adn_param = adn_param || [];
adn_param.push([{ 	
 ui:'101877',
 ut:'Home'
}]);
</script>
<script type="text/javascript" async src="../images/adn_tags_1.0.0.js"></script>
<!-- ADN Tracker[����] end -->

<!-- ADN ũ��¡ ��ġ  start -->
<script type="text/javascript">
var adn_panel_param = adn_panel_param || [];
adn_panel_param.push([{
 ui:'101877',	
 ci:'1018770001',
 gi:'21528'
}]);
</script>
<script type="text/javascript" async src="../images/adn_closingad_1.1.1.js"></script>
<!-- ADN ũ��¡ ��ġ end -->

<!-- ADN ũ��¡ ��ġ ������ start -->
<script type="text/javascript">
var adn_mobile_panel_param = adn_mobile_panel_param || [];
adn_mobile_panel_param.push([{
 ui:'101877',  
 ci:'1018770002',
 gi:'21530'
}]);
</script>
<script type="text/javascript" async src="../images/adn_mobile_closingad_1.1.2.js"></script>
<!-- ADN ũ��¡ ��ġ end -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WDLJW3X"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>

<!-- Mirrored from www.montraum.com/common/all_site/member/login.asp by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 25 Oct 2021 06:20:30 GMT -->
</html>

<script type="text/javascript">
	function acceptEnter12() {
		if (event.keyCode == 13) {
			document.mainFrm.LoginPwd.focus();
		}
	}

	function acceptEnter22() {
		if (event.keyCode == 13) {
			SendLoginMain();
		}
	}

	//���� �α��� �ϴ� �κ�
	function SendLoginMain() {
		var frm = document.mainFrm;

		if (isEmpty(frm.LoginId.value)) {
			alert("ID�� �Է��� �ֽʽÿ�.");
			frm.LoginId.focus();
			return;
		}

		if (isEmpty(frm.LoginPwd.value)) {
			alert("��й�ȣ�� �Է��� �ֽʽÿ�.");
			frm.LoginPwd.focus();
			return;
		}
		frm.submit();
	}
	
	
	
	//��ȸ�� ��ȸ 
	function this_submit() {
		if (isEmpty(document.f_jumun.name.value)) {
			alert ("�ֹ��ڸ��� �Է��� �ֽʽÿ�.");
			document.f_jumun.name.focus();
			return;
		}

		if (isEmpty(document.f_jumun.jumuncode.value)) {
			alert ("�ֹ���ȣ�� �Է��� �ֽʽÿ�.");
			document.f_jumun.jumuncode.focus();
			return;
		}
		document.f_jumun.submit()
	}

	// TAB �� ������ ��ũ��Ʈ
	$(function(){
		$(".tab-contents .tab-header li").click(function(){
			var target = $(this).attr('data-target');
			$(this).parent().find("li.active").removeClass('active');
			$(this).addClass('active');
			$(this).closest('.tab-contents').find('.tab-content div.active').removeClass('active');
			$(this).closest('.tab-contents').find("."+target).addClass('active');
		});
		
		
		let formObj = $("form");

		$('button').on("click", function(e){
		  
		  e.preventDefault(); 
		  
		  var operation = $(this).data("oper");
		  
		  console.log(operation);
		  if(operation === 'login'){
			      formObj.attr("action", "/login");
			    }
		  formObj.submit();
		});

		
		
	});

//����������
$(function(){
	$(".membership-table-mobile li .membership-header").click(function(){
		if( $(this).parent().hasClass('open') ) {
			$(this).parent().removeClass('open');
		} else {
			$(this).parents('.membership-table-mobile').find(".open").removeClass('open');
			$(this).parent().addClass('open');
		}
	});
})

//�йи��귣��
$(document).ready(function(){
		$(".fb .tep .tep-list .horizontal li").show();
		$(".fb .brand div").hide();
		$("#brand-1").show();
		$(".tep_p1").hide();
	$(".horizontal li").mouseover(function(){
		var target_idx = $(this).attr("idx");
		$(".fb .tep .tep-list .horizontal li").show();
		$(".fb .brand div").hide();
		$(".horizontal li[idx="+target_idx+"]").show();
		$(".fb .brand div[id=brand-"+target_idx+"]").show();
	}).css("cursor","pointer");
});




function fnPopSNSLogin(sns) {
	var popup = window.open("snsloginpopupec49.html?sns="+sns + "&refer_page=","snsLogin","width=425, height=550, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0");
}




	document.getElementsByName("not_connected")[0].style.display = "none"
	document.getElementsByName("sns_login")[0].style.display = ""

</script>




</body>
</html>