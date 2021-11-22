<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>
<script>
var reviewService = (function() {

	// 댓글 추가
	function add(reply, callback, error) {
		console.log("add reply...............");

		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(reply), // JavaScript 값이나 객체를 JSON 문자열로 변환
			contentType : "application/json; charset=utf-8",
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
	
	// 댓글 목록
	function getList(param, callback, error) {
		console.log("getList reply..............");
		
		var idx = param.idx;
		var page = param.page || 1; // param.page 가 null 이면 1로 설정 
		
		$.getJSON("/replies/pages/" + idx + "/" + page + ".json", function(data) {
			if (callback) {
				callback(data);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error(xhr.responseText, xhr.status);
			}
		});

	}
	
	// 댓글 조회
	function get(rno, callback, error) {

		$.get("/replies/" + rno + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
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

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}

	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get, 
		displayTime : displayTime
	};
	
	//return {name:"aaaa"}
})();


</script>

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
          <input class="form-control" rows="3" name='prd_company'
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
        <div class="form-group"  >
        <table>

			<c:forEach var="i" begin="1" end="10">
				<c:set var="t" value="prd_img${i}" />
					<c:if test="${not empty prd[t]}">
						<c:if test="${i % 6 == 0}">
						<tr>
						</c:if>
						<td>
							<table>
								<tr style="text-align: center;"> 
									<td>이미지${i}</td>
								</tr>
								<tr>
									<td>
									<a href="/resources/upload/${prd[t]}" target="_blank">
									<img src="/resources/upload/${prd[t]}" id="thumb_${i}" width="200" height="200" style="margin: 25px;"></a>
									</td>
								</tr>
							</table>
						</td>
						<c:if test="${i % 5 == 0}">
						</tr>
						</c:if>
			       </c:if>   
			</c:forEach>
		</table>
		</div>
	
		<div>
			<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
			<button type="submit" data-oper='list' class="btn btn-default">List</button>
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
      </div>      
      
      
      <!-- /.panel-heading -->
      <div class="panel-body">        
      
      	<!-- 댓글 목록 출력 부분 -->
      	<table border="1px">
      	<thead>
      	<th>번호</th>
      	<th>작성자</th>
      	<th>내용</th>
      	<th>주문번호</th>
      	<th>날짜</th>
      	<th>점수</th>
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
$(document).ready(function () {
	  
	let idxValue = '<c:out value="${prd.prd_idx}"/>';
	let reviewUL = $(".chat");
	  
	showList(1);
	
	// 댓글 목록을 출력하는 함수
	function showList(page){
		
		// console.log("show list " + page);
	    
		reviewService.getList({idx:idxValue, page: page|| 1 }, function(list) {
	      
		    // console.log("replyCnt: "+ replyCnt );
		    // console.log("list: " + list);
		    // console.log(list);
	    	
			let str="";
	     
			if(list == null || list.length == 0){
				reviewUL.html("");
				return;
			}
	     
			for (var i = 0, len = list.length || 0; i < len; i++) {
				str +=" <tr data-rno='"+list[i].review_idx+"'>";
				str +=" <td>" + list[i].review_idx+"</td>";
				str +=" <td>" + list[i].member_id + "</td>"; 
				str +="	<td>" + list[i].order+idx+"</td>";
				str +=" <td>" + list[i].review_contents + "</td>"; 
				str +=" <td>" + reviewService.displayTime(list[i].review_date)+ "</td>"; 
				str +=" <td>" + list[i].review_point+"</td></tr>";
			}
	     
			reviewUL.html(str);
	     
			//showReplyPage(replyCnt);

	 
		});//end function
	     
	}//end showList
	
	
	 
});//end function
	


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
