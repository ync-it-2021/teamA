package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OneInquiryVO;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.mapper.OneInquiryMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OneInquiryServiceImpl implements OneInquiryService{
	
	
	
	private OneInquiryMapper mapper;

@Override
public List<OneInquiryVO> getListWithPaging(Criteria cri) {
	
	log.info("get List with criteria: " + cri);

	return mapper.getListWithPaging(cri);
}

@Override
public int getTotal(Criteria cri) {
	log.info("get total count");
	return mapper.getTotalCount(cri);
}

public void register(OneInquiryVO oi) {

	log.info("register......" + oi);

	mapper.insertSelectKey(oi);
	
}

@Override
public OneInquiryVO get(int oi_idx) {
	// TODO Auto-generated method stub
	return mapper.read(oi_idx);
}

@Override
public boolean modify(OneInquiryVO oi) {
	log.info("modify......" + oi);
	return mapper.update(oi) == 1;
}

}
