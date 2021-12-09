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

      <form role="form" action="/admin/board/modify" method="post" enctype="multipart/form-data">
       	-->
		<c:forEach var="i" begin="1" end="5">
			<c:set var="t" value="bd_img${i}" />
			<c:choose>
				<c:when test="${not empty board[t]}">
		            <input type="hidden" name="bd_img${i}" value="${board[t]}">
		        </c:when>
		        <c:otherwise>
					<input type="hidden" name="bd_img${i}" value="">		
		        </c:otherwise>
			</c:choose>
		</c:forEach>
		
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='bd_idx' value='<c:out value="${board.bd_idx }"/>'>
      
<div class="form-group">
  <label>Title</label> 
  <input class="form-control" name='bd_title' 
    value='<c:out value="${board.bd_title }"/>' >
</div>

<div class="form-group">
  <label>Text area</label>
  <textarea class="form-control" rows="3" name='bd_contents' ><c:out value="${board.bd_contents}"/></textarea>
</div>

<div class="form-group">
  <label>Writer</label> 
  <input class="form-control" name='member_id'
    value='<c:out value="${board.member_id}"/>' readonly="readonly">            
</div>

<c:forEach var="i" begin="1" end="5">
	<c:set var="t" value="bd_img${i}" />
	<div class="form-group">
	<label>이미지${i}</label>
		<c:if test="${not empty board[t]}">
			<a href="/resources/upload/${board[t]}" target="_blank"><img src="/resources/upload/${board[t]}" id="thumb_${i}"></a>
			<script>
	        	document.getElementById('thumb_${i}').src="/resources/upload/" + getThumbFileName('${board[t]}');
			</script>
		</c:if>
		<input type="file" class="form-control" name='uploadFile'>
	</div>
</c:forEach>
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
	      formObj.attr("action", "/admin/board/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/board/list").attr("method","get");

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
