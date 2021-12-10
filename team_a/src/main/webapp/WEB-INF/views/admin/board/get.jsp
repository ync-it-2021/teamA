<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Board Read   </h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>글번호</label> <input class="form-control" name='bd_idx'
            value='<c:out value="${board.bd_idx }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control" name='bd_title'
            value='<c:out value="${board.bd_title }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>Text area</label>
          <textarea class="form-control" rows="3" name='bd_content'
            readonly="readonly"><c:out value="${board.bd_contents}" /></textarea>
        </div>

        <div class="form-group">
          <label>작성자</label> <input class="form-control" name='member_id'
            value='<c:out value="${board.member_id }"/>' readonly="readonly">
        </div>
        
        <!-- 업로드 이미지나 파일을 출력 -->
        <c:forEach var="i" begin="1" end="5">
			<c:set var="t" value="bd_img${i}" />
				<c:if test="${not empty board[t]}">
					<div class="form-group">
			          <label>이미지${i}</label>
						<a href="/resources/upload/${board[t]}" target="_blank">
						<img src="/resources/upload/${board[t]}" id="thumb_${i}" width="200" height="200"></a>
			        </div>
			        <script>
			        //document.getElementById('thumb_${i}').src="/resources/upload/" + getThumbFileName('${board[t]}');
					</script>
		        </c:if>
		</c:forEach>

	<sec:authentication property="principal" var="pinfo"/>
	<sec:authorize access="isAuthenticated()">
		<c:if test="${pinfo.username eq board.member_id}">
			<button data-oper='modify' class="btn btn-default">Modify</button>
		</c:if>
	</sec:authorize>

<button data-oper='list' class="btn btn-info">List</button>

<form id='operForm' action="/admin/boad/modify" method="get">
  <input type='hidden' id='bd' name='bd' value='<c:out value="${board.bd_idx}"/>'>
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
        <i class="fa fa-comments fa-fw"></i> Reply
      </div>      
      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
      
      	<!-- 댓글 목록 출력 부분 -->
        <ul class="chat">

        </ul>
        <!-- ./ end ul -->
      </div>
      <!-- /.panel .chat-panel -->

	<div class="panel-footer">
	
		<div class="panel-body">        
		<sec:authentication property="principal.username" var="user_id"/>
					<textarea id="comment_bar" class="form-control" rows="2" style="resize: none;" placeholder="답글작성"></textarea>
					<button id="comment_write" class="btn btn-info">작성하기</button>
	     	 </div>
	
	   		
	    
	     	 
	     	 
	</div>
		 
		</div>
  </div>
  <!-- ./ end row -->
</div>


<script type="text/javascript">

let header = '${_csrf.headerName}';
let token = '${_csrf.token}';

//날짜 포맷 변환
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
function getList(replyUL) {
console.log("getList ..............");
let str="";
var idx = ${board.bd_idx};
	$.ajax({
		url:"/comment/pages/"+idx,
		dataType:"json",
		success:function(list){
				for (var i = 0, len = list.length || 0; i < len; i++) {
					
					str +="<li class='left clearfix' >";
					str +="  <div id='chat"+i+"'><div class='header'><strong class='primary-font'>["
						+ list[i].cm_idx+"] "+list[i].member_id; 
						if(list[i].cm_del =='Y'){
							str +="<b style='color : red'>[삭제됨]</b></strong>";
						}
					str +="<small class='pull-right text-muted'>"
						+ displayTime(list[i].cm_date)+"</small>";
						if(list[i].cm_del =='N'){
						 <sec:authorize access="isAuthenticated()">
							if('<sec:authentication property="principal.username"/>' === list[i].member_id){
								str +="<small data-action='up' data-idx='"+list[i].cm_idx+"' data-member='"+list[i].member_id+"' data-contents='"+list[i].cm_contents+"'>[수정]</small>"
								+"<small data-action='del' data-idx='"+list[i].cm_idx+"'data-member='"+list[i].member_id+"'>[삭제]</small>";
							}
						</sec:authorize>
						}
						str +="</div><p>"+list[i].cm_contents;
						
						if(list[i].cm_hidden == "Y" ){
							alert(list[i].cm_hidden);
							str +="[숨김]";
						}
						
						str +="</p></div></li>"
					}
				
				replyUL.html(str);
		},
		error:function(request, status, error ){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	
	}
	
	});
}

