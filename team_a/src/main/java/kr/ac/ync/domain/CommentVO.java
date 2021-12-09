package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	private int cm_idx;
	private int bd_idx;
	private String member_id;
	private String cm_contents;
	private Date cm_date;
	private int cm_reply_idx;
	private String cm_del;
	private String cm_hidden;
}
