package kr.ac.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class ReviewPageDTO {

  private int review_cnt;
  private List<ReviewVO> list;
}
