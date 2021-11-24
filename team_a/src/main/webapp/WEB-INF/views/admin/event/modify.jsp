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
    <h1 class="page-header">event Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">event Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/admin/event/modify" method="post" enctype="multipart/form-data">
   
       	
       	<input type="hidden" name="evt_header_img" value="${evt.evt_header_img}">
		<input type="hidden" name="evt_main_img" value="${evt.evt_main_img}">
		<input type="hidden" name="evt_content_img" value="${evt.evt_content_img}">
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='evt_idx' value='<c:out value="${evt.evt_idx }"/>'>

<div class="form-group">
          <label>이벤트번호</label> <input class="form-control" name='evt_idx'
            value='<c:out value="${evt.evt_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control" name='evt_title'
            value='<c:out value="${evt.evt_title }"/>' >
        </div>
        
              <div class="form-group">
          <label>상품번호</label> <input class="form-control" name='prd_idx'
            value='<c:out value="${evt.prd_idx }"/>' >
        </div>
        
              <div class="form-group">
          <label>이동 uri</label> <input class="form-control" name='evt_move_uri'
            value='<c:out value="${evt.evt_move_uri }"/>' >
        </div>
        
              <div class="form-group">
          <label>시작일</label> <input type="date" class="form-control" name='evt_start_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${evt.evt_start_day}" />'>
        </div>
        
              <div class="form-group">
          <label>종료일</label> <input type="date" class="form-control" name='evt_end_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${evt.evt_end_day}"/>'>
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
		<div class="form-group">
          <label>해더 이미지</label>
			<a href="/resources/upload/${evt.evt_header_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_header_img}"  width="50%" height="50%"></a>
			<input type="file" class="form-control" name='uploadFile'>
        </div>
        
        		<div class="form-group">
          <label>메인 이미지</label>
			<a href="/resources/upload/${evt.evt_main_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_main_img}"  width="50%" height="50%"></a>
			<input type="file" class="form-control" name='uploadFile'>
        </div>
        
        		<div class="form-group">
          <label>내용 이미지</label>
			<a href="/resources/upload/${evt.evt_content_img}" target="_blank">
			<img src="/resources/upload/${evt.evt_content_img}"  width="50%" height="50%"></a>
			<input type="file" class="form-control" name='uploadFile'>
        </div>


  <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
  <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
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
	    
	    if(operation === 'modify'){
		      formObj.attr("action", "/admin/event/modify");
		      
		}else if(operation === 'remove'){
	      formObj.attr("action", "/admon/event/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/event/list").attr("method","get");

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
