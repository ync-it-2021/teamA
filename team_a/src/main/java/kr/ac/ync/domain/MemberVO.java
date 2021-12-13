package kr.ac.ync.domain;

import java.sql.Timestamp;
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
	
	
}
 