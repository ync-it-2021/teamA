package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.EventVO;

public interface EventMapper {
	
	public List<EventVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public EventVO read(int evt_idx);
	
	public Integer insertSelectKey(EventVO evt);
	
	public int update(EventVO evt);
	
	public int delete(int evt_idx);
	
	public List<EventVO> getList();
}
