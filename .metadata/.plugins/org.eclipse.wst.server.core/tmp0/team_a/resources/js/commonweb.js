function flashWrite(url,w,h,id,bg,vars,win){

	// 플래시 코드 정의
	var flashStr=
	"<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0' width='"+w+"' height='"+h+"' id='"+id+"' align='middle'>"+
	"<param name='allowScriptAccess' value='always' />"+
	"<param name='movie' value='"+url+"' />"+
	"<param name='FlashVars' value='"+vars+"' />"+
//	"<param name='wmode' value='"+win+"' />"+
	"<param name='wmode' value='transparent' />"+
	"<param name='menu' value='false' />"+
	"<param name='quality' value='high' />"+
	"<param name='bgcolor' value='"+bg+"' />"+
	"<embed src='"+url+"' wmode='transparent' FlashVars='"+vars+"' wmode='"+win+"' menu='false' quality='high' bgcolor='"+bg+"' width='"+w+"' height='"+h+"' name='"+id+"' align='middle' allowScriptAccess='always' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' />"+
	"</object>";

	// 플래시 코드 출력
	document.write(flashStr);

}

function sso_flash() {
	document.write ('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="100">\
		<param name="movie" value="family_site.html" />\
			<param name="quality" value="high" />\
			<param name="wmode" value="transparent" />\
			<embed src="/images/swf/family_site.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="100">\
			</embed>\
		</object>')
}

function bottom_brand_flash(val) {
	fWidth=1050;
	if (val=="all") fWidth=1100;

	document.write ('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="'+fWidth+'" height="90">\
		<param name="movie" value="/images/swf/bottom_brands.swf" />\
			<param name="quality" value="high" />\
			<param name="wmode" value="transparent" />\
			<embed src="/images/swf/bottom_brands.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'+fWidth+'" height="90">\
			</embed>\
		</object>')
}

function bookMark(burl, btitle)
{
	var burl, btitle;
	window.external.AddFavorite(burl, btitle)
}

function writeThis(val) {
	document.write (val)
}


function searchTitle() {
	for (var i=0 ; i<selectArray.length ; i++) {
		for (var j=0 ; j<selectArray[i].length ; j++) {
			if (httpUrl.toUpperCase().indexOf(selectArray[i][j].toUpperCase())>-1) {
				return i
				break
			}
		}
	}
}

function searchMenu(val2,val) {
	if (val) {
		return val
	} else {
		if (httpUrl.indexOf("loginfree")>-1) {
			return 1
		} else {
			if (httpUrl.indexOf("\?")!=-1) {
				httpUrl2 = httpUrl.split(".asp?")[1]
				httpUrl1 = httpUrl.split(".asp?")[0]
			} else {
				httpUrl2 = httpUrl
				httpUrl1 = httpUrl
			}

			thisText = 0
			for (var i=0 ; i<val2.length ; i++) {
				for (var j=0 ; j<val2[i].length ; j++) {
					if (httpUrl2.indexOf(val2[i][0][j])!=-1) {
						thisText = i
						break
					}
				}
			}

			if (thisText==0) {
				for (var i=0 ; i<val2.length ; i++) {
					for (var j=0 ; j<val2[i].length ; j++) {
						if (httpUrl1.indexOf(val2[i][0][j])!=-1) {
							thisText = i
							break
						}
					}
				}
			}

			return thisText
		}
	}
	return 0
}

//########################################################################################## background-color fade

// main function to process the fade request //
function colorFade(id,element,start,end,steps,speed) {
  var startrgb,endrgb,er,eg,eb,step,rint,gint,bint,step;
  var target = document.getElementById(id);
  steps = steps || 20;
  speed = speed || 20;
  clearInterval(target.timer);
  endrgb = colorConv(end);
  er = endrgb[0];
  eg = endrgb[1];
  eb = endrgb[2];
  if(!target.r) {
    startrgb = colorConv(start);
    r = startrgb[0];
    g = startrgb[1];
    b = startrgb[2];
    target.r = r;
    target.g = g;
    target.b = b;
  }
  rint = Math.round(Math.abs(target.r-er)/steps);
  gint = Math.round(Math.abs(target.g-eg)/steps);
  bint = Math.round(Math.abs(target.b-eb)/steps);
  if(rint == 0) { rint = 1 }
  if(gint == 0) { gint = 1 }
  if(bint == 0) { bint = 1 }
  target.step = 1;
  target.timer = setInterval( function() { animateColor(id,element,steps,er,eg,eb,rint,gint,bint) }, speed);
}

