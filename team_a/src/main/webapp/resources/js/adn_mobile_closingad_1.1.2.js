function fnc_adn_jQuery_info(callbackFunc) {
    var adn_jquery_url = 'https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js';
    var adn_jQuery_chk_cnt = 0;
    var adn_status_jquery = false;
    var load_script_status = false;
    var load_script_start = false;
    if (!window.jQuery) {
        var adn_jquery_yet = setInterval(function() {
            if (window.jQuery) {
                clearInterval(adn_jquery_yet);
                callbackFunc()
            }
            if(adn_jQuery_chk_cnt<10) adn_jQuery_chk_cnt++;
            else{
            	
            	if(load_script_status==false && load_script_start==false)
            	{
            		load_script_start = true;
	            	var c=document.createElement("script");
								c.type="text/javascript";
								c.charset='UTF-8';
								c.defer=true;
								if(c.readyState){
									c.onreadystatechange=function(){
										if(c.readyState=="loaded" || c.readyState=="complete"){
											c.onreadystatechange=null;
											load_script_status = true;
										}
									}
								}else{
									c.onload=function(){
										load_script_status = true;
									}
								}
								c.src=adn_jquery_url;
								document.getElementsByTagName("head")[0].appendChild(c);
								c.onerror=function(){
									load_script_status = false;
								}
								
							}
            }
        }, 100)
    } else {
        callbackFunc()
    }
}

function fnc_adn_health_info(callbackFunc)
{
	var _adn_chk_todays = new Date();
	var _adn_chk_dd = _adn_chk_todays.getDate();
	var _adn_chk_mm =  (_adn_chk_todays.getMonth()+1);
	var _adn_chk_yyyy = _adn_chk_todays.getFullYear();
	var _adn_chk_hours = _adn_chk_todays.getHours();
	var _adn_chk_mins = _adn_chk_todays.getMinutes();

	
	var _adn_health_chk_min = parseInt(_adn_chk_mins)+10;
	if(parseInt(_adn_health_chk_min)>=60) {
		_adn_health_chk_min = _adn_health_chk_min-60;
		_adn_chk_hours = parseInt(_adn_chk_hours)+1;
	}
	if(parseInt(_adn_chk_hours)>23)
	{
		_adn_chk_hours = 0;
		_adn_chk_mm = parseInt(_adn_chk_mm)+1;
	}
	if(parseInt(_adn_chk_dd)<10) _adn_chk_dd='0'+_adn_chk_dd;
	if(parseInt(_adn_chk_mm)<10) _adn_chk_mm='0'+_adn_chk_mm;	
	
	if(parseInt(_adn_chk_hours)<10) _adn_chk_hours='0'+_adn_chk_hours;
	
	if(parseInt(_adn_chk_mins)<10) _adn_chk_mins='0'+_adn_chk_mins;
	
	if(parseInt(_adn_health_chk_min)<10) _adn_health_chk_min='0'+_adn_health_chk_min;
	
	_adn_chk_full_date = _adn_chk_yyyy+_adn_chk_mm+_adn_chk_dd+_adn_chk_hours+_adn_chk_mins;
	_adn_health_chk_full_date = _adn_chk_yyyy+_adn_chk_mm+_adn_chk_dd+_adn_chk_hours+_adn_health_chk_min;
	
	var adn_health_val = localStorage.getItem('adn_health_chk_time');
	if (typeof(adn_health_val) != "undefined" && adn_health_val != null) 
	{
		if(parseInt(_adn_chk_full_date) < parseInt(adn_health_val)) return null;
	}
	
	if (window.ActiveXObject) {
		try { 
			var xhr = new ActiveXObject("Msxml2.XMLHTTP"); 
		} catch(e) { 
			try { 
				var xhr = new ActiveXObject("Microsoft.XMLHTTP"); 
			} catch(e1) { 
				var xhr = null; 
			} 
		}
	} else if (window.XMLHttpRequest) { 
		var xhr = new XMLHttpRequest(); 
	} else {
		var xhr = null;
	}
	

	

	try{
			
		if(adn_health_flag!="loading" && adn_health_flag!="ok"){
			if (typeof xhr  !== "null") {
				xhr.open('GET', 'https://kn.acrosspf.com/adn_health_jsonp_chk.ad?g=tags&t='+Math.floor(Math.random()*99999999999));
				xhr.timeout = 10000;
				
				xhr.onload = function () {
					
					if(xhr.readyState == 4){
						if(xhr.status == 200){
							adn_health_flag = "ok";
							localStorage.removeItem('adn_health_chk_time');
				  		callbackFunc();	
				  	}
				  }
				};
				xhr.onerror = function() {
					adn_health_flag = "error";
					localStorage.setItem('adn_health_chk_time', _adn_health_chk_full_date);
				  xhr.abort();
				};
				xhr.ontimeout = function (e) {
					adn_health_flag = "timeout";
					localStorage.setItem('adn_health_chk_time', _adn_health_chk_full_date);
				  xhr.abort();
				};
				adn_health_flag = "loading";
				xhr.send(null);
			}
		}
		else if(adn_health_flag=="ok"){
			localStorage.removeItem('adn_health_chk_time');
  		callbackFunc();	
		}
		else if(adn_health_flag=="loading"){
        var adn_health_yet = setInterval(function() {
            if (adn_health_flag=="ok") {
                clearInterval(adn_health_yet);
                callbackFunc()
            }
        }, 100)
    }
			
	}catch(e){}
}


