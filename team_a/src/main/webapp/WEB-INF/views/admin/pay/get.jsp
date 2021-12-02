<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Pay Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Pay Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>결제번호</label> <input class="form-control" name='pay_idx'
            value='<c:out value="${pay.pay_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>주문번호</label> <input class="form-control" name='od_idx'
            value='<c:out value="${pay.od_idx }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>구매자</label> <input class="form-control" name='pay_buyer'
            value='<c:out value="${pay.pay_buyer }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>결제금액</label> <input class="form-control" name='pay_amount'
            value='<fmt:formatNumber type = "currency" value="${pay.pay_amount}" />' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>결제방법</label> <input class="form-control" name='pay_option'
            value='<c:out value="${pay.pay_option }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>지급 마일리지</label> <input class="form-control" name='pay_mileage'
            value='<c:out value="${pay.pay_mileage }"/>P' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>결제날짜</label> <input type="date" class="form-control" name='pay_buyer'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${pay.pay_date}" />' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>수취인</label> <input class="form-control" name='pay_recipient'
            value='<c:out value="${pay.pay_recipient }"/>' readonly="readonly">
        </div>
        
         <div class="form-group">
          <label>배송지</label> <input class="form-control" name='pay_address'
            value='<c:out value="${pay.pay_address }"/>' readonly="readonly">
        </div>
        
		 <div class="form-group">
          <label>상태</label> <input class="form-control" name='pay_state'
            value='<c:out value="${pay.pay_state }"/>' readonly="readonly">
        </div>

		<button data-oper='modify' class="btn btn-default">Modify</button>

    	<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admin/pay/modify" method="get">
  <input type='hidden' id='pay' name='pay' value='<c:out value="${pay.pay_idx}"/>'>
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

<script type="text/javascript" src="/resources/js/reply.js?v=1.0"></script>
<script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}

$(document).ready(function() {
  
	let operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/admin/pay/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#bno").remove();
		operForm.attr("action","/admin/pay/list")
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
