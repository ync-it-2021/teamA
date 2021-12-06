package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OneInquiryVO {

	
	private int oi_idx;
	private String member_id;
	private String oi_title;
	private String oi_contents;
	private String oi_img;
	private Date oi_date;
	private String oi_reply;
	private Date oi_reply_date;
}
