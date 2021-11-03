package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;

public interface ProductMapper {
	
	public ProductVO imgTest(int prd_idx);

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public void updateReviewCnt(@Param("prd_idx") int prd_idx, @Param("amount") int amount);
	
	public Integer insertSelectKey(ProductVO prd);

}
