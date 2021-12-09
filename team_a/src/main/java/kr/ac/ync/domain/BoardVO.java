package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int bd_idx;
	private String bd_code;
	private String bd_title;
	private String bd_contents;
	private String member_id;
	private Date bd_date;
	private String bd_img1;
	private String bd_img2;
	private String bd_img3;
	private String bd_img4;
	private String bd_img5;
	private String bd_del;
	private int bd_cnt;
	private int bd_comment_cnt;
	private int bd_good_cnt;
	private int bd_bad_cnt;
	
}
