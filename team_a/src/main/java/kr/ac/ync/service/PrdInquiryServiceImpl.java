package kr.ac.ync.service;

import org.springframework.stereotype.Service;

import kr.ac.ync.mapper.PrdInquiryMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class PrdInquiryServiceImpl implements PrdInquiryService {

	 private PrdInquiryMapper mapper;
	 
		@Override
		public boolean remove(int pi_idx) {
			log.info("remove...." + pi_idx);
			return mapper.delete(pi_idx) == 1;
		}
	
}
