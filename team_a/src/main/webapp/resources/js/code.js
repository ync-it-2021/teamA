function make_select_code(choice,choice_array,name,class_name,add,wid,minusTag,minus,d_val,write_doc) //객체,배열,이름,클래스명,추가내용,가로크기,추가함수(select는 빠짐, radio,checkbox는 함수추가),특정데이타 선택,선택값,document.write 하지 않는다.
{
	rValue = new Array()
		field_name = (name==undefined || name=="") ? choice_array : name
		add_style = (!(wid==undefined || wid=="")) ? "width:" + wid : ""
	if (choice=="select") {
		
		if (minusTag==undefined || minusTag=="") {
			if (class_name==undefined || class_name=="") {
				rValue.push('<select id="'+ field_name +'" name="'+ field_name +'">')
			} else {
				rValue.push('<select id="'+ field_name +'" name="'+ field_name +'" class="'+class_name+'">')
			}
		}

		if (!(add==undefined || add=="")) rValue.push('<option value="'+add.split("^")[0]+'" selected>'+add.split("^")[1]+'</option>')

		this_array = eval(choice_array)

		for (var i=0 ; i<this_array.length ; i++) {
			if (this_array[i][1].indexOf("0000")>0) {
				if (minus==undefined || minus=="") {
					rValue.push('<optgroup label="■ '+ this_array[i][0] +'"></optgroup>')
				}
			} else {
				if (minus==undefined || minus=="") {
					rValue.push('<option value="'+ this_array[i][1] +'"')
				} else {
					for (var ii=2 ; ii<this_array[i].length ; ii++) if (this_array[i][ii]==minus) rValue.push('<option value="'+ this_array[i][1] +'"')
				}
				if (!(d_val==undefined || d_val=="") && d_val==this_array[i][1]) rValue.push(' selected')
				if (minus==undefined || minus=="") {
					rValue.push('>'+this_array[i][0]+'</option>')
				} else {
					for (var ii=2 ; ii<this_array[i].length ; ii++) if (this_array[i][ii]==minus) rValue.push('>'+this_array[i][0]+'</option>')
				}
			}
		}

		rValue.push('</select>')
		if (write_doc==undefined || write_doc=="") {
			document.writeln (rValue.join(""))
		} else {
			return rValue.join("")
		}

	} else if (choice=="checkbox") {

		field_name = (name==undefined || name=="") ? choice_array : name

		if (add!=undefined && add!="") {
			rValue.push('<span style="white-space:nowrap"><input type="checkbox" onclick="change_chk_color(this)')
			if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
			rValue.push('" name="'+field_name+'" name="'+field_name+'" class="'+class_name+'" value="'+add.split("^")[0]+'" id="'+field_name+'"><label for="'+field_name+'" style="cursor:pointer;'+ add_style +'">'+add.split("^")[1]+'</label></span> ')
		}

		this_array = eval(choice_array)
		for (var i=0 ; i<this_array.length ; i++) {
			if (minus==undefined || minus=="") {
				rValue.push('<span style="white-space:nowrap"><input type="checkbox" onclick="change_chk_color(this)')
				if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
				rValue.push('" name="'+field_name+'" class="'+class_name+'" value="'+this_array[i][1]+'" id="'+(field_name+"^"+i)+'"')
			} else {
				for (var ii=2 ; ii<this_array[i].length ; ii++) {
					if (this_array[i][ii]==minus) {
						rValue.push('<span style="white-space:nowrap"><input type="checkbox" onclick="change_chk_color(this)')
						if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
						rValue.push('" name="'+field_name+'" class="'+class_name+'" value="'+this_array[i][1]+'" id="'+(field_name+"^"+i)+'"')
					}
				}
			}
			if (!(d_val==undefined || d_val=="") && d_val==this_array[i][1]) rValue.push(' checked')
			if (minus==undefined || minus=="") {
				rValue.push('><label for="'+(field_name+"^"+i)+'" style="cursor:pointer;'+ add_style +'">'+this_array[i][0]+'</label></span> ')
			} else {
				for (var ii=2 ; ii<this_array[i].length ; ii++) if (this_array[i][ii]==minus) rValue.push('><label for="'+(field_name+"^"+i)+'" style="cursor:pointer;'+ add_style +'">'+this_array[i][0]+'</label></span> ')
			}
		}

		if (write_doc) {
			return rValue.join("")
		} else {
			document.writeln (rValue.join(""))
		}

	} else if (choice=="radio") {

		field_name = (name==undefined || name=="") ? choice_array : name

		if (add!=undefined && add!="") {
			rValue.push('<span style="white-space:nowrap"><input type="radio" onclick="change_chk_color(this)')
			if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
			rValue.push('" name="'+field_name+'" class="'+class_name+'" value="'+add.split("^")[0]+'" checked id="'+field_name+'"><label for="'+field_name+'" style="cursor:pointer;'+ add_style +'">'+add.split("^")[1]+'</label></span> ')
		}

		this_array = eval(choice_array)
		for (var i=0 ; i<this_array.length ; i++) {
			if (minus==undefined || minus=="") {
				rValue.push('<span style="white-space:nowrap"><input type="radio" onclick="change_chk_color(this)')
				if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
				rValue.push('" name="'+field_name+'" class="'+class_name+'" value="'+this_array[i][1]+'" id="'+(field_name+"^"+i)+'"')
			} else {
				for (var ii=2 ; ii<this_array[i].length ; ii++) {
					if (this_array[i][ii]==minus) {
						rValue.push('<span style="white-space:nowrap"><input type="radio" onclick="change_chk_color(this)')
						if (!(minusTag==undefined || minusTag=="")) rValue.push(';nextCodeFnc(this.value)"')
						rValue.push('" name="'+field_name+'" class="'+class_name+'" value="'+this_array[i][1]+'" id="'+(field_name+"^"+i)+'"')
					}
				}
			}
			if (!(d_val==undefined || d_val=="") && d_val==this_array[i][1]) rValue.push(' checked')
			if (minus==undefined || minus=="") {
				rValue.push('><label for="'+(field_name+"^"+i)+'" style="cursor:pointer;'+ add_style +'">'+this_array[i][0]+'</label></span> ')
			} else {
				for (var ii=2 ; ii<this_array[i].length ; ii++) {
					if (this_array[i][ii]==minus) rValue.push('><label for="'+(field_name+"^"+i)+'" style="cursor:pointer;'+ add_style +'">'+this_array[i][0]+'</label></span> ')
				}
			}
		}

		if (write_doc) {
			return rValue.join("")
		} else {
			document.writeln (rValue.join(""))
		}
	}
}

