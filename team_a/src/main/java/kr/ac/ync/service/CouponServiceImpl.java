package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.BestVO;
import kr.ac.ync.domain.CouponVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.mapper.CouponMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CouponServiceImpl implements CouponService {
	
	private CouponMapper mapper;

	@Override
	public List<CouponVO> getListWithPaging(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	public void register(CouponVO cp) {

		log.info("register......" + cp);

		mapper.insertSelectKey(cp);
		
	}
	

	@Override
	public CouponVO get(Long cp_idx) {
		// TODO Auto-generated method stub
		return mapper.read(cp_idx);
	}

	@Override
	public boolean use(CouponVO cp) {
		log.info("modify......" + cp);
		return mapper.useCoupon(cp) == 1;
	}




}
