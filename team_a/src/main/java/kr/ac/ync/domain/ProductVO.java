package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	private int prd_idx;				//상품번호
	private String prd_name;			//상품이름
	private Date prd_register_date;		//출시일
	private int prd_inventory;			//재고
	private int prd_cost_price;			//원가
	private Date prd_discount_date;		//할인날짜(완료)
	private int prd_sale_prices;		//할인금액
	private String prd_company;			//제작사(회사명)
	private String prd_kind;			//분류(종류)
	private int prd_amount;				//판매가격
	private int prd_review_cnt;
	private String prd_img1;			//이미지1(대표이미지)
	private String prd_img2;			//이미지2~10(상품이미지, 상품 소개이미지)
	private String prd_img3;
	private String prd_img4;
	private String prd_img5;
	private String prd_img6;
	private String prd_img7;
	private String prd_img8;
	private String prd_img9;
	private String prd_img10;
	
	
}
