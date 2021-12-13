package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.CouponVO;
import kr.ac.ync.domain.Criteria;

public interface CouponMapper {

	public List<CouponVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public CouponVO read(Long cp_idx);
	
	public int getTotalCount(Criteria cri);
	
	public Integer insertSelectKey(CouponVO cp);

	public int useCoupon(CouponVO cp);
	
	

}
