package kr.ac.ync.service;

import org.springframework.stereotype.Service;

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

}
