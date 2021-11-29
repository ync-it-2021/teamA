package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PayVO;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.mapper.PayMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class PayServiceImpl implements PayService{

	private PayMapper mapper;
	
	@Override
	public List<PayVO> getListWithPaging(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public PayVO get(int pay_idx) {
		// TODO Auto-generated method stub
		return mapper.read(pay_idx);
	}
	
	
	public void register(PayVO pay) {

		log.info("register......" + pay);

		mapper.insertSelectKey(pay);
		
	}
	
	
	@Override
	public boolean modify(PayVO pay) {
		log.info("modify......" + pay);
		return mapper.update(pay) == 1;
	}
	
	
}
