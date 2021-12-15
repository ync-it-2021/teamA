<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">member Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">member Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/member/register" method="post" enctype="multipart/form-data">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <div class="form-group">
            <label>ID</label>
             <input class="form-control" name='member_id' >
          </div>
          <div class="form-group">
            <label>이름</label>
             <input class="form-control" name='member_name'>
          </div>
          <div class="form-group">
            <label>PASSWORD</label>
             <input type="password"  class="form-control" name='member_pass'>
          </div>
          <div class="form-group">
            <label>PHONE</label>
             <input class="form-control" name='member_phone'>
          </div>
          <div class="form-group">
            <label>Email</label>
             <input  class="form-control" name='member_email'>
          </div>
    		 <input type="hidden" name='member_address' value="-">
    		 <input type="hidden" name='member_grade' value = "0">
    		 <input type="hidden" name='auth' value = "ROLE_ADMIN">
          
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
