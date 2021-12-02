package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.BestVO;
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
	

	@Override
	public ProductVO get(int prd_idx) {
		// TODO Auto-generated method stub
		return mapper.read(prd_idx);
	}

	@Override
	public boolean modify(ProductVO prd) {
		log.info("modify......" + prd);
		return mapper.update(prd) == 1;
	}

	@Override
	public boolean remove(int prd_idx) {
		log.info("remove...." + prd_idx);
		return mapper.delete(prd_idx) == 1;
	}

	@Override
	public List<BestVO> best_items() {
		log.info("best...." + mapper.best());
		return mapper.best();
	}

}
