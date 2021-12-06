<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <h1 class="page-header">Product Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Product Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

<form role="form" action="/admin/product/modify" method="post" enctype="multipart/form-data">
      	<!--
       	controller에서 파라미터 수집시 upload file은 uploadFile 이름으로 server로 넘어간다.(binary data로)
       	하지만 BoardVO에서는 file_1,file_2,file_3의 이름으로 setter를 해줘야 한다.
       	따라서 file_1,file_2,file_3를 hidden으로 넘겨서 controller에서 file이 upload가 안됐을 경우에도
       	파라미터 수집이 되도록(값은 null로 됨) 하기위해 hidden으로 값을 넘긴다.
       	
       	업로드 파일 삭제 기능 추가시 해당 file의 value="" 로 바꿔주면 된다.
       	-->
		<c:forEach var="i" begin="1" end="10">
			<c:set var="t" value="prd_img${i}" />
			<c:choose>
				<c:when test="${not empty prd[t]}">
		            <input type="hidden" name="prd_img${i}" value="${prd[t]}">
		        </c:when>
		        <c:otherwise>
					<input type="hidden" name="prd_img${i}" value="">		
		        </c:otherwise>
			</c:choose>
		</c:forEach>
		
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='prd_idx' value='<c:out value="${prd.prd_idx }"/>'>
   
   <div class="form-group">
          <label>상품번호</label> 
          <input class="form-control" name='prd_idx'
            value='<c:out value="${prd.prd_idx}"/>' readonly="readonly">
        </div>
        <div class="form-group">
          <label>코드</label> 
          <input class="form-control" name='prd_kind'
            value='<c:out value="${prd.prd_kind}"/>' >
        </div>
        <div class="form-group">
          <label>상품명</label> 
          <input class="form-control" name='prd_name'
            value='<c:out value="${prd.prd_name}"/>' >
        </div>

        <div class="form-group">
          <label>제작사</label>
          <input class="form-control" rows="3" name='prd_company'
             value="${prd.prd_company}">
        </div>

        <div class="form-group">
          <label>원가</label> 
          <input class="form-control" name='prd_cost_price' type="number" min="0"
            value='<c:out value="${prd.prd_cost_price}" />'>
        </div>
        <div class="form-group">
          <label>재고</label> 
          <input type="number" min='0' class="form-control" name='prd_inventory'
            value='<c:out value="${prd.prd_inventory}"/>' >
        </div>
        <div class="form-group">
          <label>세일기간</label> 
          <input type="date" class="form-control" name='prd_discount_date'
            value='<c:out value="${prd.prd_discount_date}"/>'>
        </div>
        <div class="form-group">
          <label>세일금액</label>
           <input class="form-control" name='prd_sale_prices' type="number"
            value='<c:out value="${prd.prd_sale_prices}" />' >
        </div>
        <div class="form-group">
          <label>판매금액</label> 
          <input class="form-control" name='prd_amount' type="number"
            value='<c:out value="${prd.prd_amount}" />'>
        </div>

<c:forEach var="i" begin="1" end="10">
	<c:set var="t" value="prd_img${i}" />
	<div class="form-group">
	<label>이미지${i}</label>
		<c:if test="${not empty prd[t]}">
			<a href="/resources/upload/${prd[t]}" target="_blank"><img src="/resources/upload/${prd[t]}" id="thumb_${i}"></a>
			<script>
	        	document.getElementById('thumb_${i}').src="/resources/upload/" + getThumbFileName('${prd[t]}');
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
	    if(operation === 'modify'){
		      formObj.attr("action", "/admin/product/modify");
		      
		    }else if(operation === 'remove'){
	      formObj.attr("action", "/admin/product/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/product/list").attr("method","get");

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