function view_name(choice_array,val,write_doc,divide,view_divide) {
	this_array = eval(choice_array)
	if (divide) {
		this_value = val.split(divide)
	} else {
		this_value = val.split(", ")
	}
	returnValue = ""

	if (view_divide!=undefined) if (val==view_divide.split("^")[0]) returnValue=view_divide.split("^")[1]

	for (var h=0 ; h<this_value.length ; h++) {
		for (var i=0 ; i<this_array.length ; i++) {
			if (this_array[i][1]==this_value[h]) {
				if (!(h==0 || returnValue=="")) {
					if (divide) {
						returnValue = returnValue + divide
					} else {
						returnValue = returnValue + ", "
					}
				}
				returnValue = returnValue + this_array[i][0]
			}
		}
	}
	if (returnValue=="") returnValue="-"
	if (write_doc==undefined || write_doc=="") {
		return returnValue
	} else {
		document.write (returnValue)
	}
}

function make_choice_code(choice_array,name,func) {
	field_name = (name==undefined || name=="") ? choice_array : name

	rValue = new Array()
	rValue.push("<div>")

	this_array = eval(choice_array)
	for (var i=0 ; i<this_array.length ; i++) {
		if (this_array[i][1].indexOf("00")>0) {
			if (func) {
				rValue.push('</div><span style="white-space:nowrap;cursor:pointer;font-weight:bold" onclick=make_choice_fnc("'+ name + this_array[i][1] +'");'+ func +'>■ '+this_array[i][0]+'</span><br><div id="search_' + name + this_array[i][1] +'" name="search_' + name + this_array[i][1] +'" style="display:none">')
			} else {
				rValue.push('</div><span style="white-space:nowrap;cursor:pointer;font-weight:bold" onclick=make_choice_fnc("'+ name + this_array[i][1] +'")>■ '+this_array[i][0]+'</span><br><div id="search_'+ name + this_array[i][1] +'" name="search_'+ name + this_array[i][1] +'" style="display:none">')
			}
		} else {
			if (func) {
				rValue.push('<span style="white-space:nowrap"><input type="checkbox" onclick="change_chk_color(this);'+ func +'" name="'+field_name+'" class="null" value="'+this_array[i][1]+'" id="'+(field_name+i)+'"><label for="'+(field_name+i)+'" style="cursor:pointer">'+this_array[i][0]+'</label>&nbsp;</span>')
			} else {
				rValue.push('<span style="white-space:nowrap"><input type="checkbox" onclick="change_chk_color(this)" name="'+field_name+'" class="null" value="'+this_array[i][1]+'" id="'+(field_name+i)+'"><label for="'+(field_name+i)+'" style="cursor:pointer">'+this_array[i][0]+'</label>&nbsp;</span>')
			}
		}
	}
	document.writeln (rValue.join(""))
}

