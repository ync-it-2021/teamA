<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>::��Ʈ���:: �����̾� ���ǰ �������θ�</title>
	<jsp:include page="includes/header.jsp"/>
	<body>

	
	<style>
#popup-member-join-check { max-width: 540px; padding-top:50px;padding-bottom:30px;}
#popup-member-join-check .ws-join {text-align:center;border-bottom:1px solid #000;padding-bottom: 34px;margin-bottom: 26px; margin-top: 26px;}
#popup-member-join-check .ws-join .title {font-size:26px;}
#popup-member-join-check .ws-join .desc {font-size:13px; color:#555;}
#popup-member-join-check .ws-join .btn-ws-join {font-weight: 700;font-size: 15px;margin-top: 16px;border: none;display: inline-block;background-color: #000;color: #fff;padding: 16px 0px;width: 289px;}



</style>




</head>
<body>

<script language="javascript" src="../resources/js/top.js"></script>
<script language="javascript" src="../resources/js/_vir0001/code.js" charset="euc-kr"></script>

<!--Content��������-->
		<section>
			<div id="page-member-order-list" class="section-member pc-width">
				<div id="navigation-bar"><script>document.write(navistr)</script></div>
				<h2 class="page-title"><script>document.write(siteTitle)</script></h2>
				
	<div class="member-nav-wrapper">
	<ul class="member-nav open-sub-menu"> <!-- ���� ������Ȳ�� �� open-sub-menu class�� �߰� -->
		<li class="active">
			<a href="orderlist.jsp">���� ������Ȳ</a>
			<div class="member-sub-nav">
				<a href="orderlist.jsp" class="active">�ֹ�����</a>
				<a href="shoppingbasket.jsp">��ٱ���</a>
				<a href="wish.jsp">���ø���Ʈ</a>
				<a href="mycoupon.jsp">����</a>
		
			</div>
		</li>
		<li><a href="member_Modify.jsp">������������</a></li>
		<li class="hide-mobile"><a href="qna.jsp">1:1����</a></li>
		<li><a href="myreview_view.jsp">�����ı�</a></li>
		<li><a href="member_Withdrawal.jsp">ȸ��Ż��</a></li>
	</ul>
	</div>

	
	<div class="top-summary">
		<p class="welcome-member"> name ����, ȯ���մϴ�.</p>
		<div class="top-infobox2 my-membership">
			<div class="level-box">
        <div class="level-blt"><img src="../resources/images/blt2_membership_1.png"/></div>
        <div class="level-info">
          <div class="title-name only-pc">11�� ȸ�����</div>
          <div class="title-name only-mobile">11��<br/>ȸ�����</div>
          <div class="level-name only-pc" style="width:200px;">�ű� ����<br/><span class="membership-view" style="padding: 4px 7px;background: #000;"><a href="/about/members.asp" style="color: #fff;font-weight: bold;text-decoration: none;">ȸ������ Ȯ�� �� �����ٿ�ε�</a></span></div>
          <div class="level-name only-mobile">�ű� ����<div class="level-date only-mobile">21.4.26 ~ 21.10.25</div>
          <br/><span class="membership-view" style="padding: 4px 7px;background: #000;"><a href="/about/members.asp" style="color: #fff;font-weight: bold;">ȸ������ Ȯ�� �� �����ٿ�ε�</a></span></div>
        </div>
        <div class="level-date only-pc">����޻����Ⱓ - 2021.4.26 ~ 2021.10.25</div>
      </div>
      <div class="level-box2">
        <div class="order-buy-info only-pc"><span class="highlight">�ֱ� 6������ �ֹ��ݾ� <span style='color:#c00000;font-weight:bold;'>0</span>��</span></div>
        <div class="order-buy-info only-mobile"><span class="highlight">�ֱ� 6������ �ֹ��ݾ� <span style='color:#c00000;font-weight:bold;'>0</span>��</span></div>
      
        <div class="amount-info only-mobile"><span class="highlight">[<span style='color:#ae8346;font-weight:bold;'>�Ϲ� ����</span>]���� <span style='color:#c00000;font-weight:bold;'>1</span>ȸ ���� ���ҽ��ϴ�.</span></div>
        <div class="diff-info only-pc">*��޻��� ���ؿ� ���� ���� �ݾ����� ���ֹ��ݾװ� �ٸ� �� �ֽ��ϴ�.</div>
        <div class="diff-info only-mobile">��޻��� ���ؿ� ���� ����ݾ����� ���ֹ��ݾװ� �ٸ� �� �ֽ��ϴ�.</div>
      </div>
		</div>

		<div class="top-infobox3" style="text-align: center">
			<div class="my-infobox my-balance2 my-info">
			  <img class="only-pc" src="../resources/images/balance.png" style="float: left;margin-top: -11px;">
			  <img class="only-mobile" src="../resources/images/balance.png" style="float: left;width: 35px;">
				<div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">��ġ��<br/><a href="/common/process/mypoint.asp">0</a> ��</div>
				<div class="name only-mobile" style="float: left;">��ġ��<br/><a href="/common/process/mypoint.asp">0</a> ��</div>
			</div>

      <div class="my-infobox my-coupon2 my-info">
        <img class="only-pc" src="../resources/images/coupon.png" style="float: left;">
        <img class="only-mobile" src="../resources/images/coupon.png" style="float: left;width: 35px;">
        <div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">����<br/><a href="/common/process/mycoupon.asp">0</a> ��</div>
        <div class="name only-mobile" style="float: left;">����<br/><a href="/common/process/mycoupon.asp">0</a> ��</div>
      </div>

			<div class="my-infobox my-wish2 my-info">
			  <img class="only-pc" src="../resources/images/wish.png" style="float: left;">
			  <img class="only-mobile" src="../resources/images/wish.png" style="float: left;width: 35px;">
				<div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">���ø���Ʈ<br/><a href="/common/process/wish_list.asp">0</a> ��</div>
				<div class="name only-mobile" style="float: left;">���ø���Ʈ<br/><a href="/common/process/wish_list.asp">0</a> ��</div>
			</div>

			<div class="my-infobox my-cart2 my-info">
			  <img class="only-pc" src="../resources/images/cart.png" style="float: left;margin-top: -5px;">
			  <img class="only-mobile" src="../resources/images/cart.png" style="float: left;width: 35px;">
        <div class="name only-pc" style="float: left;padding: 25px 10px;font-size: 15px;">��ٱ���<br/><a href="/common/process/order_list.asp?iniCategory=0">0</a> ��</div>
        <div class="name only-mobile" style="float: left;">��ٱ���<br/><a href="/common/process/order_list.asp?iniCategory=0">0</a> ��</div>
      </div>
		</div>

	</div>
	


				<div class="contents-wrapper item-list" id="item-list">
					<h3 class="sub-title">�ֹ�����</h3>
					<span class="only-pc">���Բ��� �ֹ��Ͻ� ������ ��ǰ�� ��ۿ��θ� ��ȸ�Ͻ� �� �ֽ��ϴ�.</span>
          <span class="only-mobile">�ֹ��Ͻ� ������ ��ǰ�� ��ۿ��θ� ��ȸ</span>
          <div class="page-content-desc only-pc">
            <span class="btn-write btn-up-right" id="searchDate3" name="searchDate3" onclick="location.href='buy_list.asp?searchDate=3';" style="right:215px;">�ֱ�3����</span>
            <span class="btn-write btn-up-right" id="searchDate6" name="searchDate6" onclick="location.href='buy_list.asp?searchDate=6';" style="right:100px;">�ֱ�6����</span>
            <span class="btn-write btn-up-right" id="searchDate12" name="searchDate12" onclick="location.href='buy_list.asp?searchDate=12';">�ֱ�1��</span>
          </div>
          <div class="page-content-desc only-mobile">
            <span class="btn-write btn-up-right" id="searchDate3" name="searchDate3" onclick="location.href='buy_list.asp?searchDate=3';" style="right:152px;top:-60px;">�ֱ�3����</span>
            <span class="btn-write btn-up-right" id="searchDate6" name="searchDate6" onclick="location.href='buy_list.asp?searchDate=6';" style="right:70px;top:-60px;">�ֱ�6����</span>
            <span class="btn-write btn-up-right" id="searchDate12" name="searchDate12" onclick="location.href='buy_list.asp?searchDate=12';" style="top:-60px;">�ֱ�1��</span>
          </div>
			
					<div class="only-pc">
					<table class="item-table type1">
						<tr>
							<th class="item-info">�ֹ��Ͻ�</th>
							<th class="order-no">�ֹ���ȣ</th>
							<th class="count">�������</th>
							<th class="ship-status">�ֹ��ݾ�</th>
							<th class="action">�ֹ�����</th>
						</tr>
						<!--������ ������ ������ּ���
						<tr>
							<td colspan="5">�ֹ��Ͻ� ������ �����ϴ�.</td>
						</tr>
						-->

			<tr>
				<td colspan="5" class="empty">�ֹ��Ͻ� ������ �����ϴ�.</td>
			</tr>

					</table>
					</div>

					<div class="only-mobile">
					<table class="item-table type1">

			<tr>
				<td colspan="2" class="empty">�ֹ��Ͻ� ������ �����ϴ�.</td>
			</tr>

					</table>
					</div>
					<!-- PC ������ -->
					<div class="pagination1 only-pc">
					<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>

					<!-- ����� ������ -->
					<div class="pagination2 only-mobile">
						<span class='btn-page prev'></span><span class='btn-page next'></span>
					</div>


					<div class="notice-wrapper clearfix">
						<h3>Ȯ�����ּ���</h3>
						<ul class="notice-list">
							<li>�ֱ� 3���� ������ �ֹ���Ȳ ��ȸ�� �����մϴ�.</li>
							<li>�ֹ���ȣ�� Ŭ���Ͻø� �ֹ� �󼼳����� Ȯ���Ͻ� �� �ֽ��ϴ�.</li>
						</ul>
					</div>

				</div>
			</div>
		</section>
<!--Content��������-->
<div style="display:none;">
	<!--ǲ�Ϳ�������-->
</div>
	<jsp:include page="includes/footer.jsp"/>
