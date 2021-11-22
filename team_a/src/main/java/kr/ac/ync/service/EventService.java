package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.EventVO;

public interface EventService {
	
	public List<EventVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);

	public boolean remove(int evt_idx);
	
}