function make_choice_fnc(val) {
	if (document.getElementById("search_" + val).style.display=="") {
		document.getElementById("search_" + val).style.display="none"
	} else {
		document.getElementById("search_" + val).style.display=""
	}
}

function changeServerAt(val) {
	serverValue = new Array()
	for (var thisC=0 ; thisC<val.length ; thisC++) {
		serverValue[thisC] = val[thisC][0] +"//"+ val[thisC][1] 
	}
	return serverValue
}



manage_marriage = new Array()
manage_marriage.push(new Array("미혼","n"))
manage_marriage.push(new Array("기혼","y"))

manage_emploee = new Array()
manage_emploee.push(new Array("직원","y"))
manage_emploee.push(new Array("퇴사","n"))
manage_emploee.push(new Array("대기","x"))

manage_duty = new Array()
manage_duty.push(new Array("회장","0"))
manage_duty.push(new Array("사장","1"))
manage_duty.push(new Array("부사장","2"))
manage_duty.push(new Array("전무","14")) //마지막 할당
manage_duty.push(new Array("상무","11"))
manage_duty.push(new Array("이사","3"))
manage_duty.push(new Array("부장","4"))
manage_duty.push(new Array("차장","5"))
manage_duty.push(new Array("과장","6"))
manage_duty.push(new Array("대리","7"))
manage_duty.push(new Array("주임","12"))
manage_duty.push(new Array("사원","8"))
manage_duty.push(new Array("심사관리자","9"))
manage_duty.push(new Array("협력자","10"))
manage_duty.push(new Array("3pl담당","13"))


moon = new Array()
moon.push(new Array("양력","1"))
moon.push(new Array("음력","2"))

sex = new Array()
sex.push(new Array("남","1"))
sex.push(new Array("여","2"))

petGubun = new Array()
petGubun.push(new Array("강아지","1"))
petGubun.push(new Array("고양이","2"))
petGubun.push(new Array("기타","0"))

yesOrNo = new Array()
yesOrNo.push(new Array("예","y"))
yesOrNo.push(new Array("아니오","n"))


membership = new Array()
membership.push(new Array("멤버쉽","Y"))
membership.push(new Array("일반","N"))

mem_gubun = new Array()
mem_gubun.push(new Array("일반","1"))
mem_gubun.push(new Array("체험단","3"))


title_location = new Array()
title_location.push(new Array("◁ Front","1","chk"))
title_location.push(new Array("Back ▷","2","chk"))
title_location.push(new Array("노출없음","3","chk"))
title_location.push(new Array("타사몰","4"))
title_location.push(new Array("그룹","5"))


userrank = new Array()
userrank.push(new Array("신규 펫팸","1","chk"))
userrank.push(new Array("초대권","6"))
userrank.push(new Array("일반 펫팸","7","chk"))
userrank.push(new Array("우수 펫팸","8","chk"))
userrank.push(new Array("VIP 펫팸","9","chk"))
userrank.push(new Array("1% 펫팸","10","chk"))
userrank.push(new Array("GUEST","99"))

