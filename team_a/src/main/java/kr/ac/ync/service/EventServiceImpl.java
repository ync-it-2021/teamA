package kr.ac.ync.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.EventVO;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.mapper.EventMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EventServiceImpl implements EventService{
	
	private EventMapper mapper;
	
	@Override
	public List<EventVO> getListWithPaging(Criteria cri) {
		
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public EventVO get(int evt_idx) {
		// TODO Auto-generated method stub
		return mapper.read(evt_idx);
	}
	
	public void register(EventVO evt) {

		log.info("register......" + evt);

		mapper.insertSelectKey(evt);
		//22
	}
	

	

	@Override
	public boolean remove(int evt_idx) {
		log.info("remove...." + evt_idx);
		return mapper.delete(evt_idx) == 1;
	}

	@Override
	public List<EventVO> getList() {
		return mapper.getList();
	}

	@Override
	public boolean modify(EventVO evt) {
		log.info("modify......" + evt);
		return mapper.update(evt) == 1;
	}

}
