package kr.ac.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

  private int review_idx;
  private int prd_idx;
  private int order_idx;
  private String member_id;

  private int review_point;
  private String review_contents;
  private String review_img;
  private Date review_date;
  private char review_del;

}
