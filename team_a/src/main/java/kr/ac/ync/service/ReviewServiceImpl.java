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
	private ProductMapper prdMapper;
	
	@Transactional
	@Override
	public int register(ReviewVO vo) {
		log.info("register......" + vo);
		prdMapper.updateReviewCnt(vo.getPrd_idx(), 1);
		return mapper.insert(vo);
	}

	@Override
	public ReviewVO get(int rv) {
		log.info("get......" + rv);
		return mapper.read(rv);
	}

	@Override
	public int modify(ReviewVO vo) {
		log.info("modify......" + vo);
		return mapper.update(vo);
	}
	
	@Transactional
	@Override
	public int remove(int rv) {
		log.info("remove...." + rv);
		
		ReviewVO vo = mapper.read(rv);
		prdMapper.updateReviewCnt(vo.getPrd_idx(), -1);
		return mapper.delete(rv);
	}

	@Override
	public List<ReviewVO> getList(Criteria cri, int rv) {
		log.info("get Review List of a Product " + rv);
		return mapper.getListWithPaging(cri, rv);
	}
  
	@Override
	public ReviewPageDTO getListPage(Criteria cri, int prd) {
       
		return new ReviewPageDTO(
				mapper.getCountByPrd(prd), 
				mapper.getListWithPaging(cri,prd));
	}

	
	@Override
	public List<ReviewVO> getList(Criteria cri, String member_id) {
		log.info("get Review List of a member " + member_id);
		return mapper.getListByMemberWithPaging(cri, member_id);
	}
  
	@Override
	public ReviewPageDTO getListPage(Criteria cri, String member_id) {
       
		return new ReviewPageDTO(
				mapper.getCountByMember(member_id), 
				mapper.getListByMemberWithPaging(cri,member_id));
	}

}

