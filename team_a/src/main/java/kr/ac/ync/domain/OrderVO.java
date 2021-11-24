package kr.ac.ync.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private int od_idx;
	private	int prd_idx;
	private	String member_id;
	private	Date od_date;
	private	String od_discount;
	private	int od_sale_prices;
	private int od_amount;
	private	String od_details;
	private String od_status;
	private String od_del;
	
	public void setOd_date(String getDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(getDate.isEmpty()) {
			this.od_date = null;
			return;
		}
		Date date = new Date(sdf.parse(getDate).getTime());
		this.od_date = date;
	}
	
	
}
