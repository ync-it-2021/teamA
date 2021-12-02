<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>

<script>
//썸네일 파일명을 가져오는 함수
function getThumbFileName(fullFilePath) {
	var arrString = fullFilePath.split("/");
	console.log(arrString);
	arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
	return arrString.join("/");
}
</script>

<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Pay Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Pay Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/admin/pay/modify" method="post" enctype="multipart/form-data">
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
	    <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
		<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='pay_idx' value='<c:out value="${pay.pay_idx }"/>'>
		
		
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
            value='<c:out value="${pay.pay_amount}" />' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>결제방법</label> <input class="form-control" name='pay_option'
            value='<c:out value="${pay.pay_option }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>지급 마일리지</label> <input class="form-control" name='pay_mileage'
            value='<c:out value="${pay.pay_mileage }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>결제날짜</label> <input type="date" class="form-control" name='pay_buyer'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${pay.pay_date}" />' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>수취인</label> <input class="form-control" name='pay_recipient'
            value='<c:out value="${pay.pay_recipient }"/>' >
        </div>
        
         <div class="form-group">
          <label>배송지</label> <input class="form-control" name='pay_address'
            value='<c:out value="${pay.pay_address }"/>' >
        </div>
        
		 <div class="form-group">
          <label>상태</label> <input class="form-control" name='pay_state'
            value='<c:out value="${pay.pay_state }"/>'>
        </div>
		
		<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
		<button type="submit" data-oper='list' class="btn btn-info">List</button>
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


	  let formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
		 if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/pay/list").attr("method","get");

	      var pageNumTag = $("input[name='pageNum']").clone();
	      var amountTag = $("input[name='amount']").clone();
	      var keywordTag = $("input[name='keyword']").clone();
	      var typeTag = $("input[name='type']").clone();      
	      
	      formObj.empty();
	      
	      formObj.append(pageNumTag);
	      formObj.append(amountTag);
	      formObj.append(keywordTag);
	      formObj.append(typeTag);
	    }
	    
	    formObj.submit();
	  });

});
</script>
  




<%@include file="../includes/footer.jsp"%>
