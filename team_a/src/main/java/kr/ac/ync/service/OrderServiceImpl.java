package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.CartVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OrderVO;
import kr.ac.ync.mapper.OrderMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService{
	
	private OrderMapper mapper;
	
	@Override
	public boolean remove(int od_idx) {
		log.info("remove...." + od_idx);
		return mapper.delete(od_idx) == 1;
	}

	@Override
	public List<OrderVO> getListWithPaging(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public OrderVO get(int od_idx) {
		// TODO Auto-generated method stub
		return mapper.read(od_idx);
	}

	@Override
	public boolean modify(String status) {
		log.info("modify......" + status);
		return mapper.update(status) == 1;
	}

	@Override
	public List<CartVO> getCartList(String member_id) {
		log.info("cart member name : " + member_id);
		return mapper.getCart(member_id);
	}


}
