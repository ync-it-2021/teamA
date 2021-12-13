package kr.ac.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.ync.domain.CommentVO;
import kr.ac.ync.mapper.BoardMapper;
import kr.ac.ync.mapper.CommentMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentMapper mapper;
	
	@Autowired
	private BoardMapper BMapper;
	
	@Transactional
	@Override
	public int register(CommentVO vo) {
		log.info("register......" + vo);
		BMapper.updateCommentCnt(vo.getBd_idx(), 1);
		return mapper.insert(vo);
	}

	@Override
	public int modify(CommentVO vo) {
		log.info("modify......" + vo);
		return mapper.update(vo);
	}
	
	@Transactional
	@Override
	public int remove(int cm) {
		log.info("remove...." + cm);
		
		return mapper.delete(cm);
	}

	@Override
	public List<CommentVO> getList(int bd_idx) {
		log.info("get Review List of a Board " + bd_idx);
		return mapper.getList(bd_idx);
	}
	
	@Override
	public List<CommentVO> getList(String member_id) {
		log.info("get Review List of a Board " + member_id);
		return mapper.getListByMember(member_id);
	}

	@Override
	public int getComment_cnt(int bd) {
		
		log.info("get Comment cnt to board" + bd);
		return mapper.getCountByComment(bd);
	}
  

	
	
	

}
