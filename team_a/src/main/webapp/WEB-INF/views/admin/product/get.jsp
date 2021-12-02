<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">prd Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">
      	<label>상품번호</label> <c:out value="${prd.prd_idx}"/>
      	<c:if test="${prd.prd_del == 'Y'}"> <label>[판매 중단]</label> </c:if>
      </div>

      <!-- /.panel-heading -->
      <div class="panel-body">
      
        <div class="form-group">
          <label>코드</label> 
          <input class="form-control" name='prd_kind'
            value='<c:out value="${prd.prd_kind}"/>'readonly="readonly" >
        </div>
        <div class="form-group">
          <label>상품명</label> 
          <input class="form-control" name='prd_name'
            value='<c:out value="${prd.prd_name}"/>'readonly="readonly" >
        </div>

        <div class="form-group">
          <label>제작사</label>
          <input class="form-control"  name='prd_company'
             value="${prd.prd_company}"readonly="readonly">
        </div>

        <div class="form-group">
          <label>원가</label> 
          <input class="form-control" name='prd_cost_price'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_cost_price}" />' readonly="readonly">
        </div>
        <div class="form-group">
          <label>재고</label> 
          <input type="number" min='0' class="form-control" name='prd_inventory'
            value='<c:out value="${prd.prd_inventory}"/>'readonly="readonly" >
        </div>
        <div class="form-group">
          <label>세일기간</label> 
          <input type="date" class="form-control" name='prd_discount_date'
            value='<c:out value="${prd.prd_discount_date}"/>'readonly="readonly">
        </div>
        <div class="form-group">
          <label>세일금액</label>
           <input class="form-control" name='prd_sale_prices'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_sale_prices}" />' readonly="readonly">
        </div>
        <div class="form-group">
          <label>판매금액</label> 
          <input class="form-control" name='prd_amount'
            value='<fmt:formatNumber type = "currency" value="${prd.prd_amount}" />'readonly="readonly" >
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
	        <div class="form-group" >
				<c:forEach var="i" begin="1" end="10">
					<c:set var="t" value="prd_img${i}" />
						<c:if test="${not empty prd[t]}">
							<div style="text-align: center; width: 250px;float: left;">
								<div style="width: 100%;">이미지${i}</div>
								<div style="width: 100%;">
									<a href="/resources/upload/${prd[t]}" target="_blank">
									<img src="/resources/upload/${prd[t]}" id="thumb_${i}" width="200" height="200" style="margin: 25px;"></a>
								</div>
							</div>
				       </c:if>   
				</c:forEach>
			
		</div>
	
		
			

<form id='operForm' action="/admin/product/modify" method="GET">
  <input type='hidden' id='prd' name='prd' value='<c:out value="${prd.prd_idx}"/>'>
  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
</form>

      </div>
      <!--  end panel-body -->
		<div class="form-group" style="margin-left: 15px;">
			<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
			<button type="submit" data-oper='list' class="btn btn-default">List</button>
		</div>
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
      
      <span id ="review" style="padding:10px; color:black;">Review </span>
       <span id="inquiry" style="padding:10px; color:#888888;">Inquiry</span>
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
  <!-- ./ end row -->
</div>



<script type="text/javascript">





	let th_str = "";
$("#review").on("click",function(){
	th_str = "<th>번호</th><th>주문번호</th><th>작성자</th><th>내용</th><th>날짜</th><th>점수</th>";
	$("#review").css({"color":"black"});
	$("#inquiry").css({"color":"#888888"});
	$("#list_show").val("review");
	$(".listHead").html("");
	$(".listHead").html(th_str);
	getList(1);
});

