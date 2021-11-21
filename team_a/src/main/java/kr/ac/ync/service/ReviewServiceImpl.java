package kr.ac.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ReviewPageDTO;
import kr.ac.ync.domain.ReviewVO;
import kr.ac.ync.mapper.ProductMapper;
import kr.ac.ync.mapper.ReviewMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
//@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	
	@Autowired
	private ProductMapper productMapper;
	
	@Transactional
	@Override
	public int register(ReviewVO vo) {
		log.info("register......" + vo);
		productMapper.updateReviewCnt(vo.getPrd_idx(), 1);
		return mapper.insert(vo);
	}

	@Override
	public ReviewVO get(int review_idx) {
		log.info("get......" + review_idx);
		return mapper.read(review_idx);
	}

	@Override
	public int modify(ReviewVO vo) {
		log.info("modify......" + vo);
		return mapper.update(vo);
	}
	
	@Transactional
	@Override
	public int remove(int review_idx) {
		log.info("remove...." + review_idx);
		
		ReviewVO vo = mapper.read(review_idx);
		productMapper.updateReviewCnt(vo.getPrd_idx(), -1);
		return mapper.delete(review_idx);
	}

	@Override
	public List<ReviewVO> getList(Criteria cri, int prd_idx) {
		log.info("get Review List of a Board " + prd_idx);
		return mapper.getListWithPaging(cri, prd_idx);
	}
  
	@Override
	public ReviewPageDTO getListPage(Criteria cri, int prd_idx) {
       
		return new ReviewPageDTO(
				mapper.getCountByProduct(prd_idx), 
				mapper.getListWithPaging(cri, prd_idx));
	}

	@Override
	public int productCnt(int prd_idx) {
		
		return mapper.getCountByProduct(prd_idx);
	}
}

