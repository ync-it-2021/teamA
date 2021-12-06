<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">One_Inquiry Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">
      	 <div style="text-align: center;">
      	 	 <label style="float: left;">번호 : <c:out value="${oi.oi_idx}"/> </label>
      	 	 <c:out value="${oi.oi_title}"/>
      	 	  <label style="float: right;">작성자 : <c:out value="${oi.member_id}"/> </label>
      	  </div>
      </div>

      <!-- /.panel-heading -->
      <div class="panel-body">
      
        <div class="form-group">
        <h5 style="font-weight: bold;">내용</h5>
           <div style="font-size: 18px;"><c:out value="${oi.oi_contents}"/></div>
        </div>
        <div class="form-group">
          <label>작성 시간 : </label> <fmt:formatDate type="both" value="${oi.oi_date}" />
        </div>


        
        <!-- 업로드 이미지나 파일을 출력 -->
	        <div class="form-group" ><label>첨부 이미지</label>
	        <c:if test="${empty oi_img}"><div>없음</div></c:if>
						<c:if test="${not empty oi_img}">
							<div style="text-align: center; width: 250px;float: left;">
								<div style="width: 100%;">
									<a href="/resources/upload/${oi_img}" target="_blank">
									<img src="/resources/upload/${oi_img}" id="thumb_1" width="200" height="200" style="margin: 25px;"></a>
								</div>
							</div>
				       </c:if>   
		</div>
	<form id='operForm' action="/admin/oi/modify" method="POST">
		      			    <!-- /.panel -->
    <div class="panel panel-default">

      
      <div class="panel-heading">
      <span style="padding:10px; font-weight: bold;">Reply </span>
      </div> 
      
      
      <!-- /.panel-heading -->
     
      <div class="panel-body" >      
      	<textarea rows="5" cols="150" id="reply" placeholder="답장 내용" name="oi_reply"  readonly="readonly">${oi.oi_reply}</textarea>
      	  <div class="form-group">
          <label>작성 시간 : </label> <fmt:formatDate type="both" value="${oi.oi_reply_date}" />
          <span id="reply_modify" style="font-size:small; float: right;">[수정하기] </span> 
        </div>  
      </div>
      
      <!-- /.panel .chat-panel -->
		</div>

		<div class="form-group" style="margin-left: 15px; float: right;">
				<button  data-oper='modify' class="btn btn-default">답장하기</button>
				<button  data-oper='list' class="btn btn-default">List</button>
		</div>	
		

			
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	  <input type='hidden' id='oi' name='oi_idx' value='<c:out value="${oi.oi_idx}"/>'>
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
	
	$("#reply_modify").on("click", function(e){
		$("#reply").removeAttr("readonly");
	});

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/admin/oi/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    	operForm.find("#oi").remove();
    	operForm.attr("method","GET");
    	operForm.attr("action","/admin/oi/list").submit();
    
	});
});


</script>


<%@include file="../includes/footer.jsp"%>
