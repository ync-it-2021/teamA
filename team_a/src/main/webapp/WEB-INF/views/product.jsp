<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title></title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta id="viewport" name="viewport" content="width=1120">


<jsp:include page="includes/header.jsp"/>

	

	
<!--Content영역시작-->
<section>
<div id="page-item-list" class="pc-width">
<div id="navigation-bar"><span onclick="location.href=&#39;/&#39;" style="cursor:pointer">Home</span><span onclick="location.href=&#39;/common/process/shopmain.asp?thisCategory=24&#39;">DOG FOOD </span><span onclick="location.href=&#39;/common/process/shopmain.asp?thisCategory=29&#39;" class="current">그레인프리 </span></div>

<c:forEach items="${product}" var="PRODUCT">
<h2 class="page-title">${PRODUCT.PRD_CATEGORY}</h2>
</c:forEach>
		<!-- 상단 배너 XML -->
	<div id="item-list-top-banner" class="owl-carousel owl-theme owl-loaded">

		

	<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0.25s ease 0s; width: 1120px;"><div class="owl-item active" style="width: 1120px; margin-right: 0px;"><div class="item">
		</div></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div class="owl-dots" style=""></div></div></div>

<ul class="sub-category"><li class="active"><span class="c-name"><a href="https://www.montraum.com/common/process/shopmain.asp?thisCategory=29">그레인프리</a></span></li><li><span class="c-name"><a href="https://www.montraum.com/common/process/shopmain.asp?thisCategory=57">홀리스틱</a></span></li><li><span class="c-name"><a href="https://www.montraum.com/common/process/shopmain.asp?thisCategory=60">연령별</a></span></li><li><span class="c-name"><a href="https://www.montraum.com/common/process/shopmain.asp?thisCategory=95">프리미엄</a></span></li><li><span class="c-name"><a href="https://www.montraum.com/common/process/shopmain.asp?thisCategory=108">간식&amp;영양제</a></span></li></ul>
			
<script type="text/javascript">

</script>

	<%-- <div class="items">
		<div class="item-header clearfix">
			<span class="total-item-num"><span class="num">${total.PRD_KIND}</span> Items</span>
			<select class="item-order type2" onchange="javascript:location.href=this.value">
				<option value="?orderb=0&amp;iniCategory=24&amp;thisCategory=29">추천순</option>
				<option value="?orderb=1&amp;iniCategory=24&amp;thisCategory=29">신상품순</option>
				<option value="?orderb=2&amp;iniCategory=24&amp;thisCategory=29">낮은가격순</option>
				<option value="?orderb=3&amp;iniCategory=24&amp;thisCategory=29">높은가격순</option>
			</select>
		</div> --%>

		<div class="item-list-type3">
			<!-- { block for repeat items } -->

	<c:forEach items="${product}" var="PRODUCT">
			<div class="item" style="cursor:pointer"  onclick="location.href='${path}productdetail?prd_idx=${PRODUCT.PRD_IDX}';" > 
				<div style="position:absolute;cursor:pointer;border:solid 0px ;">					
				</div>
				<img class="item-image" src=""alt="img1">
				<p class="item-title"><script language="javascript">view_name("view_brand","54","write")</script>${PRODUCT.PRD_COMPANY}</p>
				<p class="item-description" id="iconID1585" name="iconID1585">${PRODUCT.PRD_NAME}</p>
				<p class="item-price">

					<span class="list-price" id="ori_count1585" name="ori_count1585">${PRODUCT.PRD_COST_PRICE}</span> <span class="now-price" id="promotion_ID1585" name="promotion_ID1585">${PRODUCT.PRD_AMOUNT}</span>

				</p>
			</div>
	</c:forEach>
		</div>

		<!-- PC 페이지 -->
		<div class="pagination1 only-pc">
			<span class="btn-page prev"></span><span class="active">1</span><span class="btn-page next"></span>
		</div>


	</div>
</div>
		</section>

<jsp:include page="includes/footer.jsp"/>

