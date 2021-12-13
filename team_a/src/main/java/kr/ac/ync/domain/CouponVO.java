package kr.ac.ync.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class CouponVO {
	
	private Long cp_idx;
	private String member_id;
	private String cp_name;
	private String cp_contents;
	private String cp_use_check;
	private Date cp_register_date;
	private Date cp_end_day;
	private Date cp_useful_day;


public void setCp_register_date(String getDate) throws ParseException {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	if(getDate.isEmpty()) {
		this.cp_register_date = null;
		return;
	}
	Date date = new Date(sdf.parse(getDate).getTime());
	this.cp_register_date = date;
}

public void setCp_end_day(String getDate) throws ParseException {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	if(getDate.isEmpty()) {
		this.cp_end_day = null;
		return;
	}
	Date date = new Date(sdf.parse(getDate).getTime());
	this.cp_end_day = date;
}

public void setCp_useful_day(String getDate) throws ParseException {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	if(getDate.isEmpty()) {
		this.cp_useful_day = null;
		return;
	}
	Date date = new Date(sdf.parse(getDate).getTime());
	this.cp_useful_day = date;
}
}