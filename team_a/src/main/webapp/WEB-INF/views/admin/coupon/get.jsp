<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">coupon Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">coupon Read Page<c:if test="${cp.cp_use_check eq 'Y' }">[사용됨]</c:if></div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>글번호</label> <input class="form-control" name='cp_idx'
            value='<c:out value="${cp.cp_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control" name='cp_name'
            value='<c:out value="${cp.cp_name }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>내용</label> <input class="form-control" name='cp_contents'
            value='<c:out value="${cp.cp_contents }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>소지중인 회원</label> <input class="form-control" name='member_id'
            value='<c:out value="${cp.member_id }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>등록일</label> <input type="date" class="form-control" name='cp_register_date'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_register_date }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>유통기한</label> <input type="date" class="form-control" name='cp_end_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_end_day }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>사용날짜</label> <input type="date"class="form-control" name='cp_useful_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_useful_day }"/>' readonly="readonly">
        </div>
        
   



		<button data-oper='modify' class="btn btn-default">Modify</button>
	


<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admin/coupon/modify" method="get">
  <input type='hidden' id='cp' name='cp' value='<c:out value="${cp.cp_idx}"/>'>
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
		operForm.attr("action","/admin/coupon/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#cp").remove();
		operForm.attr("action","/admin/coupon/list")
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
