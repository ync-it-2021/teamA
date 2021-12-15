package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {

	private int prd_idx;
	private int od_idx;
	private String prd_img1;
	private String prd_name;
	private Date od_date;
	private int od_amount;
	private int prd_amount;
	private String od_discount;
	private String od_details;
	private int od_sale_prices;
	
}
