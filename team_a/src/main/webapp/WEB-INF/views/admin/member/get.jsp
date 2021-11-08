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
          <label>ID  :  </label><c:out value="${member.member_id }"/>
          <input type ="hidden"class="form-control" name='member_id' value='<c:out value="${member.member_id }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>NAME  :  </label><c:out value="${member.member_name }"/>
           <input type ="hidden" class="form-control" name='member_name'value='<c:out value="${member.member_name }"/>' readonly="readonly">
        </div>
        
        <div class="form-group">
          <label>PASSWORD  :  </label><c:out value="${member.member_pass }"/>
           <input type ="hidden" class="form-control" name='member_pass'value='<c:out value="${member.member_pass }"/>' readonly="readonly">
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
          <label>등록일  :  </label><c:out value="${member.member_birthday }"/>
           <input type ="hidden" class="form-control" name='member_birthday'value='<c:out value="${member.member_birthday }"/>' readonly="readonly">
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
<!--       <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
      </div> -->
      
      <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
        <!-- <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button> -->
        <sec:authorize access="isAuthenticated()">
	        <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
        </sec:authorize>
      </div>      
      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
      
      	<!-- 댓글 목록 출력 부분 -->
        <ul class="chat">

        </ul>
        <!-- ./ end ul -->
      </div>
      <!-- /.panel .chat-panel -->

	<div class="panel-footer"></div>


		</div>
  </div>
  <!-- ./ end row -->
</div>



	<!-- 댓글 Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
		                <label>Reply</label> 
		                <input class="form-control" name='reply' value='New Reply!!!!'>
					</div>      
					<div class="form-group">
						<label>Replyer</label> 
						<input class="form-control" name='replyer' value='replyer'>
					</div>
					<div class="form-group">
						<label>Reply Date</label> 
						<input class="form-control" name='replyDate' value='2018-01-01 13:13'>
					</div>
				</div>
				
				<div class="modal-footer">
					<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
					<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
					<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
					<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
        <!-- /.modal-dialog -->
	</div>
	<!-- /댓글 modal -->
      
<script type="text/javascript" src="/resources/js/reply.js?v=1.0"></script>

<script type="text/javascript">
$(document).ready(function () {
	  
	let bnoValue = '<c:out value="${member.member_id}"/>';
	let replyUL = $(".chat");
	  
	showList(1);
	
	// 댓글 목록을 출력하는 함수
	function showList(page){
		
		// console.log("show list " + page);
	    
		replyService.getList({bno:bnoValue, page: page|| 1 }, function(list) {
	      
		    // console.log("replyCnt: "+ replyCnt );
		    // console.log("list: " + list);
		    // console.log(list);
	    	
			let str="";
	     
			if(list == null || list.length == 0){
				replyUL.html("");
				return;
			}
	     
			for (var i = 0, len = list.length || 0; i < len; i++) {
				str +="<li class='left clearfix' data-rno='"+list[i].rno+"'>";
				str +="  <div><div class='header'><strong class='primary-font'>["
					+ list[i].rno+"] "+list[i].replyer+"</strong>"; 
				str +="    <small class='pull-right text-muted'>"
					+ replyService.displayTime(list[i].replyDate)+"</small></div>";
				str +="    <p>"+list[i].reply+"</p></div></li>";
			}
	     
			replyUL.html(str);
	     
			//showReplyPage(replyCnt);

	 
		});//end function
	     
	}//end showList
	
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
      
		replyService.add(reply, function(result){
        
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
		
		replyService.get(rno, function(reply){
	
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime( reply.replyDate)).attr("readonly","readonly");
			modal.data("rno", reply.rno);
			
			modal.find("button[id !='modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
		});
	});
	
	// 댓글 수정 이벤트
	/*
	modalModBtn.on("click", function(e){
    
		var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
    
		replyService.update(reply, function(result){
          
			alert(result);
			modal.modal("hide");
			showList(1);
		});
	});
	*/
	
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
		  
		replyService.update(reply, function(result){
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
	   	  
		replyService.remove(rno, originalReplyer, function(result){
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
