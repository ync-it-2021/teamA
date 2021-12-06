package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OneInquiryVO;
import kr.ac.ync.domain.ProductVO;

public interface OneInquiryService {

	public List<OneInquiryVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	// 글 상세보기
	public OneInquiryVO get(int prd_idx);

	// 글 수정
	public boolean modify(OneInquiryVO oi);
}