tel = new Array()
tel.push(new Array("02 (서울)","02"))
tel.push(new Array("032 (인천)","032"))
tel.push(new Array("042 (대전)","042"))
tel.push(new Array("062 (광주)","062"))
tel.push(new Array("053 (대구)","053"))
tel.push(new Array("052 (울산)","052"))
tel.push(new Array("051 (부산)","051"))
tel.push(new Array("031 (경기)","031"))
tel.push(new Array("033 (강원도)","033"))
tel.push(new Array("043 (충북)","043"))
tel.push(new Array("041 (충남)","041"))
tel.push(new Array("063 (전북)","063"))
tel.push(new Array("061 (전남)","061"))
tel.push(new Array("054 (경북)","054"))
tel.push(new Array("055 (경남)","055"))
tel.push(new Array("064 (제주도)","064"))
tel.push(new Array("070 (인터넷)","070"))
tel.sort()

handphone = new Array()
handphone.push(new Array("010","010"))
handphone.push(new Array("011","011"))
handphone.push(new Array("016","016"))
handphone.push(new Array("017","017"))
handphone.push(new Array("018","018"))
handphone.push(new Array("019","019"))
handphone.push(new Array("050","050"))
handphone.push(new Array("0502","0502"))
handphone.push(new Array("0503","0503"))
handphone.push(new Array("0504","0504"))
handphone.push(new Array("0505","0505"))
handphone.push(new Array("0507","0507"))
handphone.push(new Array("0508","0508"))
handphone.push(new Array("070","070"))

//위에 tel, handphone은 아래것으로 대처하고 삭제할것.2018-10-11
allphone = new Array()
allphone.push(new Array("010","010","handphone"))
allphone.push(new Array("011","011","handphone"))
allphone.push(new Array("016","016","handphone"))
allphone.push(new Array("017","017","handphone"))
allphone.push(new Array("018","018","handphone"))
allphone.push(new Array("019","019","handphone"))
allphone.push(new Array("050","050","handphone"))
allphone.push(new Array("0502","0502","handphone"))
allphone.push(new Array("0503","0503","handphone"))
allphone.push(new Array("0504","0504","handphone"))
allphone.push(new Array("0505","0505","handphone"))
allphone.push(new Array("0507","0507","handphone"))
allphone.push(new Array("0508","0508","handphone"))
allphone.push(new Array("02 (서울)","02","tel"))
allphone.push(new Array("032 (인천)","032","tel"))
allphone.push(new Array("042 (대전)","042","tel"))
allphone.push(new Array("062 (광주)","062","tel"))
allphone.push(new Array("053 (대구)","053","tel"))
allphone.push(new Array("052 (울산)","052","tel"))
allphone.push(new Array("051 (부산)","051","tel"))
allphone.push(new Array("031 (경기)","031","tel"))
allphone.push(new Array("033 (강원도)","033","tel"))
allphone.push(new Array("043 (충북)","043","tel"))
allphone.push(new Array("041 (충남)","041","tel"))
allphone.push(new Array("063 (전북)","063","tel"))
allphone.push(new Array("061 (전남)","061","tel"))
allphone.push(new Array("054 (경북)","054","tel"))
allphone.push(new Array("055 (경남)","055","tel"))
allphone.push(new Array("064 (제주도)","064","tel"))
allphone.push(new Array("070 (인터넷)","070","tel"))

money_use = new Array()
money_use.push(new Array("소득공제용","1"))
money_use.push(new Array("지출증빙용","2"))
money_use.push(new Array("받지않음","3"))

coupon_target = new Array()
coupon_target.push(new Array("<font color='red'>정상가</font>","1"))
coupon_target.push(new Array("<font color='blue'>판매가</font>","2"))

coupon_month = new Array()
coupon_month.push(new Array("유효기간을 따름","0"))
coupon_month.push(new Array("1개월 이내","1"))
coupon_month.push(new Array("3개월 이내","3"))
coupon_month.push(new Array("6개월 이내","6"))
coupon_month.push(new Array("1년 이내","12"))
coupon_month.push(new Array("무한","120"))

coupon_site = new Array()
coupon_site.push(new Array("전체","1"))
coupon_site.push(new Array("어플","2"))

