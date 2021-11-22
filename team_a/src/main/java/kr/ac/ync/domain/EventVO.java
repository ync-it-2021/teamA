package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class EventVO {

	private int evt_idx;
	private String evt_title;
	private	Date evt_start_day;
	private Date evt_end_day;
	private String evt_main_img;
	private String evt_header_img;
	private	String evt_content_img;
	private String evt_move_uri;
	private int prd_idx;
	private String evt_del;
}
