function change_chk_color(val) {
	if (val.type=="radio") {
		
		if (document.forms.length==1) {
			thisForm=document.forms[0]				
		} else {
			forBreak = false
			for (var ii=0 ; ii<document.forms.length ; ii++) {
				for (var jj=0 ; jj<document.forms[ii].elements.length ; jj++) {
					if (document.forms[ii].elements[jj]==val) {
						thisForm=document.forms[ii]
						forBreak = true
						break
					}
				}
				if (forBreak) break
			}
		}

		for (var ii=0 ; ii<thisForm.elements[val.name].length ; ii++) thisForm.elements[val.name][ii].parentElement.className="chk_off"
	}

	if (val.checked) {
		if (val.type=="radio") {
			val.className="chk_on"
		} else {
			val.parentElement.className="chk_on"
		}
	} else {
		if (val.type=="radio") {
			val.className="chk_off"
		} else {
			val.parentElement.className="chk_off"
		}
	}
}


function check_Rs(obj,obj_val) {

	if (obj==undefined || obj_val=="") return

	if (obj.length==undefined) { //text객체거나 length=1인 radio, checkbox
		if (obj.type=="text") {
			obj.value = obj_val
		} else {
			if (obj.value==obj_val) obj.checked=true
		}
		return
	} else { //length>1인 radio, checkbox 거나 select
		if (obj[0].type==undefined && obj[0].length==undefined) { // 하나의 객체이름
			if (obj.type=="select-one") {
				obj.value = obj_val
				return
			} else {
				for (var j=0 ; j<obj.length ; j++) {
					if (obj.options[j].value==obj_val) {
						obj.options[j].selected = true
						return
					}
				}
			}
		} else { // 객체이름 중복
			if (obj[0].type=="checkbox" || obj[0].type=="radio") {
				for (var j=0 ; j<obj.length ; j++) {
					if (obj[j].value==obj_val) {
						obj[j].checked = true
						change_chk_color(obj[j])
						return
					}
				}
			} else {
				for (var j=0 ; j<obj.length ; j++) {
					for (var k=0 ; k<obj[j].length ; k++) {
						if (obj[j].options[k].value==obj_val) {
							obj[j].options[k].selected = true
							return
						}
					}
				}
			}
		}
	}
}


function split_Rs(obj,obj_val,obj_ini) {
	if (obj==undefined || obj_val=="") return
	if (obj_ini==undefined) obj_ini="-"
	obj_value = obj_val.split(obj_ini)

	for (var i=0 ; i<obj_value.length ; i++) for (var j=0 ; j<obj.length ; j++) check_Rs(obj,obj_value[i])
}

function cut_Rs(obj,obj_val,obj_ini) {
	if (obj==undefined || obj_val=="") return
	obj_array = obj_ini.split(",")
	obj_array_now = 0
	for (var i=0 ; i<obj_array.length ; i++) {
		obj[i].value = obj_val.substr(obj_array_now,obj_array[i])
		obj_array_now = obj_array_now + obj_array[i]
	}
}

function resizeFrame(fr,iframe_id,frameHeight) {
	if (frameHeight) {
		fr.setExpression("height",frameHeight);
	} else {
		fr.setExpression("height",fr.document.body.scrollHeight);
	}
}
function resizeFrame_new(iframeObj){
	var innerBody = iframeObj.contentWindow.document.body;
	var innerHeight = innerBody.scrollHeight + (innerBody.offsetHeight - innerBody.clientHeight);
	var innerWidth = innerBody.scrollWidth + (innerBody.offsetWidth - innerBody.clientWidth);

	iframeObj.style.height = innerHeight+"px";
	iframeObj.style.width = innerWidth+"px";
}

function make_persent(num,sum,su) {
	return parseFloat(num / sum * 100).toFixed(su)
}

