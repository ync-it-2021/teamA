<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Order Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Order Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>주문번호</label> <input class="form-control" name='od'
            value='<c:out value="${order.od_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>상품번호</label> <input class="form-control" name='prd_idx'
            value='<c:out value="${order.prd_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>주문자</label><input class="form-control" name='member_id'
           value='<c:out value="${order.member_id}" />' readonly="readonly">
        </div>

        <div class="form-group">
          <label>주문 내용</label> <input class="form-control" name='od_details'
            value='<c:out value="${order.od_details }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>할인방법</label> <input class="form-control" name='od_discount'
            value='<c:out value="${order.od_discount }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>할인금액</label> <input class="form-control" name='od_sale_prices'
            value='<fmt:formatNumber type = "currency" value="${order.od_sale_prices }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>주문금액</label> <input class="form-control" name='od_amount'
            value='<fmt:formatNumber type = "currency" value="${order.od_amount }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>주문날짜</label> <input type="date" class="form-control" name='od_date'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${order.od_date}"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>상태</label> <input class="form-control" name='od_status'
            value='<c:out value="${order.od_status }"/>' readonly="readonly">
        </div>

<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admin/order/list" method="GET">
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

$(document).ready(function() {
  
	let operForm = $("#operForm");
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#od").remove();
		operForm.attr("action","/admin/order/list");
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
