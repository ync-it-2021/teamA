package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;

public interface ProductMapper {

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public ProductVO read(int prd_idx);
	
	public int getTotalCount(Criteria cri);
	
	public void updateReviewCnt(@Param("prd_idx") int prd_idx, @Param("amount") int amount);
	
	public Integer insertSelectKey(ProductVO prd);
	
	public int delete(int prd_idx);

	public int update(ProductVO prd);

}