payresult_arr = new Array()
payresult_arr.push(new Array("결제대기","0","chk"))
payresult_arr.push(new Array("사용자완료","8","chk"))
payresult_arr.push(new Array("결제완료","9","chk"))
payresult_arr.push(new Array("환급완료","10","chk"))

paymode_arr = new Array()
paymode_arr.push(new Array("카드결제","1","chk"))
paymode_arr.push(new Array("무통장입금","3","chk"))
paymode_arr.push(new Array("정산처리","4"))
paymode_arr.push(new Array("에스크로","5","chk"))
paymode_arr.push(new Array("0원 결제","6"))
paymode_arr.push(new Array("휴대폰결제","8", "chk"))
paymode_arr.push(new Array("무통장입금(가상계좌)","10","chk"))

delivery = new Array()
delivery.push(new Array("결제대기","1","chk"))
delivery.push(new Array("결제완료","2","chk"))
delivery.push(new Array("상품준비","8","chk"))
delivery.push(new Array("발송준비","3","chk"))
delivery.push(new Array("발송준비(일부)","4"))
delivery.push(new Array("발송완료(일부)","5"))
delivery.push(new Array("발송완료","6","chk"))
delivery.push(new Array("발송완료(퀵)","7","chk"))
delivery.push(new Array("주문취소","99"))

pointPart = new Array()
pointPart.push(new Array("적립(+)","적립"))
pointPart.push(new Array("사용(-)","사용"))
pointPart.push(new Array("재적립(+)","재적립"))
pointPart.push(new Array("주문취소(-)","주문취소"))
pointPart.push(new Array("차감(-)","차감"))

pointGubun = new Array()
pointGubun.push(new Array("브랜드","0"))

bank_name = new Array()
bank_name.push(new Array("입금내역없음","입금내역없음"))
bank_name.push(new Array("국민은행","국민은행"))
bank_name.push(new Array("기업은행","기업은행"))
bank_name.push(new Array("농협","농협"))
bank_name.push(new Array("우리은행","우리은행"))
bank_name.push(new Array("우체국","우체국"))
bank_name.push(new Array("외환은행","외환은행"))
bank_name.push(new Array("산업은행","산업은행"))
bank_name.push(new Array("신한은행","신한(구 조흥)은행"))
bank_name.push(new Array("씨티은행","씨티은행"))
bank_name.push(new Array("제일은행","제일은행"))
bank_name.push(new Array("하나은행","하나은행"))
bank_name.push(new Array("한미은행","한미은행"))

job = new Array()
job.push(new Array("가정 주부","1"))
job.push(new Array("고객 서비스/지원","2"))
job.push(new Array("공무원/군인","3"))
job.push(new Array("교육/훈련","4"))
job.push(new Array("무직","5"))
job.push(new Array("상업/기술직","6"))
job.push(new Array("엔지니어링","7"))
job.push(new Array("연구 및 개발","8"))
job.push(new Array("영업/마케팅/광고","9"))
job.push(new Array("자유업/자영업","10"))
job.push(new Array("전문직(의사, 변호사 등)","11"))
job.push(new Array("정년 퇴직","12"))
job.push(new Array("제조/생산/기능직","13"))
job.push(new Array("총무/관리","14"))
job.push(new Array("컨설팅","15"))
job.push(new Array("컴퓨터 관련(기타)","16"))
job.push(new Array("컴퓨터 관련(인터넷)","17"))
job.push(new Array("학생","18"))
job.push(new Array("행정/경영","19"))
job.push(new Array("회계/재무","20"))
job.push(new Array("기타","21"))

bankname = new Array()
bankname.push(new Array("우리은행 : 1005-903-231242 (주)쁘띠엘린","1"))
bankname.push(new Array("신한은행 : 140-011-804260 (주)쁘띠엘린","2"))
bankname.push(new Array("국민은행 : 547801-04-177204 (주)쁘띠엘린","3"))
bankname.push(new Array("농협 : 301-0214-9379-71 (주)쁘띠엘린","4"))