if(typeof adn_health_flag=="undefined") var adn_health_flag = "";

var _adn_close_hours = "24";
var _adn_close_mode = "1";
var _adn_closed_last_scroll_poz = "0";
var _adn_closed_title_bgcolor = "";
var _adn_closed_title_color = "";
var d = new Date();
var now_hours = d.getHours();
var is_panel_status = true;
var _adn_closed_r = document.referrer;
var adn_panel_scrollTop = "0";
var _adn_closed_h = document.location.pathname;
var _adn_closed_cart = "";
var _adn_closed_cart_num = 0;
var _adn_closed_search_keyword = "";
var _adn_closed_db_act = "";
var _adn_closed_timers = "";
var _adn_closed_loc_info = "";

function closing_panel() {
    $("#adn_panel_wrap").hide();
    $("#adn_panel_container").hide();
    clearInterval(_adn_closed_timers);
    $("html, body").css({
        "height": "100%",
        "overflow": "auto"
    });
    if (navigator.userAgent.match(/(iPod|iPhone|iPad|Android)/)) {
        window.scrollTo(0, 0)
    } else {
        $('html,body').animate({
            scrollTop: 0,
            scrollLeft: 0
        }, 10, function() {
            $('html,body').clearQueue()
        })
    }
    if (_adn_close_hours != "0") {
        if (window.orientation > -1) {
            if (parseInt(_adn_close_hours) >= 10) {
                fn_adn_panel_setCookie("adnMobileCloseingAd_FQ", _adn_close_mode, 24 - parseInt(now_hours))
            } else {
                fn_adn_panel_setCookie("adnMobileCloseingAd_FQ", _adn_close_mode, _adn_close_hours)
            }
        } else {
            if (_adn_close_mode == "1" || _adn_close_mode == "3") {
                if (_adn_close_hours != "0") {
                    if (parseInt(_adn_close_hours) >= 10) {
                        fn_adn_panel_setCookie("adnCloseingAd", _adn_close_mode, 24 - parseInt(now_hours))
                    } else {
                        fn_adn_panel_setCookie("adnCloseingAd", _adn_close_mode, _adn_close_hours)
                    }
                }
            }
        }
    }
}

function fn_adn_mobile_panel_getCookie(a) {
    var b = a + "=";
    var x = 0;
    while (x <= document.cookie.length) {
        var y = (x + b.length);
        if (document.cookie.substring(x, y) == b) {
            if ((endOfCookie = document.cookie.indexOf(";", y)) == -1) {
                endOfCookie = document.cookie.length
            }
            return unescape(document.cookie.substring(y, endOfCookie))
        }
        x = document.cookie.indexOf(" ", x) + 1;
        if (x == 0) {
            break
        }
    }
    return ""
}

function fn_adn_mobile_panel_setCookie(a, b, c) {
    var d = new Date();
    d.setTime(d.getTime() + (1000 * 60 * 60 * c));
    document.cookie = a + "=" + b + ";path=/;expires=" + d.toGMTString() + ";"
}

