package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberReviewVO {

	private int review_idx;
	private int od_idx;
	private int prd_idx;
	private String prd_name;
	private String od_details;
	private String review_contents;
	private int review_point;
	private Date review_date;
}
