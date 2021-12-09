<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Board Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Register  </div>
      <!-- /.panel-heading -->
      <div class="panel-body">

        <form role="form" action="/admin/board/register" method="post" enctype="multipart/form-data">
        
			<input type="hidden" name="bd_file1" value="">
	        <input type="hidden" name="bd_file2" value="">
	        <input type="hidden" name="bd_file3" value="">
	        <input type="hidden" name="bd_file4" value="">
	        <input type="hidden" name="bd_file5" value="">
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <div class="form-group">
            <label>Title</label>
            <input class="form-control" name='bd_title'>
          </div>
          
          <div class="form-group">
            <label>타입</label>
             <select name='bd_code'>
				<option value="MN"
					<c:out value="${pageMaker.cri.type eq 'MN'?'selected':''}"/>>일반 공지</option>
				<option value="AN"
					<c:out value="${pageMaker.cri.type eq 'AN'?'selected':''}"/>>관리자 공지</option>
			</select>
          </div>

          <div class="form-group">
            <label>작성 글</label>
            <textarea class="form-control" rows="3" name='bd_contents'></textarea>
          </div>
          
          <div class="form-group">
            <label>작성자</label> <input class="form-control" name='member_id' 
                value='<sec:authentication property="principal.username"/>' readonly="readonly">
          </div>
          
          <div class="form-group">
            <label>이미지 등록 1</label> <input type="file" class="form-control" name='uploadFile'>
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
