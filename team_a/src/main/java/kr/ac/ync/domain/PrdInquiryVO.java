package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PrdInquiryVO {

	private int pi_idx;
	private int prd_idx;
	private String member_id;
	private String pi_contents;
	private Date pi_write_day;
	private String pi_reply;
	private String pi_replyer;
	private Date pi_reply_day;
	private String pi_hidden;
	private String pi_del;
}