bankname2 = new Array()
bankname2.push(new Array("한국산업은행", "02"))
bankname2.push(new Array("기업은행", "03"))
bankname2.push(new Array("국민은행", "04"))
bankname2.push(new Array("하나은행", "05"))
bankname2.push(new Array("국민은행", "06"))
bankname2.push(new Array("수협중앙회", "07"))
bankname2.push(new Array("농협중앙회", "11"))
bankname2.push(new Array("단위농협", "12"))
bankname2.push(new Array("축협중앙회", "16"))
bankname2.push(new Array("우리은행", "20"))
bankname2.push(new Array("구 조흥은행", "21"))
bankname2.push(new Array("상업은행", "22"))
bankname2.push(new Array("SC 제일은행", "23"))
bankname2.push(new Array("한일은행", "24"))
bankname2.push(new Array("서울은행", "25"))
bankname2.push(new Array("구 신한은행", "26"))
bankname2.push(new Array("한국씨티은행", "27"))
bankname2.push(new Array("대구은행", "31"))
bankname2.push(new Array("부산은행", "32"))
bankname2.push(new Array("광주은행", "34"))
bankname2.push(new Array("제주은행", "35"))
bankname2.push(new Array("전북은행", "37"))
bankname2.push(new Array("강원은행", "38"))
bankname2.push(new Array("경남은행", "39"))
bankname2.push(new Array("비씨카드", "41"))
bankname2.push(new Array("새마을금고", "45"))
bankname2.push(new Array("신용협동조합중앙회", "48"))
bankname2.push(new Array("상호저축은행", "50"))
bankname2.push(new Array("한국씨티은행", "53"))
bankname2.push(new Array("홍콩상하이은행", "54"))
bankname2.push(new Array("도이치은행", "55"))
bankname2.push(new Array("ABN암로", "56"))
bankname2.push(new Array("JP모건", "57"))
bankname2.push(new Array("미쓰비시도쿄은행", "59"))
bankname2.push(new Array("BOA(Bank of America)", "60"))
bankname2.push(new Array("산림조합", "64"))
bankname2.push(new Array("신안상호저축은행", "70"))
bankname2.push(new Array("우체국", "71"))
bankname2.push(new Array("하나은행", "81"))
bankname2.push(new Array("평화은행", "83"))
bankname2.push(new Array("신세계", "87"))
bankname2.push(new Array("신한 통합 은행", "88"))
bankname2.push(new Array("케이뱅크", "89"))
bankname2.push(new Array("카카오뱅크", "90"))



csGubun = new Array()
csGubun.push(new Array("주문","10000"))
csGubun.push(new Array("주문취소","1","chk"))
csGubun.push(new Array("교환요청","6","chk"))
csGubun.push(new Array("반품요청","7","chk"))
csGubun.push(new Array("부분취소/환불","12","chk"))
csGubun.push(new Array("상품","20000"))
csGubun.push(new Array("상품문의","4","chk"))
csGubun.push(new Array("상품불량","9","chk"))
csGubun.push(new Array("상품변경","11","chk"))
csGubun.push(new Array("상품옵션변경","2","chk"))
csGubun.push(new Array("배송","30000"))
csGubun.push(new Array("배송문의/지연","5","chk"))
csGubun.push(new Array("배송정보변경","3","chk"))
csGubun.push(new Array("오배송","10","chk"))
csGubun.push(new Array("기타","8","chk"))
csGubun.push(new Array("물류","40000"))
csGubun.push(new Array("회수완료","13","chk"))
csGubun.push(new Array("회수상품","14","chk"))



//view_order_list_excel_new 변경
//tasa : 타사몰관리(발주서/송장 등록, 관리, 히스토리)에서 타사몰만 보이도록 세팅
//divide : 사내지정발주(건별발주, 대량발주)에서 사용함.
//md : md 상품관리에서 보여질 몰
//q33 : CS상담내역에서 사용 됨.
market = new Array()
market.push(new Array("자사","1","chk","q33","md","manage"))

