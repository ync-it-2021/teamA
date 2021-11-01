package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;

public interface ProductMapper {

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int getTotalCount(Criteria cri);

}
