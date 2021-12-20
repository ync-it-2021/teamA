package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberReviewVO;
import kr.ac.ync.domain.ReviewPageDTO;
import kr.ac.ync.domain.ReviewVO;

public interface ReviewService {

	public int register(ReviewVO vo);

	public ReviewVO get(int prd);

	public int modify(ReviewVO vo);

	public int remove(int prd);

	public List<ReviewVO> getList(Criteria cri, int prd);
	
	public ReviewPageDTO getListPage(Criteria cri, int prd);
	
	public List<ReviewVO> getList(Criteria cri, String member_id);
	
	public List<MemberReviewVO> getListMypage( String member_id);
	
	public ReviewPageDTO getListPage(Criteria cri, String member_id);
	
	
	

}
