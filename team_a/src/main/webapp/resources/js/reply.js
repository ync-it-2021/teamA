
console.log("Reply Module........");

var reviewService = (function() {

	// 댓글 추가
	function add(reply, callback, error) {
		console.log("add reply...............");

		$.ajax({
			type : 'post',
			url : '/review/new',
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
		
		var idx = param.prd_idx;
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
	

	// 댓글 삭제. security 적용 후
	function remove(rno, replyer, callback, error) {
		  
		console.log("--------------------------------------");  
		console.log(JSON.stringify({rno:rno, replyer:replyer}));  
		    
		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			data:  JSON.stringify({rno:rno, replyer:replyer}),
			contentType: "application/json; charset=utf-8",
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
	function update(reply, callback, error) {

		console.log("RNO: " + reply.rno);

		$.ajax({
			type : 'put',
			url : '/replies/' + reply.rno,
			data : JSON.stringify(reply), // JavaScript 값이나 객체를 JSON 문자열로 변환
			contentType : "application/json; charset=utf-8",
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
})();