market.push(new Array("G마켓","2","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("인터파크","3","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("GS이숍","4","chk","q33","md","tasa"))
market.push(new Array("롯데닷컴","5","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("롯데온","58","chk","q33","md","tasa","autoplay","manage")) //------------------------------------마지막 할당
//market.push(new Array("롯데아이[구]","6","chk","q33","tasa")) //2015-12-07 전소민 차장요청으로 제외
market.push(new Array("신세계","7","chk","q33","md","tasa","autoplay"))
market.push(new Array("CJ몰","8","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("AK몰(구)","9","chk","q33","tasa")) //2015-12-07 전소민 차장요청으로 제외
market.push(new Array("11번가","10","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("10x10","11","chk","q33","md","tasa"))
//market.push(new Array("갤러리아","12","chk","q33","md","tasa"))
//market.push(new Array("신세계(백)","13","chk","q33","tasa")) //2015-12-07 전소민 차장요청으로 제외
//market.push(new Array("릴션","14","q33")) //2015-03-16 몰 거래중지 처리
//market.push(new Array("현대(백)","15","q33")) //2015-03-16 몰 거래중지 처리
market.push(new Array("현대","17","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("옥션","18","chk","q33","md","tasa","autoplay"))
//market.push(new Array("맘스아이","22","q33")) //2015-03-16 몰 거래중지 처리
//market.push(new Array("까사리빙","23","q33")) //2015-03-16 몰 거래중지 처리
market.push(new Array("롯데아이","26","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("티몬","28","chk","q33","md","tasa","autoplay","manage"))

//market.push(new Array("롯데홈쇼핑","29","chk","q33","tasa"))
//market.push(new Array("현대홈쇼핑","30","chk","q33","tasa"))
//market.push(new Array("이지웰","35","chk","q33","md","tasa"))
//market.push(new Array("보리보리","36","chk","q33","md","tasa"))

//market.push(new Array("쿠팡","37","chk","q33","md","tasa"))
market.push(new Array("위메프","38","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("AK몰","39","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("다음카카오","43","chk","q33","md","tasa"))
market.push(new Array("이마트몰","45","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("쁘띠엘린스토어","46","chk","q33","md","tasa"))
//market.push(new Array("쁘띠서포터즈","47","chk","q33","md","tasa"))
market.push(new Array("스토어팜","48","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("쿠팡(일반)","50","chk","q33","md","tasa"))
market.push(new Array("강아지대통령","52","chk","q33","md","tasa"))
market.push(new Array("고양이대통령","53","chk","q33","md","tasa"))
market.push(new Array("이랜드몰","54","chk","q33","md","tasa","autoplay"))
market.push(new Array("위메프(신)","56","chk","q33","md","tasa","autoplay","manage"))

market.push(new Array("와디즈","57","chk","q33","md","tasa"))
market.push(new Array("홈앤쇼핑","59","chk","q33","md","tasa","autoplay","manage"))


market.push(new Array("무료체험(MKT)","20","chk2","q33","divide"))
market.push(new Array("무료체험(MD)","44","chk2","q33","divide"))
market.push(new Array("무료체험(BM)","51","chk2","q33","divide"))
market.push(new Array("검사/샘플(개발/BM)","24","chk2","q33","divide"))
market.push(new Array("거래처선물","32","chk2","q33","divide"))
market.push(new Array("기부","55","chk2","q33","divide"))
market.push(new Array("구매내역없음(CS)","34","chk2","q33","divide"))
market.push(new Array("사입","33","chk2","q33","divide"))
market.push(new Array("사판","21","chk2","q33"))
market.push(new Array("국내영업","19","chk2","q33"))
market.push(new Array("수출영업","27","chk2","q33","divide"))
market.push(new Array("B2B마케팅(광고협찬)","40","chk2","q33"))
market.push(new Array("B2B마케팅(사입)","41","chk2","q33"))
market.push(new Array("B2BMD(사입)","46","chk2","q33"))
//market.push(new Array("서포터즈","42","chk2","q33","divide"))
market.push(new Array("서포터즈","49","chk2","q33","divide"))


offline = new Array()
offline.push(new Array("오프라인","1"))
offline.push(new Array("사판","2"))

reOrder = new Array()
reOrder.push(new Array("백오더","1"))
reOrder.push(new Array("누락","2"))
reOrder.push(new Array("오배송","3"))
reOrder.push(new Array("교환(단순변심)","4"))
reOrder.push(new Array("불량","5"))
reOrder.push(new Array("기타","6"))
reOrder.push(new Array("타사몰예판","7"))
reOrder.push(new Array("누락(검수요청)","8"))
reOrder.push(new Array("불량(검수요청)","9"))

duplicateDivide = new Array()
duplicateDivide.push(new Array("기본정보","1"))
duplicateDivide.push(new Array("체험단모집","2"))
duplicateDivide.push(new Array("무료체험","3"))


MD_brand = new Array()
MD_brand.push(new Array("에티튜드:AT","3","chk"))
MD_brand.push(new Array("프로도기:EP","20","chk"))
MD_brand.push(new Array("컴플렛:KP","21","chk"))
MD_brand.push(new Array("마스:MS","22","chk"))
MD_brand.push(new Array("베스트브리드:BB","54","chk"))
MD_brand.push(new Array("디그앤롤:DR","73","chk"))
MD_brand.push(new Array("위고노:WG","74","chk"))
MD_brand.push(new Array("아이슬란드펫:IP","82","chk"))
MD_brand.push(new Array("에그풀:EF","100","chk"))
MD_brand.push(new Array("카르나:CN","101","chk"))
MD_brand.push(new Array("몬트라움:MR","4"))
MD_brand.sort()



MD_brand_reverse = new Array()
MD_brand_reverse.push(new Array("3","AT","chk"))
MD_brand_reverse.push(new Array("20","EP","chk"))
MD_brand_reverse.push(new Array("21","KP","chk"))
MD_brand_reverse.push(new Array("22","MS","chk"))
MD_brand_reverse.push(new Array("54","BB","chk"))
MD_brand_reverse.push(new Array("73","DR","chk"))
MD_brand_reverse.push(new Array("74","WG","chk"))
MD_brand_reverse.push(new Array("82","IP","chk"))
MD_brand_reverse.push(new Array("100","EF","chk"))
MD_brand_reverse.push(new Array("101","CN","chk"))
MD_brand_reverse.push(new Array("4","MR","chk"))


//팝업창 자동 오픈 관련(실제 사이트 URL을 입력하십시오.)
Site_popup = new Array()
Site_popup.push(new Array("furryfriends","3"))
Site_popup.push(new Array("prodoggie","20"))
Site_popup.push(new Array("komplett","21"))
Site_popup.push(new Array("mars","22"))
Site_popup.push(new Array("bestBreed","54"))
Site_popup.push(new Array("eggfull","100"))
Site_popup.push(new Array("carna4","101"))
Site_popup.push(new Array("montraum","4"));

//사용자 노출 브랜드
view_brand = new Array();
view_brand.push(new Array("Furry Friends","3","chk"));
view_brand.push(new Array("Prodoggie","20","chk"));
view_brand.push(new Array("Komplett","21","chk"));
view_brand.push(new Array("Mars","22","chk"));
view_brand.push(new Array("Best Breed","54","chk"));
view_brand.push(new Array("Dig & Roll","73","chk"));
view_brand.push(new Array("Wegono","74","chk"));
view_brand.push(new Array("Iceland Pet","82","chk"));
view_brand.push(new Array("Eggfull","100","chk"));
view_brand.push(new Array("Carna4","101","chk"));
view_brand.push(new Array("Montraum","4","chk"));
view_brand.sort();


Product_status = new Array()
Product_status.push(new Array("<font color='red'>[단]</font>","1","chk"))
Product_status.push(new Array("<font color='blue'>[품]</font>","2","chk"))
Product_status.push(new Array("<font color='green'>[예]</font>","3","chk"))
Product_status.push(new Array("[한]","4","chk"))
Product_status.push(new Array("<font color='red'>[일단]</font>","5"))
Product_status.push(new Array("<font color='blue'>[일품]</font>","6"))
Product_status.push(new Array("<font color='green'>[일예]</font>","7"))
Product_status.push(new Array("[일한]","8"))


SNS_brand = new Array()
SNS_brand.push(new Array("인스타그램", "1", "chk"))
SNS_brand.push(new Array("페이스북", "2", "chk"))
SNS_brand.push(new Array("카카오스토리", "3", "chk"))
SNS_brand.push(new Array("기타", "4", "chk"))