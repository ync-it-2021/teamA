package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OrderVO;

public interface OrderMapper {
	
	
	public List<OrderVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public void updateReviewCnt(@Param("od_idx") int od_idx, @Param("amount") int amount);
	
	public OrderVO read(int od_idx);

	public int update(String od_status);
	
	public int delete(int od_idx);
}
