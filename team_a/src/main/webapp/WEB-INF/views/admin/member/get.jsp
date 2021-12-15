<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">member Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">member Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>아이디  :  </label><c:out value="${member.member_id }"/>
          <input type ="hidden"class="form-control" name='member_id' value='<c:out value="${member.member_id }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>이름  :  </label><c:out value="${member.member_name }"/>
           <input type ="hidden" class="form-control" name='member_name'value='<c:out value="${member.member_name }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>폰번호  :  </label><c:out value="${member.member_phone }"/>
           <input type ="hidden" class="form-control" name='member_phone'value='<c:out value="${member.member_phone }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>이메일  :  </label><c:out value="${member.member_email }"/>
           <input type ="hidden" class="form-control" name='member_email'value='<c:out value="${member.member_email }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>주소  :  </label><c:out value="${member.member_address }"/>
           <input type ="hidden" class="form-control" name='member_address'value='<c:out value="${member.member_address }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>등록일  :  </label><fmt:formatDate pattern="yyyy-MM-dd" value="${member.member_birthday }" />
           <input type ="hidden" class="form-control" name='member_birthday'value='<c:out value="${member.member_birthday}"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>마일리지  :  </label><c:out value="${member.member_mileage }"/>
           <input type ="hidden" class="form-control" name='member_maileage'value='<c:out value="${member.member_mileage }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>등급  :  </label><c:out value="${member.member_grade }"/>
           <input type ="hidden" class="form-control" name='member_pass'value='<c:out value="${member.member_grade }"/>' readonly="readonly">
        </div>
        

	<button data-oper='modify' class="btn btn-default">Modify</button>

<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admin/member/modify" method="get">
  <input type='hidden' id='mb_id' name='mb_id' value='<c:out value="${member.member_id}"/>'>
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

<div class='row'>

  <div class="col-lg-12">

    <!-- /.panel -->
    <div class="panel panel-default">

      
      <div class="panel-heading">
      <span id="review" style="padding:10px; color:black;">Review</span>
      <span id ="comment" style="padding:10px; color:#888888;">Comment </span>
       <input id="list_show" type="hidden" value="review">
      </div>      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
      
      	<!-- 댓글 목록 출력 부분 -->
	      	<table class="table table-striped table-bordered table-hover">
	      		<thead class="listHead">
	      		</thead>
	      	<tbody class="chat">
	      	
	      	</tbody>
	      	</table>
        <!-- ./ end ul -->
      </div>
      <!-- /.panel .chat-panel -->

	<div class="panel-footer"></div>


		</div>
  </div>
 </div>
  <!-- ./ end row -->

<script type="text/javascript">
	let th_str = "";
$("#review").on("click",function(){
	th_str = "<th>상품번호</th><th>주문번호</th><th>내용</th><th>날짜</th><th>점수</th>";
	$("#review").css({"color":"black"});
	$("#comment").css({"color":"#888888"});
	$("#list_show").val("review");
	$(".listHead").html("");
	$(".listHead").html(th_str);
	getList(1);
});

$("#comment").on("click",function(){
	th_str = "<th>글번호</th><th>내용</th><th>날짜</th><th>상태</th>";
	$("#review").css({"color":"#888888"});
	$("#comment").css({"color":"black"});
	$("#list_show").val("comment");
	$(".listHead").html("");
	$(".listHead").html(th_str);
	getList(1);
});

// 날짜 포맷 변환
function displayTime(timeValue) {

	var today = new Date();

	var gap = today.getTime() - timeValue;

	var dateObj = new Date(timeValue);
	var str = "";

	if (gap < (1000 * 60 * 60 * 24)) {

		var hh = dateObj.getHours();
		var mi = dateObj.getMinutes();
		var ss = dateObj.getSeconds();

		return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
				':', (ss > 9 ? '' : '0') + ss ].join('');

	} else {
		var yy = dateObj.getFullYear();
		var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
		var dd = dateObj.getDate();

		return [ yy, '-', (mm > 9 ? '' : '0') + mm, '-',
				(dd > 9 ? '' : '0') + dd ].join('');
	}
}

