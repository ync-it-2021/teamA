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
    <h1 class="page-header">Board Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/admin/coupon/modify" method="post" enctype="multipart/form-data">
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='cp_idx' value='<c:out value="${cp.cp_idx }"/>'>
      
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
            value='<c:out value="${cp.member_id }"/>' >
        </div>
        
        <div class="form-group">
          <label>등록일</label> <input type="date" class="form-control" name='cp_register_date'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_register_date }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>유통기한</label> <input type="date" class="form-control" name='cp_end_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_end_day }"/>'readonly="readonly" >
        </div>
        
        <div class="form-group">
          <label>사용날짜</label> <input type="date"class="form-control" name='cp_useful_day'
            value='<fmt:formatDate pattern="yyyy-MM-dd" value="${cp.cp_useful_day }"/>' >
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
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/admin/coupon/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/coupon/list").attr("method","get");

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
