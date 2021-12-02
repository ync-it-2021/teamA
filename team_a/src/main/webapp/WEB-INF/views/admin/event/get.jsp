<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Event Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Event Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>이벤트번호</label> <input class="form-control" name='evt'
            value='<c:out value="${evt.evt_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control" name='evt_title'
            value='<c:out value="${evt.evt_title }"/>' readonly="readonly">
        </div>
        
              <div class="form-group">
          <label>상품번호</label> <input class="form-control" name='prd_idx'
            value='<c:out value="${evt.prd_idx }"/>' readonly="readonly">
        </div>
        
              <div class="form-group">
          <label>이동 uri</label> <input class="form-control" name='evt_move_uri'
            value='<c:out value="${evt.evt_move_uri }"/>' readonly="readonly">
        </div>
        
              <div class="form-group">
          <label>시작일</label> <input type="date" class="form-control" name='evt_start_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${evt.evt_start_day}" />'readonly="readonly">
        </div>
        
              <div class="form-group">
          <label>종료일</label> <input type="date" class="form-control" name='evt_end_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${evt.evt_end_day}"/>'readonly="readonly">
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
		<div class="form-group">
          <label>해더 이미지</label>
			<a href="/resources/upload/${evt.evt_header_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_header_img}"  width="100%" height="100%"></a>
        </div>
        
        		<div class="form-group">
          <label>메인 이미지</label>
			<a href="/resources/upload/${evt.evt_main_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_main_img}"  width="100%" height="100%"></a>
        </div>
        
        		<div class="form-group">
          <label>내용 이미지</label>
			<a href="/resources/upload/${evt.evt_content_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_content_img}"  width="100%" height="100%"></a>
        </div>

			<button data-oper='modify' class="btn btn-default">Modify</button>



<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admon/event/modify" method="get">
  <input type='hidden' id='evt' name='evt' value='<c:out value="${evt.evt_idx}"/>'>
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
		operForm.attr("action","/admin/event/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#evt").remove();
		operForm.attr("action","/admin/event/list")
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
