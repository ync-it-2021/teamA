<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">prd Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">
      	<label>상품번호</label> <c:out value="${prd.prd_idx}"/>
      	<c:if test="${prd.prd_del == 'Y'}"> <label>[판매 중단]</label> </c:if>
      </div>

      <!-- /.panel-heading -->
      <div class="panel-body">
      
        <div class="form-group">
          <label>코드</label> 
          <input class="form-control" name='prd_kind'
            value='<c:out value="${prd.prd_kind}"/>'readonly="readonly" >
        </div>
        <div class="form-group">
          <label>상품명</label> 
          <input class="form-control" name='prd_name'
            value='<c:out value="${prd.prd_name}"/>'readonly="readonly" >
        </div>

        <div class="form-group">
          <label>제작사</label>
          <input class="form-control" rows="3" name='prd_company'
             value="${prd.prd_company}"readonly="readonly">
        </div>

        <div class="form-group">
          <label>원가</label> 
          <input class="form-control" name='prd_cost_price'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_cost_price}" />' readonly="readonly">
        </div>
        <div class="form-group">
          <label>재고</label> 
          <input type="number" min='0' class="form-control" name='prd_inventory'
            value='<c:out value="${prd.prd_inventory}"/>'readonly="readonly" >
        </div>
        <div class="form-group">
          <label>세일기간</label> 
          <input type="date" class="form-control" name='prd_discount_date'
            value='<c:out value="${prd.prd_discount_date}"/>'readonly="readonly">
        </div>
        <div class="form-group">
          <label>세일금액</label>
           <input class="form-control" name='prd_sale_prices'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_sale_prices}" />' readonly="readonly">
        </div>
        <div class="form-group">
          <label>판매금액</label> 
          <input class="form-control" name='prd_amount'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_amount}" />'readonly="readonly" >
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
        <div class="form-group"  >
        <table>

			<c:forEach var="i" begin="1" end="10">
				<c:set var="t" value="prd_img${i}" />
					<c:if test="${not empty prd[t]}">
						<c:if test="${i % 6 == 0}">
						<tr>
						</c:if>
						<td>
							<table>
								<tr style="text-align: center;"> 
									<td>이미지${i}</td>
								</tr>
								<tr>
									<td>
									<a href="/resources/upload/${prd[t]}" target="_blank">
									<img src="/resources/upload/${prd[t]}" id="thumb_${i}" width="200" height="200" style="margin: 25px;"></a>
									</td>
								</tr>
							</table>
						</td>
						<c:if test="${i % 5 == 0}">
						</tr>
						</c:if>
			       </c:if>   
			</c:forEach>
		</table>
		</div>
	
		<div>
			<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
			<button type="submit" data-oper='list' class="btn btn-default">List</button>
		</div>
			

<form id='operForm' action="/admin/product/modify" method="GET">
  <input type='hidden' id='prd' name='prd' value='<c:out value="${prd.prd_idx}"/>'>
  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
</form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->


<script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}

$(document).ready(function() {
  
	let operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/admin/product/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#prd").remove();
		operForm.attr("action","/admin/product/list")
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