function fnc_adn_mobile_pathchk(val) {
    if (val == "/shop/basket.html") {
        try {
            var cart_num = $("[name=branduid]").length;
            if (cart_num > 1) {
                for (var i = 0; i < cart_num; i++) {
                    tmp_branduid = $("[name=branduid]").get([i]);
                    if (tmp_branduid.value != "") {
                        if (_adn_closed_cart_num > 0) {
                            _adn_closed_cart += "^"
                        }
                        _adn_closed_cart += tmp_branduid.value;
                        _adn_closed_cart_num++
                    }
                }
            }
        } catch (e) {}
    } else if (val == "/order/basket.html") {
        try {
            $("td.thumb").each(function() {
                try {
                    tmp_cate_info = $(this).find("a").attr("href").replace("/product/detail.html?product_no=", "").split("&");
                    if (_adn_closed_cart_num > 0) {
                        _adn_closed_cart += "^"
                    }
                    tmp_product_no = tmp_cate_info[0];
                    if (tmp_product_no != "") {
                        _adn_closed_cart += tmp_product_no;
                        _adn_closed_cart_num++
                    }
                } catch (e) {}
            })
        } catch (e) {}
    } else if (val == "/shop/shopbrand.html") {
        try {
            var tmp_keyword = $("[name=prize1]").get([0]);
            if (tmp_keyword.value != "") {
                _adn_closed_search_keyword = tmp_keyword.value
            }
        } catch (e) {}
    } else if (val == "/product/search.html") {
        try {
            var tmp_keyword = $("[name=keyword]").get([0]);
            if (tmp_keyword.value != "") {
                _adn_closed_search_keyword = tmp_keyword.value
            }
        } catch (e) {}
    }
}

function fn_adn_mobile_panel_getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "))
}

function adn_mobile_panel_frm_send(c, d) {
    var a = document.createElement("iframe");
    a.frameBorder = "0";
    a.scrolling = "no";
    a.width = "0px";
    a.height = "0px";
    a.setAttribute("src", d);
    document.getElementById(c).appendChild(a)
}

function adn_mobile_getScrollXY() {
    var scrOfX = 0,
        scrOfY = 0;
    if (typeof(window.pageYOffset) == 'number') {
        scrOfY = window.pageYOffset;
        scrOfX = window.pageXOffset
    } else if (document.body && (document.body.scrollLeft || document.body.scrollTop)) {
        scrOfY = document.body.scrollTop;
        scrOfX = document.body.scrollLeft
    } else if (document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
        scrOfY = document.documentElement.scrollTop;
        scrOfX = document.documentElement.scrollLeft
    }
    return {
        x: scrOfX,
        y: scrOfY
    }
}

function fn_adn_mobile_panel_wrapWindowByMask(ui, ci, gi) {
    var a = fn_adn_mobile_panel_getCookie("adnMobileCloseingAd_FQ");
    if (a != "") {
        return
    }
    if (!is_panel_status) {
        return
    }
    fn_adn_mobile_panel_setCookie("adnMobileCloseingAd", "", "");
    $("#adn_panel_container").css("height", "100%");
    var panel_height = $('.closing_wrap_mobile').height();
    var adn_windows_height = $(window).height();
    $('#adn_panel_container').show();
    $("html, body").css({
        "height": "100%",
        "overflow": "hidden"
    });
    /*
    _adn_closed_timers = setInterval(function() {
        var get_panel_height = parseInt($('.closing_wrap_mobile').height());
        var get_closed_top = parseInt($("#adn_panel_container").scrollTop());
        var now_closed_top = adn_windows_height + get_closed_top + 17;
        if (get_panel_height < now_closed_top) {
            $("#adn_panel_container").scrollTop(get_panel_height - adn_windows_height)
        }
    }, 100);
    */
    if (is_panel_status) {
        imp_url = "https://kn.acrosspf.com/log/closing_imp.ad?ui=" + ui + "&ci=" + ci + "&gi=" + gi + "&rnd=" + Math.floor(Math.random() * 99999999999);
        var imp_id = "adn_panel_imp_" + Math.floor(Math.random() * 99999999999);
        var a = document.createElement("DIV");
        a.setAttribute("id", imp_id);
        a.setAttribute("style", "display:none;width:0px;height:0px;");
        document.getElementById("adn_panel_container").appendChild(a);
        adn_mobile_panel_frm_send(imp_id, imp_url);
        is_panel_status = false
    }
}