// incrementally close the gap between the two colors //
function animateColor(id,element,steps,er,eg,eb,rint,gint,bint) {
  var target = document.getElementById(id);
  var color;
  if(target.step <= steps) {
    var r = target.r;
    var g = target.g;
    var b = target.b;
    if(r >= er) {
      r = r - rint;
    } else {
      r = parseInt(r) + parseInt(rint);
    }
    if(g >= eg) {
      g = g - gint;
    } else {
      g = parseInt(g) + parseInt(gint);
    }
    if(b >= eb) {
      b = b - bint;
    } else {
      b = parseInt(b) + parseInt(bint);
    }
    color = 'rgb(' + r + ',' + g + ',' + b + ')';
    if(element == 'background') {
      target.style.backgroundColor = color;
    } else if(element == 'border') {
      target.style.borderColor = color;
    } else {
      target.style.color = color;
    }
    target.r = r;
    target.g = g;
    target.b = b;
    target.step = target.step + 1;
  } else {
    clearInterval(target.timer);
    color = 'rgb(' + er + ',' + eg + ',' + eb + ')';
    if(element == 'background') {
      target.style.backgroundColor = color;
    } else if(element == 'border') {
      target.style.borderColor = color;
    } else {
      target.style.color = color;
    }
  }
}

// convert the color to rgb from hex //
function colorConv(color) {
  var rgb = [parseInt(color.substring(0,2),16),
    parseInt(color.substring(2,4),16),
    parseInt(color.substring(4,6),16)];
  return rgb;
}


function isEmpty( data )
{
	for ( var i = 0 ; i < data.length ; i++ )
	{
		if ( data.substring( i, i+1 ) != " " )
		{
			return false;
		}
	}
	return true;
}


function NumOnly(){
	if ((event.keyCode < 48) || (event.keyCode > 57)){
		return false;
	}
}	


function numCheck(target)
{  var Digit = '1234567890';
   for (i=0 ;i<=target.length ;i++)
   {  if(Digit.indexOf(target.substring(i,i+1)) < 0) 
      {  
   return true;
      }
   }
   return false;
}



// 신용카드 영수증 출력 스크립트
function receiptView(tr_no)
{
	receiptWin = "http://nims.ksnet.co.kr/pg_infoc/src/bill/credit_view.jsp?tr_no="+tr_no;
    window.open(receiptWin , "" , "scrollbars=no,width=434,height=700");
}


function f_escrowKsnet(){
	//이니시스 에스크로 가입확인
	window.open("https://mark.inicis.com/mark/escrow_popup.php?mid=whittleesc","mark","scrollbars=no,resizable=no,width=565,height=683");
}


//이메일주소무단수집거부*****************************************************************************//
function email_view(){

	var obj = document.getElementsByName("Background_Layer")[0];
	var dobj = document.getElementsByName("email_view_layer")[0];
	var lp = (document.body.offsetWidth / 2) - (540 / 2);

	obj.style.width = document.body.offsetWidth-22;
	if (document.body.offsetHeight > document.body.scrollHeight) {
		obj.style.height = document.body.offsetHeight;
	} else {
		obj.style.height = document.body.scrollHeight;
	}
	obj.style.display = "";

	dobj.style.top = (document.body.scrollTop + 100);
	dobj.style.left = (document.body.scrollLeft + lp);
	dobj.style.display = ""; 
}

function email_hidden(){
	var dobj = document.getElementsByName("email_view_layer")[0];
	var obj = document.getElementsByName("Background_Layer")[0];
	dobj.style.display = "none"; 
	obj.style.display = "none";
}
//이메일주소무단수집거부*****************************************************************************//

//즐겨찾기 추가
function addBookmark(){
	//var title = "[Viewit] 통신, IT, 모바일, 스마트폰 앱스 블로그";
	//var url = "http://viewit.kr";
	var title = document.title; //현재 보고 있는 페이지의 Title
	var url = location.href; //현재 보고 있는 페이지의 Url
	if(window.sidebar && window.sidebar.addPanel){ // Firefox
		window.sidebar.addPanel(title, url,"");
	}
	else if(window.opera && window.print){ // Opera
		var elem = document.createElement('a');
		elem.setAttribute('href',url);
		elem.setAttribute('title',title);
		elem.setAttribute('rel','sidebar');
		elem.click();
	}
	else if(document.all){ // Internet Explorer
		window.external.AddFavorite( url, title);
	}
	else{
		alert("이용하시는 웹 브라우저는 기능이 지원되지 않습니다.\n\nCtrl+D 키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	return true;
	}
}

function downEvent(val){
	location.href= "down_event36ac.html?eventNumber="+val;
}