<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">상품 등록</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">상품 등록</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/product/register_insert" method="post" enctype="multipart/form-data">
        	<!--
        	controller에서 파라미터 수집시 upload file은 uploadFile 이름으로 server로 넘어간다.(binary data로)
        	하지만 BoardVO에서는 file_1,file_2,file_3의 이름으로 setter를 해줘야 한다.
        	따라서 file_1,file_2,file_3를 hidden으로 넘겨서 controller에서 file이 upload가 안됐을 경우에도
        	파라미터 수집이 되도록(값은 null로 됨) 하기위해 hidden으로 값을 넘긴다.
        	-->
			<input type="hidden" name="prd_img1" value="">
	        <input type="hidden" name="prd_img2" value="">
	        <input type="hidden" name="prd_img3" value="">
	        <input type="hidden" name="prd_img4" value="">
	        <input type="hidden" name="prd_img5" value="">
	        <input type="hidden" name="prd_img6" value="">
	        <input type="hidden" name="prd_img7" value="">
	        <input type="hidden" name="prd_img8" value="">
	        <input type="hidden" name="prd_img9" value="">
	        <input type="hidden" name="prd_img10" value="">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

			<div class="form-group">
				<label>구분</label> <input class="form-control" name='prd_kind'>
			</div>

			<div class="form-group">
				<label>상품이름</label> <input class="form-control" name='prd_name'>
			</div>

			<div class="form-group">
				<label>제작사</label> <input class="form-control" name='prd_company'>
			</div>

			<div class="form-group">
				<label>원가</label> <input class="form-control"
					name='prd_cost_price'>
			</div>

			<div class="form-group">
				<label>판매가</label> <input class="form-control" name='prd_amount'>
			</div>


			<div class="form-group">
				<label>이미지 등록 1</label> <input type="file" class="form-control"
					name='uploadFile'>
			</div>

			<div class="form-group">
            <label>이미지 등록 2</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>이미지 등록 3</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          <div class="form-group">
            <label>이미지 등록 4</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>이미지 등록 5</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>이미지 등록 6</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          <div class="form-group">
            <label>이미지 등록 7</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>이미지 등록 8</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          
          <div class="form-group">
            <label>이미지 등록 9</label> <input type="file" class="form-control" name='uploadFile'>
          </div>
          <div class="form-group">
            <label>이미지 등록 10</label> <input type="file" class="form-control" name='uploadFile'>
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
