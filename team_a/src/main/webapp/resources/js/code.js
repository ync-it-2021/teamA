function make_select_code(choice,choice_array,name,class_name,add,wid,minusTag,minus,d_val,write_doc) //��ü,�迭,�̸�,Ŭ������,�߰�����,����ũ��,�߰��Լ�(select�� ����, radio,checkbox�� �Լ��߰�),Ư������Ÿ ����,���ð�,document.write ���� �ʴ´�.
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
					rValue.push('<optgroup label="�� '+ this_array[i][0] +'"></optgroup>')
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
				rValue.push('</div><span style="white-space:nowrap;cursor:pointer;font-weight:bold" onclick=make_choice_fnc("'+ name + this_array[i][1] +'");'+ func +'>�� '+this_array[i][0]+'</span><br><div id="search_' + name + this_array[i][1] +'" name="search_' + name + this_array[i][1] +'" style="display:none">')
			} else {
				rValue.push('</div><span style="white-space:nowrap;cursor:pointer;font-weight:bold" onclick=make_choice_fnc("'+ name + this_array[i][1] +'")>�� '+this_array[i][0]+'</span><br><div id="search_'+ name + this_array[i][1] +'" name="search_'+ name + this_array[i][1] +'" style="display:none">')
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
manage_marriage.push(new Array("��ȥ","n"))
manage_marriage.push(new Array("��ȥ","y"))

manage_emploee = new Array()
manage_emploee.push(new Array("����","y"))
manage_emploee.push(new Array("���","n"))
manage_emploee.push(new Array("���","x"))

manage_duty = new Array()
manage_duty.push(new Array("ȸ��","0"))
manage_duty.push(new Array("����","1"))
manage_duty.push(new Array("�λ���","2"))
manage_duty.push(new Array("����","14")) //������ �Ҵ�
manage_duty.push(new Array("��","11"))
manage_duty.push(new Array("�̻�","3"))
manage_duty.push(new Array("����","4"))
manage_duty.push(new Array("����","5"))
manage_duty.push(new Array("����","6"))
manage_duty.push(new Array("�븮","7"))
manage_duty.push(new Array("����","12"))
manage_duty.push(new Array("���","8"))
manage_duty.push(new Array("�ɻ������","9"))
manage_duty.push(new Array("������","10"))
manage_duty.push(new Array("3pl���","13"))


moon = new Array()
moon.push(new Array("���","1"))
moon.push(new Array("����","2"))

sex = new Array()
sex.push(new Array("��","1"))
sex.push(new Array("��","2"))

petGubun = new Array()
petGubun.push(new Array("������","1"))
petGubun.push(new Array("�����","2"))
petGubun.push(new Array("��Ÿ","0"))

yesOrNo = new Array()
yesOrNo.push(new Array("��","y"))
yesOrNo.push(new Array("�ƴϿ�","n"))


membership = new Array()
membership.push(new Array("�����","Y"))
membership.push(new Array("�Ϲ�","N"))

mem_gubun = new Array()
mem_gubun.push(new Array("�Ϲ�","1"))
mem_gubun.push(new Array("ü���","3"))


title_location = new Array()
title_location.push(new Array("�� Front","1","chk"))
title_location.push(new Array("Back ��","2","chk"))
title_location.push(new Array("�������","3","chk"))
title_location.push(new Array("Ÿ���","4"))
title_location.push(new Array("�׷�","5"))


userrank = new Array()
userrank.push(new Array("�ű� ����","1","chk"))
userrank.push(new Array("�ʴ��","6"))
userrank.push(new Array("�Ϲ� ����","7","chk"))
userrank.push(new Array("��� ����","8","chk"))
userrank.push(new Array("VIP ����","9","chk"))
userrank.push(new Array("1% ����","10","chk"))
userrank.push(new Array("GUEST","99"))

tel = new Array()
tel.push(new Array("02 (����)","02"))
tel.push(new Array("032 (��õ)","032"))
tel.push(new Array("042 (����)","042"))
tel.push(new Array("062 (����)","062"))
tel.push(new Array("053 (�뱸)","053"))
tel.push(new Array("052 (���)","052"))
tel.push(new Array("051 (�λ�)","051"))
tel.push(new Array("031 (���)","031"))
tel.push(new Array("033 (������)","033"))
tel.push(new Array("043 (���)","043"))
tel.push(new Array("041 (�泲)","041"))
tel.push(new Array("063 (����)","063"))
tel.push(new Array("061 (����)","061"))
tel.push(new Array("054 (���)","054"))
tel.push(new Array("055 (�泲)","055"))
tel.push(new Array("064 (���ֵ�)","064"))
tel.push(new Array("070 (���ͳ�)","070"))
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

//���� tel, handphone�� �Ʒ������� ��ó�ϰ� �����Ұ�.2018-10-11
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
allphone.push(new Array("02 (����)","02","tel"))
allphone.push(new Array("032 (��õ)","032","tel"))
allphone.push(new Array("042 (����)","042","tel"))
allphone.push(new Array("062 (����)","062","tel"))
allphone.push(new Array("053 (�뱸)","053","tel"))
allphone.push(new Array("052 (���)","052","tel"))
allphone.push(new Array("051 (�λ�)","051","tel"))
allphone.push(new Array("031 (���)","031","tel"))
allphone.push(new Array("033 (������)","033","tel"))
allphone.push(new Array("043 (���)","043","tel"))
allphone.push(new Array("041 (�泲)","041","tel"))
allphone.push(new Array("063 (����)","063","tel"))
allphone.push(new Array("061 (����)","061","tel"))
allphone.push(new Array("054 (���)","054","tel"))
allphone.push(new Array("055 (�泲)","055","tel"))
allphone.push(new Array("064 (���ֵ�)","064","tel"))
allphone.push(new Array("070 (���ͳ�)","070","tel"))

money_use = new Array()
money_use.push(new Array("�ҵ������","1"))
money_use.push(new Array("����������","2"))
money_use.push(new Array("��������","3"))

coupon_target = new Array()
coupon_target.push(new Array("<font color='red'>����</font>","1"))
coupon_target.push(new Array("<font color='blue'>�ǸŰ�</font>","2"))

coupon_month = new Array()
coupon_month.push(new Array("��ȿ�Ⱓ�� ����","0"))
coupon_month.push(new Array("1���� �̳�","1"))
coupon_month.push(new Array("3���� �̳�","3"))
coupon_month.push(new Array("6���� �̳�","6"))
coupon_month.push(new Array("1�� �̳�","12"))
coupon_month.push(new Array("����","120"))

coupon_site = new Array()
coupon_site.push(new Array("��ü","1"))
coupon_site.push(new Array("����","2"))

payresult_arr = new Array()
payresult_arr.push(new Array("�������","0","chk"))
payresult_arr.push(new Array("����ڿϷ�","8","chk"))
payresult_arr.push(new Array("�����Ϸ�","9","chk"))
payresult_arr.push(new Array("ȯ�޿Ϸ�","10","chk"))

paymode_arr = new Array()
paymode_arr.push(new Array("ī�����","1","chk"))
paymode_arr.push(new Array("�������Ա�","3","chk"))
paymode_arr.push(new Array("����ó��","4"))
paymode_arr.push(new Array("����ũ��","5","chk"))
paymode_arr.push(new Array("0�� ����","6"))
paymode_arr.push(new Array("�޴�������","8", "chk"))
paymode_arr.push(new Array("�������Ա�(�������)","10","chk"))

delivery = new Array()
delivery.push(new Array("�������","1","chk"))
delivery.push(new Array("�����Ϸ�","2","chk"))
delivery.push(new Array("��ǰ�غ�","8","chk"))
delivery.push(new Array("�߼��غ�","3","chk"))
delivery.push(new Array("�߼��غ�(�Ϻ�)","4"))
delivery.push(new Array("�߼ۿϷ�(�Ϻ�)","5"))
delivery.push(new Array("�߼ۿϷ�","6","chk"))
delivery.push(new Array("�߼ۿϷ�(��)","7","chk"))
delivery.push(new Array("�ֹ����","99"))

pointPart = new Array()
pointPart.push(new Array("����(+)","����"))
pointPart.push(new Array("���(-)","���"))
pointPart.push(new Array("������(+)","������"))
pointPart.push(new Array("�ֹ����(-)","�ֹ����"))
pointPart.push(new Array("����(-)","����"))

pointGubun = new Array()
pointGubun.push(new Array("�귣��","0"))

bank_name = new Array()
bank_name.push(new Array("�Աݳ�������","�Աݳ�������"))
bank_name.push(new Array("��������","��������"))
bank_name.push(new Array("�������","�������"))
bank_name.push(new Array("����","����"))
bank_name.push(new Array("�츮����","�츮����"))
bank_name.push(new Array("��ü��","��ü��"))
bank_name.push(new Array("��ȯ����","��ȯ����"))
bank_name.push(new Array("�������","�������"))
bank_name.push(new Array("��������","����(�� ����)����"))
bank_name.push(new Array("��Ƽ����","��Ƽ����"))
bank_name.push(new Array("��������","��������"))
bank_name.push(new Array("�ϳ�����","�ϳ�����"))
bank_name.push(new Array("�ѹ�����","�ѹ�����"))

job = new Array()
job.push(new Array("���� �ֺ�","1"))
job.push(new Array("�� ����/����","2"))
job.push(new Array("������/����","3"))
job.push(new Array("����/�Ʒ�","4"))
job.push(new Array("����","5"))
job.push(new Array("���/�����","6"))
job.push(new Array("�����Ͼ","7"))
job.push(new Array("���� �� ����","8"))
job.push(new Array("����/������/����","9"))
job.push(new Array("������/�ڿ���","10"))
job.push(new Array("������(�ǻ�, ��ȣ�� ��)","11"))
job.push(new Array("���� ����","12"))
job.push(new Array("����/����/�����","13"))
job.push(new Array("�ѹ�/����","14"))
job.push(new Array("������","15"))
job.push(new Array("��ǻ�� ����(��Ÿ)","16"))
job.push(new Array("��ǻ�� ����(���ͳ�)","17"))
job.push(new Array("�л�","18"))
job.push(new Array("����/�濵","19"))
job.push(new Array("ȸ��/�繫","20"))
job.push(new Array("��Ÿ","21"))

bankname = new Array()
bankname.push(new Array("�츮���� : 1005-903-231242 (��)�ڶ쿤��","1"))
bankname.push(new Array("�������� : 140-011-804260 (��)�ڶ쿤��","2"))
bankname.push(new Array("�������� : 547801-04-177204 (��)�ڶ쿤��","3"))
bankname.push(new Array("���� : 301-0214-9379-71 (��)�ڶ쿤��","4"))


bankname2 = new Array()
bankname2.push(new Array("�ѱ��������", "02"))
bankname2.push(new Array("�������", "03"))
bankname2.push(new Array("��������", "04"))
bankname2.push(new Array("�ϳ�����", "05"))
bankname2.push(new Array("��������", "06"))
bankname2.push(new Array("�����߾�ȸ", "07"))
bankname2.push(new Array("�����߾�ȸ", "11"))
bankname2.push(new Array("��������", "12"))
bankname2.push(new Array("�����߾�ȸ", "16"))
bankname2.push(new Array("�츮����", "20"))
bankname2.push(new Array("�� ��������", "21"))
bankname2.push(new Array("�������", "22"))
bankname2.push(new Array("SC ��������", "23"))
bankname2.push(new Array("��������", "24"))
bankname2.push(new Array("��������", "25"))
bankname2.push(new Array("�� ��������", "26"))
bankname2.push(new Array("�ѱ���Ƽ����", "27"))
bankname2.push(new Array("�뱸����", "31"))
bankname2.push(new Array("�λ�����", "32"))
bankname2.push(new Array("��������", "34"))
bankname2.push(new Array("��������", "35"))
bankname2.push(new Array("��������", "37"))
bankname2.push(new Array("��������", "38"))
bankname2.push(new Array("�泲����", "39"))
bankname2.push(new Array("��ī��", "41"))
bankname2.push(new Array("�������ݰ�", "45"))
bankname2.push(new Array("�ſ����������߾�ȸ", "48"))
bankname2.push(new Array("��ȣ��������", "50"))
bankname2.push(new Array("�ѱ���Ƽ����", "53"))
bankname2.push(new Array("ȫ�����������", "54"))
bankname2.push(new Array("����ġ����", "55"))
bankname2.push(new Array("ABN�Ϸ�", "56"))
bankname2.push(new Array("JP���", "57"))
bankname2.push(new Array("�̾���õ�������", "59"))
bankname2.push(new Array("BOA(Bank of America)", "60"))
bankname2.push(new Array("�긲����", "64"))
bankname2.push(new Array("�žȻ�ȣ��������", "70"))
bankname2.push(new Array("��ü��", "71"))
bankname2.push(new Array("�ϳ�����", "81"))
bankname2.push(new Array("��ȭ����", "83"))
bankname2.push(new Array("�ż���", "87"))
bankname2.push(new Array("���� ���� ����", "88"))
bankname2.push(new Array("���̹�ũ", "89"))
bankname2.push(new Array("īī����ũ", "90"))



csGubun = new Array()
csGubun.push(new Array("�ֹ�","10000"))
csGubun.push(new Array("�ֹ����","1","chk"))
csGubun.push(new Array("��ȯ��û","6","chk"))
csGubun.push(new Array("��ǰ��û","7","chk"))
csGubun.push(new Array("�κ����/ȯ��","12","chk"))
csGubun.push(new Array("��ǰ","20000"))
csGubun.push(new Array("��ǰ����","4","chk"))
csGubun.push(new Array("��ǰ�ҷ�","9","chk"))
csGubun.push(new Array("��ǰ����","11","chk"))
csGubun.push(new Array("��ǰ�ɼǺ���","2","chk"))
csGubun.push(new Array("���","30000"))
csGubun.push(new Array("��۹���/����","5","chk"))
csGubun.push(new Array("�����������","3","chk"))
csGubun.push(new Array("�����","10","chk"))
csGubun.push(new Array("��Ÿ","8","chk"))
csGubun.push(new Array("����","40000"))
csGubun.push(new Array("ȸ���Ϸ�","13","chk"))
csGubun.push(new Array("ȸ����ǰ","14","chk"))



//view_order_list_excel_new ����
//tasa : Ÿ�������(���ּ�/���� ���, ����, �����丮)���� Ÿ����� ���̵��� ����
//divide : �系��������(�Ǻ�����, �뷮����)���� �����.
//md : md ��ǰ�������� ������ ��
//q33 : CS��㳻������ ��� ��.
market = new Array()
market.push(new Array("�ڻ�","1","chk","q33","md","manage"))

market.push(new Array("G����","2","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("������ũ","3","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("GS�̼�","4","chk","q33","md","tasa"))
market.push(new Array("�Ե�����","5","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("�Ե���","58","chk","q33","md","tasa","autoplay","manage")) //------------------------------------������ �Ҵ�
//market.push(new Array("�Ե�����[��]","6","chk","q33","tasa")) //2015-12-07 ���ҹ� �����û���� ����
market.push(new Array("�ż���","7","chk","q33","md","tasa","autoplay"))
market.push(new Array("CJ��","8","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("AK��(��)","9","chk","q33","tasa")) //2015-12-07 ���ҹ� �����û���� ����
market.push(new Array("11����","10","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("10x10","11","chk","q33","md","tasa"))
//market.push(new Array("��������","12","chk","q33","md","tasa"))
//market.push(new Array("�ż���(��)","13","chk","q33","tasa")) //2015-12-07 ���ҹ� �����û���� ����
//market.push(new Array("����","14","q33")) //2015-03-16 �� �ŷ����� ó��
//market.push(new Array("����(��)","15","q33")) //2015-03-16 �� �ŷ����� ó��
market.push(new Array("����","17","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("����","18","chk","q33","md","tasa","autoplay"))
//market.push(new Array("��������","22","q33")) //2015-03-16 �� �ŷ����� ó��
//market.push(new Array("��縮��","23","q33")) //2015-03-16 �� �ŷ����� ó��
market.push(new Array("�Ե�����","26","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("Ƽ��","28","chk","q33","md","tasa","autoplay","manage"))

//market.push(new Array("�Ե�Ȩ����","29","chk","q33","tasa"))
//market.push(new Array("����Ȩ����","30","chk","q33","tasa"))
//market.push(new Array("������","35","chk","q33","md","tasa"))
//market.push(new Array("��������","36","chk","q33","md","tasa"))

//market.push(new Array("����","37","chk","q33","md","tasa"))
market.push(new Array("������","38","chk","q33","md","tasa","autoplay","manage"))
market.push(new Array("AK��","39","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("����īī��","43","chk","q33","md","tasa"))
market.push(new Array("�̸�Ʈ��","45","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("�ڶ쿤�������","46","chk","q33","md","tasa"))
//market.push(new Array("�ڶ켭������","47","chk","q33","md","tasa"))
market.push(new Array("�������","48","chk","q33","md","tasa","autoplay","manage"))
//market.push(new Array("����(�Ϲ�)","50","chk","q33","md","tasa"))
market.push(new Array("�����������","52","chk","q33","md","tasa"))
market.push(new Array("����̴����","53","chk","q33","md","tasa"))
market.push(new Array("�̷����","54","chk","q33","md","tasa","autoplay"))
market.push(new Array("������(��)","56","chk","q33","md","tasa","autoplay","manage"))

market.push(new Array("�͵���","57","chk","q33","md","tasa"))
market.push(new Array("Ȩ�ؼ���","59","chk","q33","md","tasa","autoplay","manage"))


market.push(new Array("����ü��(MKT)","20","chk2","q33","divide"))
market.push(new Array("����ü��(MD)","44","chk2","q33","divide"))
market.push(new Array("����ü��(BM)","51","chk2","q33","divide"))
market.push(new Array("�˻�/����(����/BM)","24","chk2","q33","divide"))
market.push(new Array("�ŷ�ó����","32","chk2","q33","divide"))
market.push(new Array("���","55","chk2","q33","divide"))
market.push(new Array("���ų�������(CS)","34","chk2","q33","divide"))
market.push(new Array("����","33","chk2","q33","divide"))
market.push(new Array("����","21","chk2","q33"))
market.push(new Array("��������","19","chk2","q33"))
market.push(new Array("���⿵��","27","chk2","q33","divide"))
market.push(new Array("B2B������(��������)","40","chk2","q33"))
market.push(new Array("B2B������(����)","41","chk2","q33"))
market.push(new Array("B2BMD(����)","46","chk2","q33"))
//market.push(new Array("��������","42","chk2","q33","divide"))
market.push(new Array("��������","49","chk2","q33","divide"))


offline = new Array()
offline.push(new Array("��������","1"))
offline.push(new Array("����","2"))

reOrder = new Array()
reOrder.push(new Array("�����","1"))
reOrder.push(new Array("����","2"))
reOrder.push(new Array("�����","3"))
reOrder.push(new Array("��ȯ(�ܼ�����)","4"))
reOrder.push(new Array("�ҷ�","5"))
reOrder.push(new Array("��Ÿ","6"))
reOrder.push(new Array("Ÿ�������","7"))
reOrder.push(new Array("����(�˼���û)","8"))
reOrder.push(new Array("�ҷ�(�˼���û)","9"))

duplicateDivide = new Array()
duplicateDivide.push(new Array("�⺻����","1"))
duplicateDivide.push(new Array("ü��ܸ���","2"))
duplicateDivide.push(new Array("����ü��","3"))


MD_brand = new Array()
MD_brand.push(new Array("��ƼƩ��:AT","3","chk"))
MD_brand.push(new Array("���ε���:EP","20","chk"))
MD_brand.push(new Array("���÷�:KP","21","chk"))
MD_brand.push(new Array("����:MS","22","chk"))
MD_brand.push(new Array("����Ʈ�긮��:BB","54","chk"))
MD_brand.push(new Array("��׾ط�:DR","73","chk"))
MD_brand.push(new Array("�����:WG","74","chk"))
MD_brand.push(new Array("���̽�������:IP","82","chk"))
MD_brand.push(new Array("����Ǯ:EF","100","chk"))
MD_brand.push(new Array("ī����:CN","101","chk"))
MD_brand.push(new Array("��Ʈ���:MR","4"))
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


//�˾�â �ڵ� ���� ����(���� ����Ʈ URL�� �Է��Ͻʽÿ�.)
Site_popup = new Array()
Site_popup.push(new Array("furryfriends","3"))
Site_popup.push(new Array("prodoggie","20"))
Site_popup.push(new Array("komplett","21"))
Site_popup.push(new Array("mars","22"))
Site_popup.push(new Array("bestBreed","54"))
Site_popup.push(new Array("eggfull","100"))
Site_popup.push(new Array("carna4","101"))
Site_popup.push(new Array("montraum","4"));

//����� ���� �귣��
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
Product_status.push(new Array("<font color='red'>[��]</font>","1","chk"))
Product_status.push(new Array("<font color='blue'>[ǰ]</font>","2","chk"))
Product_status.push(new Array("<font color='green'>[��]</font>","3","chk"))
Product_status.push(new Array("[��]","4","chk"))
Product_status.push(new Array("<font color='red'>[�ϴ�]</font>","5"))
Product_status.push(new Array("<font color='blue'>[��ǰ]</font>","6"))
Product_status.push(new Array("<font color='green'>[�Ͽ�]</font>","7"))
Product_status.push(new Array("[����]","8"))


SNS_brand = new Array()
SNS_brand.push(new Array("�ν�Ÿ�׷�", "1", "chk"))
SNS_brand.push(new Array("���̽���", "2", "chk"))
SNS_brand.push(new Array("īī�����丮", "3", "chk"))
SNS_brand.push(new Array("��Ÿ", "4", "chk"))