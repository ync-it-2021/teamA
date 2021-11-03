package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;

public interface ProductService {

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	// 글 등록
	public void register(ProductVO prd);
	
	public ProductVO imgTest(int prd_idx);

}
