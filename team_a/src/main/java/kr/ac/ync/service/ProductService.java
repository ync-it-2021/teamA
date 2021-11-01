package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;

public interface ProductService {

	public List<ProductVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);

}