function check_img(val) {
	if (val.length>0) {
		file_ext = val.substring(val.length-3,val.length).toUpperCase()

		if (!(file_ext=="JPG" || file_ext=="GIF" || file_ext=="PNG")) {
			return false
		} else {
			return true
		}
	} else {
		return true
	}
}

function arrayPivot(val) { //피벗 배열 만들기
	matrix_pivot1 = new Array()
	matrix_pivot2 = new Array()

	for (var i=0 ; i<val.length ; i++) matrix_pivot1.push(i)
	if (val[0]) for (var j=0 ; j<val[0].length ; j++) matrix_pivot2.push(matrix_pivot1.join(",").split(","))
	for (var i=0 ; i<val.length ; i++) for (var j=0 ; j<val[0].length ; j++) matrix_pivot2[j][i] = val[i][j]

	return matrix_pivot2
}

function arrayMulti(val) { //다차원 배열 만들기
	matrix_1 = new Array()
	matrix_2 = new Array()

	if (val[0]) for (var i=0 ; i<val[0].length ; i++) matrix_1.push(i)
	for (var j=0 ; j<val.length ; j++) matrix_2.push(matrix_1.join(",").split(","))

	return matrix_2
}


String.prototype.trim = function() { return this.replace(/(^\s*)|(\s*$)/gi, ""); }
Array.prototype.unique = function(){
	var aa = {};
	for(var i=0; i<this["length"]; i++) if(typeof aa[this[i]] == "undefined" && !(this[i]=="" || this[i]==undefined)) aa[this[i]] = 0;
	this["length"] = 0;
	for(var i in aa) this[this["length"]] = i;
	return this;
}

if (navigator.userAgent.indexOf("Firefox")>-1) {
	HTMLElement.prototype.__defineGetter__("innerText",function(){return this.textContent})
	HTMLElement.prototype.__defineSetter__("innerText",function(txt){this.textContent=txt})
}



//########################################################################################## 이미지 온 아웃
function MM_swapImgRestore() {
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() {
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

//########################################################################################## 쿠키값 제어

function getCookie( name ){
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length ) {
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) {
				endOfCookie = document.cookie.length;
			}
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 ) {
			break;
		}
	}
	return "";
}

