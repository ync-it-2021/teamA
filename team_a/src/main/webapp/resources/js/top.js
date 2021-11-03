try {
	selectArray = new Array()
	selectArray.push(new Array("faq","members","/notice/notice","/review","/press"))
	selectArray.push(new Array("buy_list","order_","wish_list","my","myreview_","qanda","member_edit","member_out","payresult","inipay_","baesong_addr","INIsecure"))
	selectArray.push(new Array("join_","logincart","loginfree","login.","searchidinfo","agreement","privacy"))
	selectArray.push(new Array("brand","aboutus", "site_map"))
	selectArray.push(new Array("event", "shopbest"))

	menuArray0 = new Array()
	menuArray0.push(new Array(new Array("faq"),new Array("a_c_01.html","/common/all_site/faq.asp,/common/all_site/faq.asp,","Community,FAQ", "Community")))
	menuArray0.push(new Array(new Array("members"),new Array("a_c_02.html","/common/all_site/faq.asp,/about/members.asp,","Community,Membership", "Community")))
	menuArray0.push(new Array(new Array("/notice/notice"),new Array("a_c_03.html","/common/all_site/faq.asp,/common/all_site/notice/notice.asp,","Community,Notice", "Community")))
	menuArray0.push(new Array(new Array("/review"),new Array("a_c_05.html","/common/all_site/faq.asp,/common/process/productAfter/review.asp,","Community,Product Review", "Community")))
	menuArray0.push(new Array(new Array("/press/press"),new Array("a_c_05.html","/common/all_site/faq.asp,/common/all_site/press/press.asp,","Community,News", "Community")))
//	menuArray0.push(new Array(new Array("/press/news"),new Array("/image/banner/menu_common/A_c_05.gif","/common/all_site/faq.asp,/common/all_site/press/news.asp,","Community,News", "Community")))

	menuArray1 = new Array()
	menuArray1.push(new Array(new Array("buy_list"),new Array("a_m_01.html","/common/process/buy_list.asp,/common/process/buy_list.asp,","Mypage,Order List", "Mypage")))
	menuArray1.push(new Array(new Array("order_list"),new Array("a_m_02.html","/common/process/order_list.asp,","Order,장바구니", "Order")))
	menuArray1.push(new Array(new Array("order_buy"),new Array("a_m_02.html","/common/process/order_buy.asp,","Order,주문서작성", "Order")))
	menuArray1.push(new Array(new Array("wish_list"),new Array("a_m_03.html","/common/process/buy_list.asp,/common/process/wish_list.asp,","Mypage,Wish List", "Mypage")))
	menuArray1.push(new Array(new Array("mycoupon","mypoint"),new Array("a_m_04.html","/common/process/buy_list.asp,/common/process/mycoupon.asp,","Mypage,Coupon", "Mypage")))
	menuArray1.push(new Array(new Array("myreview_"),new Array("a_m_05.html","/common/process/buy_list.asp,/common/process/productAfter/myreview_list.asp,","Mypage,review", "Mypage")))
	menuArray1.push(new Array(new Array("qanda"),new Array("a_m_06.html","/common/process/buy_list.asp,/common/process/qanda/list.asp,","Mypage,1:1 QnA", "Mypage")))
	menuArray1.push(new Array(new Array("member_edit"),new Array("a_m_07.html","/common/process/buy_list.asp,/common/all_site/member/member_edit.asp","Mypage,Member Info", "Mypage")))
	menuArray1.push(new Array(new Array("member_out"),new Array("a_m_08.html","/common/process/buy_list.asp,/common/all_site/member/member_out.asp,","Mypage,Withdraw", "Mypage")))
	menuArray1.push(new Array(new Array("payresult"),new Array("a_m_02.html","/common/process/payresult.asp,","Order,주문완료", "Order")))
	menuArray1.push(new Array(new Array("inipay_"),new Array("a_m_02.html","/common/process/payresult.asp,","Order,주문완료", "Order")))
	menuArray1.push(new Array(new Array("baesong_addr"),new Array("a_m_08.html","/common/process/buy_list.asp,/common/process/baesong_addr.asp,","Mypage,주소록 관리", "Mypage")))
	menuArray1.push(new Array(new Array("INIsecure"),new Array("a_m_02.html","/common/process/payresult.asp,","Order,주문완료", "Order")))
		
	menuArray2 = new Array()
	menuArray2.push(new Array(new Array("join_"),new Array("a_mb_01.html","/about/members.asp,","LOGIN", "LOGIN")))
	
	menuArray2.push(new Array(new Array("logincart"),new Array("a_mb_02.html","/common/process/order_list.asp,/common/process/etc/logincart.asp,","Order, Login", "Login")))
	menuArray2.push(new Array(new Array("loginfree"),new Array("a_mb_02.html","/common/process/order_list.asp,/common/process/etc/loginfree.asp,","Order,Login", "Login")))
	menuArray2.push(new Array(new Array("login."),new Array("a_mb_02.html","/about/members.asp,/common/all_site/member/login.asp,","Login", "Login")))
	
	menuArray2.push(new Array(new Array("searchidinfo"),new Array("a_mb_03.html","/about/members.asp,/common/all_site/member/searchidinfo.asp,","Member,아이디/비밀번호찾기", "아이디/비밀번호찾기")))
	menuArray2.push(new Array(new Array("agreement"),new Array("a_mb_04.html","/about/members.asp,/common/all_site/help/agreement.asp,","Member,이용약관", "이용약관")))
	menuArray2.push(new Array(new Array("privacy"),new Array("a_mb_05.html","/about/members.asp,/common/all_site/help/privacy.asp,","Member,개인정보처리방침", "개인정보처리방침")))

	menuArray3 = new Array()
	menuArray3.push(new Array(new Array("brand"),new Array("a_am_01.html","/About/brand.asp,/About/brand.asp,","Introduce,Brand Story", "Brand Story")))
	menuArray3.push(new Array(new Array("aboutus"),new Array("a_am_02.html","/About/brand.asp,/About/aboutus.asp,","Introduce,Contact Us", "Contact Us")))
	menuArray3.push(new Array(new Array("site_map"),new Array("a_am_02.html","/About/brand.asp,/About/aboutus.asp,","Introduce,Site Map", "Site Map")))

	menuArray4 = new Array()	
	menuArray4.push(new Array(new Array("event"),new Array("shopping_01.html","event-2.html","Event", "Event")))
	menuArray4.push(new Array(new Array("shopbest"),new Array("shopping_01.html","shopbest.html","Best", "Best")))

	menuTitle = new Array()
	menuTitle.push (new Array("a_c_00.html",menuArray0,"a_sub_cs.html"))
	menuTitle.push (new Array("a_m_00.html",menuArray1,"a_sub_mypage.html"))
	menuTitle.push (new Array("a_mb_00.html" ,menuArray2,"a_sub_member.html"))
	menuTitle.push (new Array("a_am_00.html",menuArray3,"a_sub_aboutamoretto.html"))
	menuTitle.push (new Array("shopping_00.html",menuArray4,"a_sub_shoppingissue.html"))


	choiceTitle = searchTitle()
	choiceArray = menuTitle[choiceTitle][1]
	choiceMenu = searchMenu(choiceArray)
	
	var siteTitle="";
	var navistr="";
	
	for (var i=0 ; i<choiceArray.length ; i++) {		
		if (i==choiceMenu){
			//타이틀 네비게이션
			navistr ="<span onclick=\"location.href='/'\" style='cursor:pointer'/>Home</span>";
			for(j=0; j < choiceArray[i][1][2].split(",").length ;j++ ){				
				navistr += "<span ";
				if (choiceArray[i][1][1].split(",")[j] !="") navistr += " onclick=\"location.href='"+ choiceArray[i][1][1].split(",")[j] +"'\" style='cursor:pointer'";
				if (choiceArray[i][1][2].split(",").length-1 == j) navistr += " class='current'";
				
				navistr += ">"+	choiceArray[i][1][2].split(",")[j];
				navistr +=" </span>";
			}	
		siteTitle = choiceArray[i][1][3];
		}
	}



	
} catch(err) {

}