$("#inquiry").on("click",function(){
	th_str = "<th>번호</th><th>작성자</th><th>내용</th><th>날짜</th><th>답장</th><th>상태</th>";
	$("#review").css({"color":"#888888"});
	$("#inquiry").css({"color":"black"});
	$("#list_show").val("inquiry");
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
	console.log("getList ..............");
	let replyUL = $(".chat");
	let ck = $("#list_show").val();
	let _url= "";
	let str="";
	var idx = ${prd.prd_idx};
	var page = pageNum || 1; 
	
	if(ck == "review"){
		_url = "/replies/pages/" + idx + "/" + page;
	}else{
		_url = "/prdInquiry/pages/" + idx + "/" + page;
	}
	$.ajax({
		url:_url,
		dataType:"json",
		success:function(data){
				for (var i = 0, len = data.length || 0; i < len; i++) {
				if(ck == "review"){
				str +="<tr><td class='left clearfix' data-rno='"+data[i].review_idx+"'>"+data[i].review_idx+"</td>";
				str +="<td>"+data[i].order_idx+"</td>";
				str +="<td>"+data[i].member_id+"</td>";
				str +="<td>"+data[i].review_contents+"</td>";
				str +='<td>'+displayTime(data[i].review_date)+'</td>';
				str +="<td>"+data[i].review_point+"</td></tr>";
				}else{
					str +="<tr><td class='left clearfix' data-rno='"+data[i].pi_idx+"'>"+data[i].pi_idx+"</td>";
					str +="<td>"+data[i].member_id+"</td>";
					str +="<td>"+data[i].pi_contents+"</td>";
					str +='<td>'+displayTime(data[i].pi_write_day)+'</td>';
					if(data[i].pi_reply == ""){
						str +='<td>Y</td>';
					}else{
						str +='<td>N</td>';
					}
					
					if(data[i].pi_del == 'Y'){
						str +="<td>삭제</td></tr>";
					}else if(data[i].pi_hidden == 'N'){
						str +="<td>공개</td></tr>";
					}else{
						str +="<td>비공개</td></tr>";
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
	$(".listHead").html("<th>번호</th><th>주문번호</th><th>작성자</th><th>내용</th><th>날짜</th><th>점수</th>");
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
    
    $("#addReplyBtn").on("click", function(e){
		modal.find("input").val("");
		modal.find("input[name='replyer']").val(replyer);
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id !='modalCloseBtn']").hide();
		
		modalRegisterBtn.show();
		$(".modal").modal("show");
    });
    
	// Ajax Spring Security Header
    $(document).ajaxSend(function(e, xhr, options) { 
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
	});
    
    // 댓글 등록
	modalRegisterBtn.on("click",function(e){
      
		let reply = {
			reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
		};
      
		reviewService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        showList(1);
        //showList(-1);
        
      });
      
    });
    
	//댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
		let rno = $(this).data("rno");
		console.log(rno);
		
		reviewService.get(rno, function(reply){
	
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(reviewService.displayTime( reply.replyDate)).attr("readonly","readonly");
			modal.data("rno", reply.rno);
			
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
		});
	});
	

	
	// 댓글 수정 이벤트. security 적용 후
	modalModBtn.on("click", function(e){
		
		let originalReplyer = modalInputReplyer.val();
		
		let reply = {
				rno:modal.data("rno"), 
				reply: modalInputReply.val(),
				replyer: originalReplyer
				};
	  
		if(!replyer){
			alert("로그인후 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}

		console.log("Original Replyer: " + originalReplyer);
		
		if(replyer  != originalReplyer){
			alert("자신이 작성한 댓글만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}
		  
		reviewService.update(reply, function(result){
			alert(result);
			modal.modal("hide");
			showList(1);
		});
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
 	let replyer = null;
    
    <sec:authorize access="isAuthenticated()">
		replyer = '<sec:authentication property="principal.username"/>';   
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
		operForm.attr("action","/admin/product/modify").submit();
	});
    
	$("button[data-oper='list']").on("click", function(e){
    
		operForm.find("#prd").remove();
		operForm.attr("action","/admin/product/list")
		operForm.submit();
    
	});
});


</script>


<%@include file="../includes/footer.jsp"%>