function setCookie( name, value, expiredays ){
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

//########################################################################################## 기타

function setPreviewBox(val,content){
	document.getElementsByName("preview")[0].style.posLeft = event.x - 30 + document.body.scrollLeft
	document.getElementsByName("preview")[0].style.posTop = event.y + 20 + document.body.scrollTop
	if (content!=undefined) document.getElementsByName("preview")[0].innerHTML=content
	document.getElementsByName("preview")[0].style.visibility = val;
}

function check2radio(form,val) {	//******************************************** checkbox 객체를 radio객체처럼 사용하기
	val_checked = val.checked
	for (var i=0 ; i<form.elements[val.name].length ; i++) form.elements[val.name][i].checked=false
	if (val_checked) {val.checked=true} else {val.checked=false}
}

function html_view(val) {
	if (val==0 || val==undefined) {
		return ""
	} else {
		return val
	}
}

//########################################################################################## 숫자 및 금액 입력

function comma_make(numstring) { //숫자 컴마 찍기
	var numstr = String(numstring)	
	if (numstr.length - numstr.indexOf(".")==1) return numstring

	var re0 = /(\d+),?(\d{3})($|\..*)/
	numstr0 = numstr.split(".")[0]

	if (re0.test(numstr0)) {
		return numstr.replace(re0,function(str,p1,p2,p3) { return comma_make(p1) + "," + p2 + p3 })
	} else {
		return numstr
	}
}

function erase_comma(numstring) { //,없애기
	var numstr = String(numstring)	
	if (numstr.length - numstr.indexOf(".")==1)	return numstring

	if (numstr.indexOf(",")==-1 && numstr.indexOf(".")==-1) {
		if (numstr!="") {			
			return parseInt(numstr,10)
		} else {
			return 0
		}
	} else {
		if (numstr.indexOf(".")==-1) {
			return parseInt(numstr.replace(/,/g,''),10);
		} else {
			return parseFloat(numstr.replace(/,/g,''));
		}
	}
}

function numberformat(val,val2) {//0없애기
	if (val==null || val=="" || val=="0") {
		if (val2) {
			return val2
		} else {
			return ""
		}
	} else {
		return val
	}
}

function number_format(obj) { //계산하기
	numstring = obj.value
	count_value = numstring.substring(0,1) + numstring.substring(1,numstring.length).replace(/-/g, '')
   	obj.value = comma_make(erase_comma(count_value))
}

function make_money_down(val) {
	return comma_make(parseInt(erase_comma(val)/10)*10);
}

function make_money(val) {
	return comma_make(parseInt(erase_comma(val)/100)*100);
}

function make_money_up(val) {
	return comma_make(Math.round(erase_comma(val)/10)*10);
}

function ToFixed(val,val2) {
	return parseFloat(val.toFixed(val2))
}

function numcheck(nohypen){ //숫자만 입력 onkeydown='event.keyCode'
	code = (event==null) ? null : event.keyCode

	if (event.shiftKey) event.returnValue = false
	if (event.ctrlKey) {
		event.returnValue = change_int(window.clipboardData.getData("Text"))
	} else {

		if (nohypen==undefined) {
			e_code1=9
			e_code2=46
		} else if (nohypen=="-") {
			e_code1=109 //-
			e_code2=189
		} else if (nohypen==".") {
			e_code1=110 //.
			e_code2=190
		}

		if (code==16) {
			event.returnValue = false
		} else if ((code>=96 && code<=105) || (code>=48 && code<=57) || code==8 || (code>=37 && code<=40) || code==9 || code==46 || code==e_code1 || code==e_code2) { //숫자,백스페이스,이동키,tab,delete,-,키패드-
		} else {
			event.returnValue = false
		}
	}
}
function change_int(val) {
	if (isNaN(val)) {
		return ""
	} else {
		return parseInt(val)
	}
}

//########################################################################################## 문자 형식 맞추기

function convert_time (second_value) {
	sec_value = second_value%60
	hour_value = parseInt(second_value / 3600)
	min_value = parseInt((second_value - hour_value*3600) / 60)
	this_value = hour_value + ":" + select_zero(min_value,2) + ":" + select_zero(sec_value,2)
	return this_value
}

function defaultValue(val,val2) {
	if (val!="0" && (val=="" || val==undefined)) {
		int_value = val2
	} else {
		int_value = val
	}
	return int_value
}

function defaultNum(val,val2) {
	if (val=="0" || val=="" || val==undefined) {
		int_value = val2
	} else {
		int_value = val
	}
	return int_value
}

function valueChange(val,val2,val3) {
	//if(val==val2) int_value = val3;
	//else int_value = val;
	
	int_value = (val==val2) ? val3 : val;
	return int_value
}


function select_zero(reg_num,num) { //자릿수에 맞게 0 넣기 수,0갯수
	rnum = new String(reg_num)
	zero = ""
	for (var s_z=0 ; s_z<num-rnum.length ; s_z++) zero = zero + "0"
	return zero + rnum
}

function sortNumber(a,b) { 
	return a - b; 
}
function sortNumberInverse(a,b) { 
	return b - a; 
}

function view_img(dir,img_name) {
	var view_img = window.open("view_img1076.html?dir="+dir+"&img_name="+img_name,"viewImg","top=100,left=100,width=1024,height=768,scrollbars")
}

function view_img_size(dir,img_name) {
	var view_img = window.open("","viewImg","top=100,left=100,width=1024,height=768,scrollbars")
	view_img.document.open()
	view_img.document.write("<" + "script language='javascript'>function changeSize(){this.focus();window.resizeTo(document.images['image'].width+30,document.images['image'].height+60);window.outerWidth = document.images['image'].width;window.outerWidth = document.images['image'].width;return}</" + "script>")
	view_img.document.write("<html><head><title>이미지보기</title></head><body topmargin='0' leftmargin='0' onload='changeSize()'>")
	view_img.document.write ("<img src='" + dir + "/" + img_name + "' onclick='self.close()' style='cursor:pointer' name='image'>")
	view_img.document.write("</body></html>")
	view_img.document.close()
}

//########################################################################################## png 보기

function setPng24(obj) {
	if ((navigator.appVersion.indexOf("MSIE 6")>0 && navigator.appVersion.indexOf("MSIE 7")==-1) || navigator.appVersion.indexOf("MSIE 5")>0) {
		obj.width=obj.height=1;
		obj.className=obj.className.replace(/\bpng24\b/i,'');
		obj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');"
		obj.src='';
		return '';
	}
}



//########################################################################################## ajax

var oXMLHTTP = false
function createRequest() {
	try {
		oXMLHTTP = new XMLHttpRequest()
	} catch (trymicrosoft) {
		try {
			oXMLHTTP = new ActiveXObject("Msxml2.XMLHTTP")
		} catch (othermicrosoft) {
			try {
				oXMLHTTP = new ActiveXObject("Microsoft.XMLHTTP")
			} catch (failed) {
				oXMLHTTP = false
			}
		}
	}
	if (!oXMLHTTP) alert("Error initializing XMLHttpRequest!")
}

function getRequestBody(oForm) {
	var aParams = new Array();
	for (var i=0 ; i < oForm.elements.length; i++) {
		var sParam = escape(oForm.elements[i].name)
		sParam += "="
		sParam += escape(oForm.elements[i].value)
		aParams.push(sParam)
	}
	return aParams.join("&");
}



//########################################################################################## div 중앙에 띄우기

function showCenterDiv(val,wid,hei) {
	var d = document;
	var w = d.body.clientWidth;   //d.documentElement.clientWidth
	var h = d.body.clientHeight;  //d.documentElement.clientHeight
	var x = (window.pageXOffset) ?
		window.pageXOffset : (d.documentElement && d.documentElement.scrollLeft) ?
			d.documentElement.scrollLeft : (d.body) ? d.body.scrollLeft : 0;
	var y = (window.pageYOffset) ?
		window.pageYOffset : (d.documentElement && d.documentElement.scrollTop) ?
			d.documentElement.scrollTop : (d.body) ? d.body.scrollTop : 0;
	if (val) {
		val.style.left = ((w/2)+x) - wid/2;
		val.style.top = ((h/2)+y) - hei/2;
		val.style.display = "";
	}
}


//########################################################################################## checkbox

function checkCheckbox(val) { // 체크 수 확인
	checkItem = 0

	if (val==undefined) return 0

	if (val.type=="select-one") {
		return selectSelect(val)
	} else {
		if (val.length) {
			for (var checkItemi=0 ; checkItemi<val.length ; checkItemi++) if (val[checkItemi].checked) checkItem = checkItem + 1
		} else {
			if (val.checked) checkItem = checkItem + 1
		}
	}

	return checkItem
}

function selectSelect(val) { // select 수 확인
	checkItem = 0
	if (val) {
		if (val.length) {
			for (var checkItemi=0 ; checkItemi<val.length ; checkItemi++) {
				if (val[checkItemi].selected) {
					checkItem = checkItem + 1
				}
			}
		}
	}

	return checkItem
}

function check_box(form,val,same) { //선택한 체크박스의 바로 뒤에 있는 체크박스 처리
	nextElement = 0
	for (var i=0 ; i<form.elements.length ; i++) {
		if (form.elements[i]==val) {
			nextElement = i + 1
			break
		}
	}

	if (same==undefined) {
		form.elements[nextElement].checked=!val.checked
	} else {
		form.elements[nextElement].checked=val.checked
	}
}

function dateAdd(val,val1,val2) {
	var gubun = {y:"FullYear",m:"Month",d:"Date",h:"Hours",mi:"Minutes",s:"Seconds",ms:"Milliseconds"}[val.toLowerCase()]
	val2["set"+ gubun](val2["get"+ gubun]()+val1)

	return val2
}

function selectSearchWord(searchSelect,val2) {//select객체 단어검색
	searchOK = false
	for (var i=0 ; i<searchSelect.length ; i++) {
		if (val2=="" || searchSelect[i].text.indexOf(val2)==-1) {
			searchSelect[i].style.backgroundColor="white"
		} else {
			searchSelect[i].style.backgroundColor="yellow"
			searchOK = true
		}
	}

	if (searchOK) {
		for (var i=0 ; i<searchSelect.length ; i++) {
			if (searchSelect[i].style.backgroundColor=="yellow") {
				searchSelect[i].selected=true
				break
			}
		}
	} else {
		alert("해당 단어로 검색하지 못했습니다.")
	}
}

//########################################################################################## loading 창 

document.write ('<div id="loadingBar1" name="loadingBar1" align="center" style="display:none;position:absolute;background-color:white"><img src="../images/loading.gif"></div>')

function loading_show1(val){
	showCenterDiv(document.getElementsByName(val)[0],100,200)
	document.getElementsByName(val)[0].style.display = ""
}

function loading_hide1(val){
	document.getElementsByName(val)[0].style.display = "none";
}

invoiceArray = new Array()
invoiceArray.push(new Array("CJ대한통운","https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&amp;fsp_cmd=retrieveInvNoACT&amp;invc_no=",[33,34,35,38,55,61,62,63,64,69],[12,11]))
invoiceArray.push(new Array("건영택배","http://www.kunyoung.com/goods/goods_02.php?mulno=",[11],[10]))
invoiceArray.push(new Array("천일택배","http://www.chunil.co.kr/kor/taekbae/HTrace.jsp?transNo=",[11,51],[11]))
invoiceArray.push(new Array("롯데택배","https://www.lotteglogis.com/home/reservation/tracking/invoiceView/?InvNo=",[22,23,30,40],[12]))
invoiceArray.push(new Array("경동택배","https://kdexp.com/basicNewDelivery.kd?barcode=",[12,31],[13,14]))
invoiceArray.push(new Array("우체국택배","http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=",[64],[13]))
invoiceArray.push(new Array("대신택배","https://www.ds3211.co.kr/freight/internalFreightSearch.ht?billno=",[18],[13]))


function getInvoiceUrl(invoice, view, viewDay){
	var replaceInv = invoice.replace(/-/g, "");
	var invoiceLength = replaceInv.length;
	var invoice2 = replaceInv.substring(0,2);
	var invUrl = "", returnValue = "", postName = "택배";

	firstArray = new Array()
	lengthArray = new Array()
	thisInvioce = -1

	if(viewDay <= 90){ //90일 이하인 경우만 택배 송장조회 가능
		for (var i=0 ; i<invoiceArray.length ; i++) {
			for (var z=0 ; z<invoiceArray[i][2].length ; z++) if(invoiceArray[i][2][z]==invoice2) firstArray.push(i)
			for (var y=0 ; y<invoiceArray[i][3].length ; y++) if(invoiceArray[i][3][y]==invoiceLength) lengthArray.push(i)
		}
		for (var i=0 ; i<firstArray.length ; i++) for (var j=0 ; j<lengthArray.length ; j++) if (firstArray[i]==lengthArray[j]) {thisInvioce = firstArray[i];break}

		if(thisInvioce != -1){
			postName = invoiceArray[thisInvioce][0]
			invUrl = invoiceArray[thisInvioce][1]
		}
	}

	if(view =="url"){
		returnValue = invUrl;
	}else{
		returnValue = postName;
	}

	return returnValue;
}

