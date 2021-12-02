package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.EventVO;
import kr.ac.ync.domain.ProductVO;

public interface EventService {
	
	public List<EventVO> getListWithPaging(Criteria cri);
	
	public List<EventVO> getList();
	
	public int getTotal(Criteria cri);
	
	public EventVO get(int evt_idx);
	
	public void register(EventVO evt);
	
	// 글 수정
	public boolean modify(EventVO evt);

	public boolean remove(int evt_idx);
	
}
