package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.CartVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OrderVO;

public interface OrderService {

	public List<OrderVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	// 글 상세보기
	public OrderVO get(int od_idx);
		
	public boolean remove(int od_idx);

	boolean modify(String status);
	
	public List<CartVO> getCartList(String member_id);
}
