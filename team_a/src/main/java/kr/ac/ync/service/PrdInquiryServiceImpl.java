package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PrdInquiryVO;
import kr.ac.ync.mapper.PrdInquiryMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class PrdInquiryServiceImpl implements PrdInquiryService {

	 private PrdInquiryMapper mapper;

	@Override
	public List<PrdInquiryVO> getList(Criteria cri, int prd) {
		log.info("get Review List of a Product " + prd);
		return mapper.getListWithPaging(cri, prd);
	}
	 

	
}