function adn__mobileobjectValues(obj) {
    var res = [];
    for (var i in obj) {
        if (obj.hasOwnProperty(i)) {
            res.push(obj[i])
        }
    }
    return res
}

function fn_adn_mobile_items(items) {
    try {
        var items_chk = false;
        var items_info = "";
        var last_items = "";
        var a = fn_adn_mobile_panel_getCookie("adn_items");
        var items_arr = a.split("^");
        for (var i = 0; i < items_arr.length; i++) {
            if (items_arr[i] != "") {
                b = items_arr[i].split("|");
                if (b[0] == items) {
                    b[1] = parseInt(b[1]) + 1;
                    last_items = b[0] + "|" + b[1];
                    items_chk = true
                } else items_chk = false;
                if (!items_chk) {
                    if (items_info != "") items_info += "^" + b[0] + "|" + b[1];
                    else items_info += b[0] + "|" + b[1]
                }
            }
            if (i > 100) break
        }
        if (last_items != "") {
            if (items_info != "") items_info = last_items + "^" + items_info;
            else items_info = last_items
        } else {
            if (items_info != "") items_info = items + "|" + 1 + "^" + items_info;
            else items_info = items + "|" + 1
        }
        fn_adn_mobile_panel_setCookie("adn_items", items_info, 30);
        return items_info
    } catch (e) {}
}

/* 세션 storage UV용 Start */
window.ssStorage = window.sessionStorage || (function() {
	// window.sStorage = (function() {
	var winObj = opener || window; //opener가 있으면 팝업창으로 열렸으므로 부모 창을 사용
	var data = JSON.parse(winObj.top.name || '{}');
	var fn = {
		length : Object.keys(data).length,
		setItem : function(key, value) {
			data[key] = value + '';
			winObj.top.name = JSON.stringify(data);
			fn.length++;
		},
		getItem : function(key) {
			return data[key] || null;
		},
		key : function(idx) {
			return Object.keys(data)[idx] || null; //Object.keys() 는 IE9 이상을 지원하므로 IE8 이하 브라우저 환경에선 수정되어야함
		},
		removeItem : function(key) {
			delete data[key];
			winObj.top.name = JSON.stringify(data);
			fn.length--;
		},
		clear : function() {
			winObj.top.name = '{}';
			fn.length = 0;
		}
	};
	return fn;
})();

