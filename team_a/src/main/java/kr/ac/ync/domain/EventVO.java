package kr.ac.ync.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	
	
	public void setEvt_start_day(String getDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(getDate.isEmpty()) {
			this.evt_start_day = null;
		}else {
		Date date = new Date(sdf.parse(getDate).getTime());
		this.evt_start_day = date;
		}
	}
	
	public void setEvt_end_day(String getDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(getDate.isEmpty()) {
			this.evt_end_day = null;
		}else {
		Date date = new Date(sdf.parse(getDate).getTime());
		this.evt_end_day = date;
		}
	}
	
	
	
	
	
	
	
}
