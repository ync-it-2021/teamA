package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PrdInquiryVO;

public interface PrdInquiryService {

	public List<PrdInquiryVO> getList(Criteria cri, int prd);
	
	public List<PrdInquiryVO> getCheckList(Criteria cri);

}