//댓글 목록
function getList(pageNum) {

	let replyUL = $(".chat");
	let ck = $("#list_show").val();
	let _url= "";
	let str="";
	var id = '${member.member_id}';
	var page = pageNum || 1; 
	console.log(ck+" getList ..............");
	if(ck == "review"){
		_url = "/replies/member/pages/" + id + "/" + page;
	}else if(ck == "comment"){
		_url = "/comment/member/pages/" + id;
	}
	$.ajax({
		url:_url,
		dataType:"json",
		success:function(data){
				for (var i = 0, len = data.length || 0; i < len; i++) {
				if(ck == "review"){
				str +="<tr><td class='left clearfix' data-rv='"+data[i].prd_idx+"'>"+data[i].prd_idx+"</td>";
				str +="<td data-od='"+data[i].order_idx+"'>"+data[i].order_idx+"</td>";
				str +="<td>"+data[i].review_contents+"</td>";
				str +='<td>'+displayTime(data[i].review_date)+'</td>';
				str +="<td>"+data[i].review_point+"</td></tr>";
				}else if(ck == "comment"){
					str +="<tr><td class='left clearfix' data-cm='"+data[i].bd_idx+"'>"+data[i].bd_idx+"</td>";
					str +="<td>"+data[i].cm_contents+"</td>";
					str +='<td>'+displayTime(data[i].cm_date)+'</td>';
					if(data[i].cm_del == "Y"){
						str +='<td>삭제</td>';
					}else if(data[i].cm_hidden == 'N'){
						str +='<td>공개</td>';
					}else{
						str +='<td>숨김</td>';
					}
				}
			}
				replyUL.html(str);
		},
	error:function(request, status, error ){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

	}
	
	});
}

$(document).ready(function () {
	$(".listHead").html("<th>상품번호</th><th>주문번호</th><th>내용</th><th>날짜</th><th>점수</th>");
	getList(1);

	/* 댓글 modal 창 동작 부분*/
	let modal = $(".modal");
    let modalInputReply = modal.find("input[name='reply']");
    let modalInputReplyer = modal.find("input[name='replyer']");
    let modalInputReplyDate = modal.find("input[name='replyDate']");
    let modalModBtn = $("#modalModBtn");
    let modalRemoveBtn = $("#modalRemoveBtn");
    let modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
	// Ajax Spring Security Header
    $(document).ajaxSend(function(e, xhr, options) { 
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
	});
    
  
    
	//해당 idx번호 클릭시 해당 상세정보 페이지로 이동
    $(".chat").on("click", "td", function(e){
		let movePage = $(this).data();
		console.log(movePage);
		if(movePage.cm != null){
			location.href="/admin/board/get?bd="+movePage.cm;
		}else if(movePage.rv != null){
			location.href="/admin/product/get?prd="+movePage.rv;
		}else if(movePage.od != null){
			location.href="/admin/order/get?od="+movePage.od;
		}
	
	});
	

	// 댓글 삭제 이벤트
	modalRemoveBtn.on("click", function (e){
	  	  
		let rno = modal.data("rno");

		console.log("RNO: " + rno);
		console.log("REPLYER: " + replyer);
	   	  
		if(!replyer){
			alert("로그인후 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		let originalReplyer = modalInputReplyer.val();
	   	  
		console.log("Original Replyer: " + originalReplyer);
	   	  
		if(replyer !== originalReplyer){
	   		  
			alert("자신이 작성한 댓글만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
	   	  
		reviewService.remove(rno, originalReplyer, function(result){
			alert(result);
			modal.modal("hide");
			showList(1);
		});
	});
	
	/* 댓글 modal 창 동작 부분*/
	
	// 댓글 인증 부분 추가
 	let memberID = null;
    
    <sec:authorize access="isAuthenticated()">
		memberID = '<sec:authentication property="principal.username"/>';   
	</sec:authorize>
 
	let csrfHeaderName ="${_csrf.headerName}"; 
	let csrfTokenValue="${_csrf.token}";
	
});
</script>

<script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}

$(document).ready(function() {
  
	let operForm = $("#operForm");

	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/admin/member/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#member_id").remove();
		operForm.attr("action","/admin/member/list")
		operForm.submit();
    
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
