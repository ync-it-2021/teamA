<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Event Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Event Register</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/event/register_insert" method="post" enctype="multipart/form-data">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <div class="form-group">
            <label>제목</label> <input class="form-control" name='evt_title'>
          </div>
          
          <div class="form-group">
            <label>이동 uri</label> <input class="form-control" name='evt_move_uri'>
          </div>
          
          <div class="form-group">
            <label>상품 번호</label> <input class="form-control" name='prd_idx'>
          </div>
          
          <div class="form-group">
            <label>해더</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>메인</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>내용</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
          <label>시작일</label><input type="date" class="form-control" name='evt_start_day' value=''>
          </div>
          
          <div class="form-group">
          <label>종료일</label><input type="date" class="form-control" name='evt_end_day' value=''>
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
