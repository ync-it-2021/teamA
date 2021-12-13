package kr.ac.ync.domain;


import java.sql.Timestamp;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private String member_id;
	private String member_pass;
	private String member_name;
	private String member_email;
	private String member_phone;
	private Date member_birthday;
	private String member_address;
	private int member_grade;
	private int member_mileage;
	private String auth;
	private List<AuthVO> authList;
	

	public void setMember_birthday(String getDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(getDate.isEmpty()) {
			this.member_birthday = null;
			return;
		}
		Date date = new Date(sdf.parse(getDate).getTime());
		this.member_birthday = date;
	}


}
 