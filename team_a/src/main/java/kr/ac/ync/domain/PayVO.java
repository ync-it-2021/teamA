package kr.ac.ync.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.Data;

@Data
public class PayVO {

	private int pay_idx;
	private int od_idx;
	private String pay_buyer;
	private String pay_option;
	private int pay_amount;
	private int pay_mileage;
	private String pay_recipient;
	private String pay_address;
	private Date pay_date;
	private String pay_state;
	
	public void setPay_date(String getDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(getDate.isEmpty()) {
			this.pay_date = null;
			return;
		}
		Date date = new Date(sdf.parse(getDate).getTime());
		this.pay_date = date;
	}
}
