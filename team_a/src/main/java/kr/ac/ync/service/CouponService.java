package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.CouponVO;
import kr.ac.ync.domain.Criteria;

public interface CouponService {

	public List<CouponVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	// 글 상세보기
	public CouponVO get(Long cp_idx);
	// 글 등록
	public void register(CouponVO cp);
	// 글 수정
	public boolean use(CouponVO cp);
	
		

}