fnc_adn_jQuery_info(function() {
	
	fnc_adn_health_info(function() {
		var across_adn_panel_param1 = fn_adn_mobile_panel_getParameterByName("across_adn_openmain", document.location.href);
		var across_adn_panel_param2 = fn_adn_mobile_panel_getParameterByName("across_adn_shortcut", document.location.href);
		
		if(across_adn_panel_param2=="ok"){
		    fn_adn_panel_setCookie("adnMobileCloseingAd", "", "");
		}
		if((across_adn_panel_param1===null || across_adn_panel_param1=="") && (across_adn_panel_param2===null || across_adn_panel_param2==""))
		{
			try {
			    if (_adn_closed_r.indexOf("naver.com") != -1) {
			        var q = _getParameterByName("query", _adn_closed_r);
			        if (q) {
			            _adn_closed_search_keyword = q;
			            var _adn_closed_k = function() {
			                try {
			                    if (q != '') {
			                        q = q.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_k)
			        }
			    } else if (_adn_closed_r.indexOf("daum.net") != -1) {
			        var q = _getParameterByName("q", _adn_closed_r);
			        if (q) {
			            _adn_closed_search_keyword = q;
			            var _adn_closed_k = function() {
			                try {
			                    if (q != '') {
			                        q = q.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_k)
			        }
			    } else if (_adn_closed_r.indexOf("nate.com") != -1) {
			        var q = _getParameterByName("q", _adn_closed_r);
			        if (q) {
			            _adn_closed_search_keyword = q;
			            var _adn_closed_k = function() {
			                try {
			                    if (q != '') {
			                        q = q.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_k)
			        }
			    } else if (_adn_closed_r.indexOf("google.co.kr") != -1) {
			        var q = _getParameterByName("q", _adn_closed_r);
			        if (q) {
			            _adn_closed_search_keyword = q;
			            var _adn_closed_k = function() {
			                try {
			                    if (q != '') {
			                        q = q.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_k)
			        }
			    } else if (_adn_closed_r.indexOf("zum.com") != -1) {
			        var q = _getParameterByName("query", _adn_closed_r);
			        if (q) {
			            _adn_closed_search_keyword = q;
			            var _adn_closed_k = function() {
			                try {
			                    if (q != '') {
			                        q = q.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_k)
			        }
			    }
			} catch (exception) {}
			if (typeof adn_mobile_panel_param !== "undefined") {
			    var adn_closed_isMobile = window.orientation > -1;
			    console.log(adn_closed_isMobile);
			    if (adn_closed_isMobile) {
			        $("<link/>", {
			            rel: "stylesheet",
			            type: "text/css",
			            href: "https://fonts.googleapis.com/css?family=Noto+Sans"
			        }).appendTo("head");
			        $("<link/>", {
			            rel: "stylesheet",
			            type: "text/css",
			            href: "https://fonts.googleapis.com/earlyaccess/nanumgothic.css"
			        }).appendTo("head");
			        try {
			            var adn_mobile_panel_g = "";
			            for (var i = 0; i <= adn_param.length; i++) {
			                var c_ut = adn__mobileobjectValues(adn_param)[i][0]["ut"];
			                if (c_ut == "Item") {
			                    var c_items = adn__mobileobjectValues(adn_param)[i][0]["items"][0]["i"];
			                    fn_adn_mobile_items(c_items)
			                }
			            }
			        } catch (e) {}
			        try {
			            var adn_mobile_panel_c = fn_adn_mobile_panel_getCookie("adn_items");
			            var adn_mobile_panel_d = new Array();
			            var adn_mobile_panel_e = adn_mobile_panel_c.split("^");
			            for (var adn_mobile_panel_i = 0; adn_mobile_panel_i < adn_mobile_panel_e.length; adn_mobile_panel_i++) {
			                adn_mobile_panel_f = adn_mobile_panel_e[adn_mobile_panel_i].split("|");
			                adn_mobile_panel_d.push(adn_mobile_panel_f)
			            }
			            adn_mobile_panel_d.sort(function(adn_mobile_panel_a1, adn_mobile_panel_a2) {
			                adn_mobile_panel_a1[1] = parseInt(adn_mobile_panel_a1[1]);
			                adn_mobile_panel_a2[1] = parseInt(adn_mobile_panel_a2[1]);
			                return (adn_mobile_panel_a1[1] < adn_mobile_panel_a2[1]) ? 1 : ((adn_mobile_panel_a1[1] > adn_mobile_panel_a2[1]) ? -1 : 0)
			            });
			            var adn_mobile_panel_g = "";
			            for (var adn_mobile_panel_i = 0; adn_mobile_panel_i < adn_mobile_panel_d.length; adn_mobile_panel_i++) {
			                if (adn_mobile_panel_g != "") adn_mobile_panel_g += "^" + adn_mobile_panel_d[adn_mobile_panel_i][0];
			                else adn_mobile_panel_g += adn_mobile_panel_d[adn_mobile_panel_i][0];
			                if (adn_mobile_panel_i > 6) break
			            }
			        } catch (e) {}
			        fnc_adn_mobile_pathchk(_adn_closed_h);
			        if (_adn_closed_search_keyword != "") {
			            var _adn_closed_search_k = function() {
			                try {
			                    if (_adn_closed_search_keyword != '') {
			                        q = _adn_closed_search_keyword.replace(/\<|\>|\"|\'|\%|\;|\(|\)|\&|\+|\-/g, "");
			                        q = encodeURIComponent(q);
			                        if (q != '') {
			                            var u = 'https://kn.acrosspf.com/adn_k.ad?k=' + q;
			                            $.ajax({
			                                type: 'get',
			                                url: u,
			                                data: {
			                                    todo: "jsonp"
			                                },
			                                dataType: "jsonp",
			                                crossDomain: true,
			                                cache: false,
			                                success: function(d) {}
			                            })
			                        }
			                    }
			                } catch (e) {}
			            };
			            $(document).ready(_adn_closed_search_k)
			        }
			        $("<link/>", {
			            rel: "stylesheet",
			            type: "text/css",
			            href: "https://ff.adteip.net/css/across_adn_closed_mobile.css"
			        }).appendTo("head");
			        $(function() {
			            try {
			                $("body").on("click", "#adn_closing_viewbtn", function() {
			                    $(".closing_form_view").toggle()
			                })
			            } catch (e) {}
			            try {
			                $("body").on("change", "#adn_closed_loc1", function() {
			                    var tmp_location_info = _adn_closed_loc_info[$("#adn_closed_loc1").val()];
			                    $("#adn_closed_loc2").empty();
			                    var option = $("<option>::선택::</option>");
			                    $('#adn_closed_loc2').append(option);
			                    for (var i = 0; i < tmp_location_info.length; i++) {
			                        var option = $("<option>" + tmp_location_info[i] + "</option>");
			                        $('#adn_closed_loc2').append(option)
			                    }
			                })
			            } catch (exception) {}
			            try {
			                $("body").on("change", "#adn_closed_loc2", function() {
			                    $("#adn_closed_db_location").val($("#adn_closed_loc1 option:selected").text() + " " + $("#adn_closed_loc2 option:selected").text())
			                })
			            } catch (exception) {}
			            try {
			                $("body").on("click", "#adn_closing_frm_btn", function() {
			                    var adn_closed_isMobile = window.orientation > -1;
			                    console.log(adn_closed_isMobile);
			                    if (adn_closed_isMobile) {
			                        var panel_frm_check = true;
			                        try {
			                            if ($("#adn_closed_db_name").val() == "") {
			                                alert("이름을 입력하세요");
			                                $("#adn_closed_db_name").focus();
			                                panel_frm_check = false
			                            }
			                        } catch (e) {}
			                        try {
			                            if (panel_frm_check != false && $('input[name=adn_closed_sex]:radio').length > 0) {
			                                if ($('input[name=adn_closed_sex]:radio:checked').length < 1) {
			                                    alert("성별을 선택하세요");
			                                    panel_frm_check = false
			                                }
			                            }
			                        } catch (e) {}
			                        try {
			                            if (panel_frm_check != false && $("#adn_closed_db_brithday").val() == "") {
			                                alert("생년월일 입력하세요");
			                                $("#adn_closed_db_brithday").focus();
			                                panel_frm_check = false
			                            }
			                        } catch (e) {}
			                        try {
			                            if (panel_frm_check != false && $("#adn_closed_db_phone").val() == "") {
			                                alert("연락처를 입력하세요");
			                                $("#adn_closed_db_phone").focus();
			                                panel_frm_check = false
			                            }
			                        } catch (e) {}
			                        try {
			                            if (panel_frm_check != false && $("#adn_closed_db_location").val() == "") {
			                                alert("지역을 입력하세요");
			                                $("#adn_closed_db_location").focus();
			                                panel_frm_check = false
			                            }
			                        } catch (e) {}
			                        try {
			                            if (panel_frm_check != false && $("#closing_form_agreecheck").is(":checked") == false) {
			                                alert("개인정보 수집/이용 동의를 체크하세요");
			                                $("#closing_form_agreecheck").focus();
			                                panel_frm_check = false
			                            }
			                        } catch (e) {}
			                        if (panel_frm_check == true) {
			                            if (_adn_closed_db_act != "") {
			                                try {
									                   $.post(_adn_closed_db_act, $("#adn_closed_db_frm").serialize()).done(function(data) {});
									                   
									                   var ui = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ui"];
									                   var ci = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ci"];
									                   var gi = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["gi"];		                                    
									                   var frm_url = "https://kn.acrosspf.com/adn_closing_db.ad?u=" + ui + "&ci=" + ci + "&gi=" + gi + "&ti=" + Math.floor(Math.random() * 99999999999);
									                   $.post(frm_url, $("#adn_closed_db_frm").serialize()).done(function(data) {});
									                   
									                   $('#adn_closed_db_frm')[0].reset();
									                   alert("처리완료되었습니다.")
			                                } catch (e) {}
			                            } else {
			                                try {
			                                    var ui = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ui"];
			                                    var ci = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ci"];
			                                    var gi = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["gi"];
			                                    var frm_url = "https://kn.acrosspf.com/adn_closing_db.ad?u=" + ui + "&ci=" + ci + "&gi=" + gi + "&ti=" + Math.floor(Math.random() * 99999999999);
			                                    $.post(frm_url, $("#adn_closed_db_frm").serialize()).done(function(data) {
			                                        $('#adn_closed_db_frm')[0].reset();
			                                        alert("처리완료되었습니다.")
			                                    })
			                                } catch (e) {}
			                            }
			                        }
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("keydown", "#adn_closed_db_name", function() {
			                    var trans_name = $(this).val().replace(/-/gi, '')
			                })
			            } catch (e) {}
			            try {
			                $("body").on("blur", "#adn_closed_db_name", function() {
			                    if ($(this).val() == '') return;
			                    var trans_name = $(this).val().replace(/-/gi, '');
			                    if (trans_name != null && trans_name != '') {
			                        var regex_name = /([^가-힣\x20a-zA-Z])/i;
			                        if (!regex_name.test(trans_name)) {
			                            $(this).val(trans_name)
			                        } else {
			                            alert("유효하지 않은 이름 입니다.");
			                            $(this).val("");
			                            $(this).focus()
			                        }
			                    } else {
			                        alert("유효하지 않은 이름 입니다.");
			                        $(this).val("");
			                        $(this).focus()
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("keydown", "#adn_closed_db_phone", function(e) {
			                    var trans_num = $(this).val().replace(/-/gi, '');
			                    var k = e.keyCode;
			                    if (trans_num.length >= 11 && ((k >= 48 && k <= 126) || (k >= 12592 && k <= 12687 || k == 32 || k == 229 || (k >= 45032 && k <= 55203)))) {
			                        e.preventDefault()
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("blur", "#adn_closed_db_phone", function() {
			                    if ($(this).val() == '') return;
			                    var trans_num = $(this).val().replace(/-/gi, '');
			                    if (trans_num != null && trans_num != '') {
			                        if (trans_num.length == 11 || trans_num.length == 10) {
			                            var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
			                            if (regExp_ctn.test(trans_num)) {
			                                trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})?([0-9]{3,4})?([0-9]{4})$/, "$1$2$3");
			                                $(this).val(trans_num)
			                            } else {
			                                alert("유효하지 않은 전화번호 입니다.");
			                                $(this).val("");
			                                $(this).focus()
			                            }
			                        } else {
			                            alert("유효하지 않은 전화번호 입니다.");
			                            $(this).val("");
			                            $(this).focus()
			                        }
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("keydown", "#adn_closed_db_brithday", function(e) {
			                    var trans_num = $(this).val().replace(/-/gi, '');
			                    var k = e.keyCode;
			                    if (trans_num.length >= 8 && ((k >= 48 && k <= 126) || (k >= 12592 && k <= 12687 || k == 32 || k == 229 || (k >= 45032 && k <= 55203)))) {
			                        e.preventDefault()
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("blur", "#adn_closed_db_brithday", function() {
			                    if ($(this).val() == '') return;
			                    var trans_brithday = $(this).val().replace(/-/gi, '');
			                    if (trans_brithday != null && trans_brithday != '') {
			                        if (trans_brithday.length == 8) {
			                            var regex_brithday = /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/;
			                            if (regex_brithday.test(trans_brithday)) {
			                                $(this).val(trans_brithday)
			                            } else {
			                                alert("유효하지 않은 생년월일 입니다.");
			                                $(this).val("");
			                                $(this).focus()
			                            }
			                        } else {
			                            alert("유효하지 않은 생년월일 입니다.");
			                            $(this).val("");
			                            $(this).focus()
			                        }
			                    } else {
			                        alert("유효하지 않은 생년월일 입니다.");
			                        $(this).val("");
			                        $(this).focus()
			                    }
			                })
			            } catch (e) {}
			            try {
			                $("body").on("keydown", "#adn_closed_db_location", function() {
			                    var trans_location = $(this).val().replace(/-/gi, '')
			                })
			            } catch (exception) {}
			            try {
			                $("body").on("blur", "#adn_closed_db_location", function() {
			                    if ($(this).val() == '') return;
			                    var trans_location = $(this).val().replace(/-/gi, '');
			                    if (trans_location != null && trans_location != '') {
			                        var regex_location = /([^가-힣\x20a-zA-Z])/i;
			                        if (!regex_location.test(trans_location)) {
			                            $(this).val(trans_location)
			                        } else {
			                            alert("유효하지 않은 지역명 입니다.");
			                            $(this).val("");
			                            $(this).focus()
			                        }
			                    } else {
			                        alert("유효하지 않은 지역명 입니다.");
			                        $(this).val("");
			                        $(this).focus()
			                    }
			                })
			            } catch (exception) {}
			        });
			        try {
			            var ui = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ui"];
			            var ci = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["ci"];
			            var gi = adn__mobileobjectValues(adn_mobile_panel_param)[0][0]["gi"];
			            var p_url = "https://kn.acrosspf.com/adn_mobile_closingad_jsonp_1.0.3.ad?u=" + ui + "&ci=" + ci + "&gi=" + gi + "&item=" + adn_mobile_panel_g + "&cart=" + _adn_closed_cart + "&k=" + encodeURIComponent(_adn_closed_search_keyword) + "&ti=" + Math.floor(Math.random() * 99999999999)
			        } catch (e) {}
			        try {
			            var a = fn_adn_mobile_panel_getCookie("adnMobileCloseingAd_FQ");
			            if (a == "") {
			                $.ajax({
			                    url: p_url,
			                    dataType: 'jsonp',
			                    success: function(data) {
			                        if (data.status == "0") {
			                            $("#adn_panel_wrap").hide();
			                            $("#adn_panel_container").hide();
			                            is_panel_status = false;
			                            fn_adn_mobile_panel_setCookie("adnMobileCloseingAd", "", "")
			                        } else {
			                            is_panel_status = true;
			                            _adn_close_mode = data.closed_mode;
			                            _adn_close_hours = data.closed_hours;
			                            _adn_closed_title_bgcolor = data.closed_tbg;
			                            _adn_closed_title_color = data.closed_tclr;
			                            _adn_closed_db_act = data.closed_db_act;
			                            if (data.closed_loc_info != "") {
			                                _adn_closed_loc_info = $.parseJSON(data.closed_loc_info)
			                            }
			                            if (!document.getElementById("adn_panel_container")) {
			                                var _adn_tmp_div = document.createElement("DIV");
			                                _adn_tmp_div.setAttribute("id", "adn_panel_container");
			                                _adn_tmp_div.setAttribute("style", "position:absolute;display:none; top:0px; width:100%;overflow:auto; background-color:#f3f3f3;z-index:999999999;");
			                                document.getElementsByTagName("body")[0].appendChild(_adn_tmp_div)
			                            }
			                            $("#adn_panel_container").html(data.closingad);
			                            if (_adn_closed_title_bgcolor != "" || _adn_closed_title_color != "") {
			                                $(".closing_title").css({
			                                    "background-color": _adn_closed_title_bgcolor,
			                                    "color": _adn_closed_title_color
			                                })
			                            }

											var acorss_adn_mobile_closed = fn_adn_mobile_panel_getCookie("adnMobileCloseingAd");
											if (acorss_adn_mobile_closed=="") 
											{
												fn_adn_mobile_panel_setCookie("adnMobileCloseingAd", "1", "1");
		                                    history.pushState({page: 1}, "title 1", "#adnClosed")
											}
			                        }
			                    },
			                    error: function(xhr) {
			                        $("#adn_panel_wrap").hide();
			                        $("#adn_panel_container").hide();
			                        is_panel_status = false
			                    }
			                })
			            }
			        } catch (e) {}

					
			    }
			    
			}
			
		    window.onhashchange = function(event) {
		    	console.log(event);
		        try {
		            if (event.state == null && event.oldURL.indexOf("#adnClosed") != -1) {
		                if (event.newURL.indexOf("#") != -1) {} else {
		                    	fn_adn_mobile_panel_wrapWindowByMask(ui, ci, gi);
		                    
		                }
		            }
		        } catch (e) {}
		    }
		}
	});
	
});	