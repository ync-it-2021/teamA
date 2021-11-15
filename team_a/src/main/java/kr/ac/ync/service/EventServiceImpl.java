package kr.ac.ync.service;

import org.springframework.stereotype.Service;

import kr.ac.ync.mapper.EventMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EventServiceImpl implements EventService{
	
	private EventMapper mapper;
	
	@Override
	public boolean remove(int evt_idx) {
		log.info("remove...." + evt_idx);
		return mapper.delete(evt_idx) == 1;
	}

}
