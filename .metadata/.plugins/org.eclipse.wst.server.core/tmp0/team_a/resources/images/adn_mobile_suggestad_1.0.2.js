try{
	if (typeof(suggest_mobile_wrap_id) === "undefined")
	{
		t = Math.floor(99999999999 * Math.random());
    o = document.currentScript || function() {
                var t = document.getElementsByTagName("script"),
                    o = t[t.length - 1];
                if (!e(o))
                    for (var s = t.length, a = 0; s > a; ++a) e(t[a]) && (o = t[a]);
                return o
            }()
            
    suggest_mobile_wrap_id = "suggestad_mobile_wrap_" + t;
    d = document.createElement("div");
    d.setAttribute("id", suggest_mobile_wrap_id);
    d.setAttribute("style", "display:none;");
    o.parentNode.insertBefore(d, o.nextSibling);
	}   
}catch(e){}
  
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
		if (typeof xhr  !== "null") {
			xhr.open('GET', 'https://kn.acrosspf.com/adn_health_jsonp_chk.ad?t='+Math.floor(Math.random()*99999999999));
			xhr.timeout = 10000;
			
			xhr.onload = function () {
				if(xhr.readyState == 4){
					if(xhr.status == 200){
						localStorage.removeItem('adn_health_chk_time');
			  		callbackFunc();	
			  	}
			  }
			};
			xhr.onerror = function() {
				localStorage.setItem('adn_health_chk_time', _adn_health_chk_full_date);
			  xhr.abort();
			};
			xhr.ontimeout = function (e) {
				localStorage.setItem('adn_health_chk_time', _adn_health_chk_full_date);
			  xhr.abort();
			};
			xhr.send(null);
		}
	}catch(e){}
}


