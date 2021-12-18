<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="contents-wrapper best-seller-wrapper2 pc-width">
				<div id="title-wrapper2-title"
					style="text-align:center; margin-bottom: -35px;  width:100%; margin-top:50px"><img
						src="/resources/images/main_title_05.png"></div>
				<div id="best-seller2" class="item-list-type1">

					<!-- { block for repeat items } -->
					<div class="page-block">
						<ul>
						<c:forEach items="${new_arrival}" var="newList">   
							<!-- { block for repeat items } -->
							<li class="item"
								onclick="location.href = 'shopview36d0.html?thisCategory=0&amp;pack_content_id=1648'"style="cursor:pointer;">
								<img class="item-image best" src="/resources/upload/${newList.prd_img1}">
								<p class="item-title"></p>
								<p class="item-description">${newList.prd_name}</p>
								<p class="item-price">
									<c:if	test="${not empty newList.prd_discount_date}">
									<span class="list-price" id="best_ori_count1648">${newList.prd_cost_price}</span>
									</c:if>
									<span class="now-price"id="best_promotion_ID1648">${newList.prd_amount}</span>
								</p>
							</li>
							<!-- { end repeat } -->
							</c:forEach>
						</ul>
					</div>

				</div>
			</div>
</body>
</html>