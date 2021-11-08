package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.mapper.ProductMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	private ProductMapper mapper;

	@Override
	public List<ProductVO> getListWithPaging(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	public void register(ProductVO prd) {

		log.info("register......" + prd);

		mapper.insertSelectKey(prd);
		
	}
	
	public ProductVO imgTest(int prd_idx) {
		log.info("img " + prd_idx);
		return mapper.imgTest(prd_idx);
	}

	@Override
	public ProductVO get(int prd_idx) {
		// TODO Auto-generated method stub
		return mapper.read(prd_idx);
	}

}