fnc_adn_jQuery_info(function() {
	
	fnc_adn_health_info(function() {  

			if(/Mobi/.test(navigator.userAgent))
			{
				try {
					
			    var page_num = 1;
			    var page_count = 1;
			    var adn_suggestad_types = "";
			    var adn_bottom_status = "";
			    
					function fn_suggestad_adn_objectValues(obj) {
						var res = [];
						for (var i in obj) {
							if (obj.hasOwnProperty(i)) {
								res.push(obj[i])
							}
						}
						return res
					}
					
					function fn_suggestad_adn_getParameterByName(name, url) 
					{
						if (!url) url = window.location.href;
						name = name.replace(/[\[\]]/g, "\\$&");
						var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
						results = regex.exec(url);
						if(!results) return null;
						if(!results[2]) return '';
						return decodeURIComponent(results[2].replace(/\+/g, " "));
					}
					
					function fn_adn_suggestad_frm_send(c, d) {
					    var a = document.createElement("iframe");
					    a.frameBorder = "0";
					    a.scrolling = "no";
					    a.width = "0px";
					    a.height = "0px";
					    a.setAttribute("src", d);
					    document.getElementById(c).appendChild(a)
					}
			
					function fn_adn_items_cookies(items) 
					{
						var adn_goods_chk = false;
						var adn_goods_info = "";
						var last_adn_goods = "";
						
						var adn_goods_items_val = localStorage.getItem('adn_goods_items');
						//console.log(adn_goods_items_val);	
						
						if (typeof(adn_goods_items_val) != "undefined" && adn_goods_items_val != null)
						{
							var adn_goods_items_arr = adn_goods_items_val.split("^");
							for (var i = 0; i < adn_goods_items_arr.length; i++) {
								if (adn_goods_items_arr[i] != "") 
								{
									b = adn_goods_items_arr[i].split("|");
									if (b[0] == items) 
									{
										b[1] = parseInt(b[1]) + 1;
										last_adn_goods = b[0] + "|" + b[1];
										adn_goods_chk = true
									} else adn_goods_chk = false;
									if (!adn_goods_chk) 
									{
										if (adn_goods_info != "") adn_goods_info += "^" + b[0] + "|" + b[1];
										else adn_goods_info += b[0] + "|" + b[1]
									}
								}
								if (i > 100) break
							}
						}
						if (last_adn_goods != "") {
							if (adn_goods_info != "") adn_goods_info = last_adn_goods + "^" + adn_goods_info;
							else adn_goods_info = last_adn_goods
						} else {
							if (adn_goods_info != "") adn_goods_info = items + "|" + 1 + "^" + adn_goods_info;
							else adn_goods_info = items + "|" + 1
						}
						localStorage.setItem('adn_goods_items', adn_goods_info);
					}
			
					
					function fnc_adn_detectswipe(el,m,func) {
						/*
					  swipe_det = new Object();
					  swipe_det.sX = 0; swipe_det.sY = 0; swipe_det.eX = 0; swipe_det.eY = 0;
					  var min_x = 30;  //min x swipe for horizontal swipe
					  var max_x = 30;  //max x difference for vertical swipe
					  var min_y = 50;  //min y swipe for vertical swipe
					  var max_y = 60;  //max y difference for horizontal swipe
					  var direc = "";
					  ele = document.getElementById(el);
					  ele.addEventListener('touchstart',function(e){
					    var t = e.touches[0];
					    swipe_det.sX = t.screenX; 
					    swipe_det.sY = t.screenY;
					  },false);
					  ele.addEventListener('touchmove',function(e){
					    e.preventDefault();
					    var t = e.touches[0];
					    swipe_det.eX = t.screenX; 
					    swipe_det.eY = t.screenY;    
					  },false);
					  ele.addEventListener('touchend',function(e){
					    //horizontal detection
					    if ((((swipe_det.eX - min_x > swipe_det.sX) || (swipe_det.eX + min_x < swipe_det.sX)) && ((swipe_det.eY < swipe_det.sY + max_y) && (swipe_det.sY > swipe_det.eY - max_y) && (swipe_det.eX > 0)))) {
					      if(swipe_det.eX > swipe_det.sX) direc = "r";
					      else direc = "l";
					    }
					    //vertical detection
					    else if ((((swipe_det.eY - min_y > swipe_det.sY) || (swipe_det.eY + min_y < swipe_det.sY)) && ((swipe_det.eX < swipe_det.sX + max_x) && (swipe_det.sX > swipe_det.eX - max_x) && (swipe_det.eY > 0)))) {
					      if(swipe_det.eY > swipe_det.sY) direc = "d";
					      else direc = "u";
					    }
					
					    if (direc != "") {
					      if(typeof func == 'function') func(el, m, direc);
					    }
					    direc = "";
					    swipe_det.sX = 0; swipe_det.sY = 0; swipe_det.eX = 0; swipe_det.eY = 0;
					  },false);  
					  */
					}
					
					function fnc_adn_swipe_page(el, m, d) {
						/*
						if(m==1)
						{
						  if(d=="r")
						  {
									page_num = page_num + 1;
								
									
									if(page_num>page_count) page_num = 1;
									$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
									$(".goods_page_"+page_num).show();
									$("#now_page_num").text(page_num);
						  }
						  else if(d=="l")
						  {
									page_num = page_num - 1;
								
									
									if(page_num<=0) page_num = page_count;
									$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
									$(".goods_page_"+page_num).show();
									$("#now_page_num").text(page_num);
						  }
						}
						else
						{
						  if(d=="r")
						  {
								page_num = page_num + 1;
								
								
								if(page_num>page_count) page_num = 1;
								$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
								$(".goods_page_type02_"+page_num).show();
								$("#now_page_num_type02").text(page_num);
						  }
						  else if(d=="l")
						  {
								page_num = page_num - 1;
								
							
								if(page_num<=0) page_num = page_count;
								$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
								$(".goods_page_type02_"+page_num).show();
								$("#now_page_num_type02").text(page_num);
						  }
						}
						*/
					}
					
					try{
						if(/Mobi/.test(navigator.userAgent))
						{
							$("<link/>", {
							    rel: "stylesheet",
							    type: "text/css",
							    charset : "utf-8",
							    href: "https://ff.adteip.net/css/across_adn_feed_mobile.css"
							}).appendTo("head");
						}
					}catch(e){}
						
			    try{
						if(document.location.href.indexOf("branduid") != -1) {
							
							var items_ix = fn_suggestad_adn_getParameterByName("branduid", document.location.href);
							fn_adn_items_cookies(items_ix);
						}
						else if(document.location.href.indexOf("goodsNo") != -1) {
							
							var items_ix = fn_suggestad_adn_getParameterByName("goodsNo", document.location.href);
							fn_adn_items_cookies(items_ix);
						}
						else if(document.location.href.indexOf("product_no") != -1) {
							
							var items_ix = fn_suggestad_adn_getParameterByName("product_no", document.location.href);
							fn_adn_items_cookies(items_ix);
						}
						else if(document.location.href.indexOf("uid") != -1) {
							
							var items_ix = fn_suggestad_adn_getParameterByName("uid", document.location.href);
							fn_adn_items_cookies(items_ix);
						}
						else if(document.location.href.indexOf("index_no") != -1) {
							
							var items_ix = fn_suggestad_adn_getParameterByName("index_no", document.location.href);
							fn_adn_items_cookies(items_ix);
						}
						else
						{
					    try {
					    	if(typeof adn_param!=="undefined")
					    	{
						    	var adn_obj = fn_suggestad_adn_objectValues(adn_param);
						    	for(var k in adn_obj){
						    		if(adn_obj.hasOwnProperty(k)){
						    			for(var p in adn_obj[k]){
						    				if(adn_obj[k].hasOwnProperty(p)){
						    					if(adn_obj[k][p]["ut"]=="Item"){
						    						var items_ix = adn_obj[k][p]["items"][0]["i"];
						    						fn_adn_items_cookies(items_ix);
						    					}
						    				}
						    			}
						    		}
						    	}
						    }
					    }catch(e){}
						}
					}catch(e){}
			
			    try {
			    	var ui = fn_suggestad_adn_objectValues(adn_suggestad_mobile_param)[0][0]["ui"];
			    	var ci = fn_suggestad_adn_objectValues(adn_suggestad_mobile_param)[0][0]["ci"];
			    	var gi = fn_suggestad_adn_objectValues(adn_suggestad_mobile_param)[0][0]["gi"];
			    	var p_url = "https://kn.acrosspf.com/adn_mobile_feedad_jsonp_1.0.3.ad?u=" + ui + "&ci=" + ci + "&gi=" + gi + "&ti=" + Math.floor(Math.random() * 99999999999)
					} catch (e) {}
						
					try {	
						//console.log("ui=>"+ui+"/ci=>"+ci+"/gi=>"+gi+"/p_url=>"+p_url);
						var adn_goods_items = localStorage.getItem('adn_goods_items');
						var adn_goods_items_info = "";
						if (typeof(adn_goods_items) != "undefined" && adn_goods_items != null) adn_goods_items_info = adn_goods_items;
				
						var adn_shop_search = localStorage.getItem('adn_shop_search');
						var adn_shop_search_info = "";
						if (typeof(adn_shop_search) != "undefined" && adn_shop_search != null) adn_shop_search_info = adn_shop_search;
					}catch(e){}
						
					try {	
						if(/Mobi/.test(navigator.userAgent))
						{
							$.ajax({
								url: p_url,    
								type: "GET",
								crossDomain: true,
								data: { goods: adn_goods_items_info, sw: adn_shop_search_info },
								dataType: "jsonp",  
								success:function(data){
									if (data.status == "1") {
								  	adn_bottom_status = data.bottom;
										adn_suggestad_types = data.types;
										var adn_suggestad_types_1st = data.types_1st;
										var adn_suggestad_types_2st = data.types_2st;
										
								    $("#"+suggest_mobile_wrap_id).html(data.infos );   
				
								    $("#"+suggest_mobile_wrap_id).css({"padding":"5px 10px 5px 10px"});
								    
								    $("#"+suggest_mobile_wrap_id).show();
								    
								    $("#now_page_num").text(1);
								    var tab_id = $('.adn_banner_wrap .adn_tab_content:first').attr('id');
								    var tab02_id = $('.adn_banner_wrap .adn_tab_content_type02:first').attr('id');
								    var tab03_id = $('.adn_banner_wrap .adn_tab_content_type03:first').attr('id');
								    
								    if(adn_suggestad_types==4)
								    {
									    if(tab03_id)
									    {
									    	//page_count = jQuery("#"+tab_id).data("pagecount");
									    	page_count = document.getElementById(tab03_id).dataset.pagecount;
									    	$("#page_total_type03").text(page_count);
									    }
								    }
								    else if(adn_suggestad_types==3 && adn_suggestad_types_1st==0)
								    {
									    if(tab_id)
									    {
									    	page_count = $("#"+tab_id).data("pagecount");
									    	$("#page_total").text(page_count);
									    }
								    }
								    else if(adn_suggestad_types==3 && adn_suggestad_types_2st==0)
								    {
									    if(tab02_id)
									    {
										    page_count = $("#"+tab02_id).data("pagecount");
										    $("#page_total_type02").text(page_count);
										  }
								    }
								    else if(adn_suggestad_types!=3)
								    {
									    if(tab_id)
									    {
									    	page_count = $("#"+tab_id).data("pagecount");
									    	$("#page_total").text(page_count);
									    }
									    if(tab02_id)
									    {
										    page_count = $("#"+tab02_id).data("pagecount");
										    $("#page_total_type02").text(page_count);
										  }
								    }
									  
										$(".adn_banner_wrap .adn_tab_content").hide();
										$(".adn_banner_wrap .adn_tab_content:first").show();
										
										$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
								    $(".goods_page_1").show();
								    
										$(".adn_banner_wrap .adn_tab_content_type02").hide();
										$(".adn_banner_wrap .adn_tab_content_type02:first").show();
								    
										$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
										
								    $(".goods_page_type02_1").show();
								    
								    
										$(".adn_banner_wrap .adn_tab_content_type03").hide();
										$(".adn_banner_wrap .adn_tab_content_type03:first").show();
								    
										$(".adn_banner_wrap .adn_tab_content_type03 .goods_page_items").hide();
										
								    $(".goods_page_type03_1").show();	
										
										$(".adn_paging_number").css("margin-top", "-20px");
										
										/*
										if(adn_suggestad_types=="1")
										{
											fnc_adn_detectswipe('adn_hash_tab01', 1, fnc_adn_swipe_page);
										}
										else if(adn_suggestad_types=="2")
										{
											fnc_adn_detectswipe('adn_hash_tab01_type02', 2, fnc_adn_swipe_page);
										}
										else
										{
											if(adn_suggestad_types_2st==1) fnc_adn_detectswipe('adn_hash_tab01', 1, fnc_adn_swipe_page);
											else if(adn_suggestad_types_1st==1) fnc_adn_detectswipe('adn_hash_tab01_type02', 2, fnc_adn_swipe_page);
										}
										*/
										
							      var imp_url = "https://kn.acrosspf.com/log/m_suggestad_imp.ad?ui=" + ui + "&ci=" + ci + "&gi=" + gi + "&rnd=" + Math.floor(Math.random() * 99999999999);
							      var imp_id = "adn_suggestad_imp_" + Math.floor(Math.random() * 99999999999);
							      var a = document.createElement("DIV");
							      a.setAttribute("id", imp_id);
							      a.setAttribute("style", "display:none;width:0px;height:0px;");
							      document.getElementById(suggest_mobile_wrap_id).appendChild(a);
							      fn_adn_suggestad_frm_send(imp_id, imp_url);
								  }
								},
								error:function(xhr,status,error){
								   console.log(status)
								}
							});  
						}
					}catch(e){}
						
					//$(function() {			
						try{
							$("body").delegate(".left_btn", "click",  function() {
								page_num = page_num - 1;
							
								
								if(page_num<=0) page_num = page_count;
								$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
								$(".goods_page_"+page_num).show();
								$("#now_page_num").text(page_num);
							});
						}catch(e){}
							
						try{	
							$("body").delegate(".right_btn","click",  function() {
								page_num = page_num + 1;
							
								
								if(page_num>page_count) page_num = 1;
								$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
								$(".goods_page_"+page_num).show();
								$("#now_page_num").text(page_num);
							});
						}catch(e){}	
							
						try{
							$("body").delegate(".adn_banner_wrap .tab_category li", "click", function() {
								$(".adn_banner_wrap .tab_category li").removeClass("active").css("color", "#8f8f8f");
								$(this).addClass("active").css("color", "#f24d4d");
								$(".adn_banner_wrap .adn_tab_content").hide();
								
								var activeTab = $(this).attr("rel");
								$("#" + activeTab).fadeIn()
								page_count = $("#" + activeTab).data("pagecount");
								
								$(".adn_banner_wrap .adn_tab_content .goods_page_items").hide();
								
								page_num = 1; 
								$("#now_page_num").text(1);  
								$("#page_total").text(page_count);
								$(".goods_page_1").show();
								
								/*fnc_adn_detectswipe(activeTab, 1, fnc_adn_swipe_page);*/
								
							});
						}catch(e){}	
						
						try{	
							$("body").delegate(".left_btn_type02", "click",  function() {
								page_num = page_num - 1;
								
							
								if(page_num<=0) page_num = page_count;
								$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
								$(".goods_page_type02_"+page_num).show();
								$("#now_page_num_type02").text(page_num);
							});
						}catch(e){}
								
						try{
							$("body").delegate(".right_btn_type02", "click",  function() {
								page_num = page_num + 1;
								
								
								if(page_num>page_count) page_num = 1;
								$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
								$(".goods_page_type02_"+page_num).show();
								$("#now_page_num_type02").text(page_num);
							});
						}catch(e){}
			
						try{		
							$("body").delegate(".adn_banner_wrap .tab_category_type02 li", "click",  function() {
							    $(".adn_banner_wrap .tab_category_type02 li").removeClass("active").css("color", "#8f8f8f");
							    $(this).addClass("active").css("color", "#f24d4d");
							    $(".adn_banner_wrap .adn_tab_content_type02").hide();
							    
							    var activeTab = $(this).attr("rel");
							    $("#" + activeTab).fadeIn();
							    page_count = $("#" + activeTab).data("pagecount");    
							    
									$(".adn_banner_wrap .adn_tab_content_type02 .goods_page_items").hide();
									
									page_num = 1; 
									$("#now_page_num_type02").text(1);  
									$("#page_total_type02").text(page_count);
									$(".goods_page_type02_1").show();
									
									/*fnc_adn_detectswipe(activeTab, 2, fnc_adn_swipe_page);*/
							});
						}catch(e){}
							
							
						try{	
							jQuery("body").delegate(".left_btn_type03", "click",  function() {
								page_num = page_num - 1;
								
							
								if(page_num<=0) page_num = page_count;
								jQuery(".adn_banner_wrap .adn_tab_content_type03 .goods_page_items").hide();
								jQuery(".goods_page_type03_"+page_num).show();
								jQuery("#now_page_num_type03").text(page_num);
							});
						}catch(e){}
								
						try{
							jQuery("body").delegate(".right_btn_type03", "click",  function() {
								page_num = page_num + 1;
								
								
								if(page_num>page_count) page_num = 1;
								jQuery(".adn_banner_wrap .adn_tab_content_type03 .goods_page_items").hide();
								jQuery(".goods_page_type03_"+page_num).show();
								jQuery("#now_page_num_type03").text(page_num);
							});
						}catch(e){}
							
							
							
						try{		
							jQuery("body").delegate(".adn_banner_wrap .tab_category_type03 li", "click",  function() {
							    jQuery(".adn_banner_wrap .tab_category_type03 li").removeClass("active").css("color", "#8f8f8f");
							    jQuery(this).addClass("active").css("color", "#f24d4d");
							    jQuery(".adn_banner_wrap .adn_tab_content_type03").hide();
							    
							    var activeTab = jQuery(this).attr("rel");
							    jQuery("#" + activeTab).fadeIn();
							    page_count = jQuery("#" + activeTab).data("pagecount");    
							    
									jQuery(".adn_banner_wrap .adn_tab_content_type03 .goods_page_items").hide();
									
									page_num = 1; 
									jQuery("#now_page_num_type03").text(1);  
									jQuery("#page_total_type03").text(page_count);
									jQuery(".goods_page_type03_1").show();
									
									fnc_adn_detectswipe(activeTab, 4, fnc_adn_swipe_page);
							});
						}catch(e){}
							
						try{		
							jQuery("body").delegate(".nav_dot li", "mouseenter", function() {
								$(".adn_event_banner_wrap .adn_event .nav_dot li").removeClass("active").css("color", "#ffffff");
								var active_id = $(this).attr("id");
								var active_thumb_id = $(this).attr("rel");
								$("#"+active_id).addClass("active");
								if($("#"+active_thumb_id).css("display")=="none")
								{
									$(".adn_event_banner_wrap .adn_event .adn_image_box .adn_event_images").hide();
									$("#"+active_thumb_id).fadeIn(0);
								}
							});
						}catch(e){}	
					//}); 
				} catch (e) {}
			}		
	});
	
});	