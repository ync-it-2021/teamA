<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">member Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">member Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/admin/member/modify" method="post" enctype="multipart/form-data">
      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type='hidden' name='member_id' value='<c:out value="${member.member_id }"/>'>
      
<div class="form-group">
  <label>ID</label> 
  <c:out value="${member.member_id }"/>
  <input type="hidden" class="form-control" name='member_id'  value='<c:out value="${member.member_id}"/>'/>
</div>

<div class="form-group">
  <label>이름</label> 
  <input type="text" class="form-control" name='member_name'  value='<c:out value="${member.member_name}"/>'/>
</div>

<div class="form-group">
  <label>비밀번호</label> 
  <input type="password" class="form-control" name='member_pass'  value='<c:out value="${member.member_pass}"/>'/>
</div>
<div class="form-group">
  <label>비밀번호 확인</label> 
  <input type="password" class="form-control" name='member_pass_ck'  value=''/>
</div>
<div class="form-group">
  <label>이메일</label>
  <input type="text" class="form-control" name='member_email' <c:out value="${member.member_email}"/>'/>
</div>
<div class="form-group">
  <label>폰번호</label>
  <input type="text" class="form-control" name='member_phone' <c:out value="${member.member_phone}"/>'/>
</div>
<div class="form-group">
  <label>address</label>
  <c:out value="${member.member_address}"/>
    <input type="hidden" class="form-control" name='member_address'  value='<c:out value="${member.member_address}"/>'/>
</div>
<div class="form-group">
  <label>등록일</label>
  <c:out value="${member.member_birthday}"/>
    <input type="hidden" class="form-control" name='member_birthday'  value='<c:out value="${member.member_birthday}"/>'/>
</div>
<div class="form-group">
  <label>마일리지</label>
  <input type="text" class="form-control" name='member_mileage' <c:out value="${member.member_mileage}"/>'/>
</div>
<div class="form-group">
  <label>등급</label>
  <input type="text" class="form-control" name='member_grade' <c:out value="${member.member_grade}"/>'/>
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
	      formObj.attr("action", "/admin/member/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/admin/member/list").attr("method","get");

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