/*댓글 등록  */
function add(commentMd, callback, error) {
	// ajax를 사용하여 DB에 데이터를 저장할 때 필요한 csrf코드 설정  
	
	console.log("add reply...............");
	$.ajax({
		type : 'post',
		url : '/comment/new',
		data : JSON.stringify(commentMd), // JavaScript 값이나 객체를 JSON 문자열로 변환
		contentType : "application/json; charset=utf-8",
		//실행할때 시큘리티에 문제가 되지 않도록 csrf코드추가
		beforeSend : function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success : function(result, status, xhr) { // (Anything data(서버에서 받은 data), String textStatus, jqXHR jqXHR )
			if (callback) {
				callback(result);
			}
		},
		error : function(xhr, status, err) {
			if (error) {
				// error 발생 시 응답 메세지와 err code를 alert 시킨다. 
				error(xhr.responseText, xhr.status);
			}
		}
	});
}

//댓글 삭제
function remove(cm_idx, member_id, callback, error) {
	  
	console.log("--------------------------------------");  
	console.log(JSON.stringify({cm_idx:cm_idx,  member_id: member_id}));  
	    
	$.ajax({
		type : 'delete',
		url : '/comment/' + cm_idx,
		data:  JSON.stringify({cm_idx:cm_idx,  member_id: member_id}),
		contentType: "application/json; charset=utf-8",
		beforeSend : function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success : function(deleteResult, status, xhr) {
			if (callback) {
				callback(deleteResult);
			}
		},
		error : function(xhr, status, err) {
			if (error) {
				error(err);
			}
		}
	});
}

// 댓글 수정
function update(comment, callback, error) {

	console.log("RNO: " + comment.cm_idx);

	$.ajax({
		type : 'put',
		url : '/comment/' + comment.cm_idx,
		data : JSON.stringify(comment), // JavaScript 값이나 객체를 JSON 문자열로 변환
		contentType : "application/json; charset=utf-8",
		beforeSend : function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success : function(result, status, xhr) {
			if (callback) {
				callback(result);
			}
		},
		error : function(xhr, status, err) {
			if (error) {
				error(err);
			}
		}
	});
}

$(document).ready(function () {
	let bnoValue = '<c:out value="${board.bd_idx}"/>';
	let replyUL = $(".chat");
	getList(replyUL);
	
	
	
});

$("#comment_write").on("click",function(){
	
	let	cm_contents = $("#comment_bar").val();
	let commentMd = {bd_idx:${board.bd_idx},
					cm_contents:cm_contents,
					member_id:'${user_id}'};
	
	console.log(commentMd);
	add(commentMd,function(result){
        
        console.log(result);
        
        $("#comment_bar").val("");
        
        getList($(".chat"));

        });
});

$(".chat").on("click","small",function(e){

	let	cmAction = $(this).data("action") ;
	let	cmIdx = $(this).data("idx") ;
	let	cmMember = $(this).data("member") ;

	console.log(cmAction);
	
	if(cmAction === 'up'){
		let	text_box = $(this).data("box") ;
		let	cmContents = $(this).data("contents") ;

		var new_contents = prompt("수정 내용을 적어주세요",cmContents);
		
		update({cm_idx:cmIdx, cm_contents:new_contents, member_id:cmMember},function(count){if(count ==="success"){
			alert(count);
		}},function(err){alert(err);
		});
		
		getList($(".chat"));
		// 수정
	}else{
		if(confirm("삭제하겠습니까?") == true){
			remove(cmIdx,cmMember,function(count){
				console.log(count);
				if(count ==="success"){
					alert("삭제되었습니다.");
				}
			}, function(err){
				alert('실패하였습니다.');
			});
			//삭제
			 getList($(".chat"));
		}
	}

});



</script>

<script type="text/javascript">

function replaceEscapeStr(str) {
	return str.replace("\\","\\\\");
}
$(document).ready(function() {
	let operForm = $("#operForm");
	$("button[data-oper='modify']").on("click", function(e){
		operForm.attr("action","/admin/board/modify").submit();
	});
	$("button[data-oper='list']").on("click", function(e){   
		operForm.find("#bd").remove();
		operForm.attr("action","/admin/board/list")
		operForm.submit();
	});
});
</script>


<%@include file="../includes/footer.jsp"%>
