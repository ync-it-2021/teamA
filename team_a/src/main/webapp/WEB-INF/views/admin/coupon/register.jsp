<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Coupon Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Coupon Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/coupon/register" method="post" enctype="multipart/form-data">   
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	         <div id="radio_box" class="form-group">
  				<label><input type="radio" name="cp_type" value="N" checked="checked">일반</label>
  				<label><input type="radio" name="cp_type" value="T">지정수령</label>
	        </div>
          <div class="form-group">
            <label>쿠폰이름</label> <input class="form-control" name='cp_name'>
          </div>

          <div class="form-group">
            <label>쿠폰 내용</label> <input class="form-control" name='cp_contents'>
          </div>

          <div class="form-group">
            <label>유툥기한</label> <input type="date" class="form-control" name='cp_end_day'>
          </div>
          
          <div id="total" class="form-group">
            <label>개수</label> <input type="number" class="form-control" name='total'value="1" min="1">
          </div>
         
         <div id ="target">
          <div class="form-group">
            <label>등록일</label> <input id="use_day" type="date" class="form-control" name='cp_useful_day' >
          </div>
          
          <div class="form-group">
            <label>쿠폰 보낼 아이디</label> <input id="memberID" class="form-control" name='member_id' >
          </div>
         </div>
          <button type="submit" class="btn btn-default">Submit
            Button</button>
          <button type="reset" class="btn btn-default">Reset Button</button>
        </form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->




<%@include file="../includes/footer.jsp"%>
<script>

$(document).ready(function() {
	$("#target").hide();
	let type = 	$("#cp_type");
	if(type == "T"){
		$("#use_day #memberID").removeArrt("readonly");
	}
	
});

$("#radio_box").on("click","input",function(){
	console.log("AA");
	if($(this).val() == "T"){
		$("#target").show();
		$("#total").hide();
	}else{
		$("#target").hide();
		$("#total").show();
	}
})

</script>