package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.CommentVO;

public interface CommentService {
	
	
	public int register(CommentVO vo);

	public int modify(CommentVO vo);

	public int remove(int bd);
	
	public List<CommentVO> getList(int bd);
	public List<CommentVO> getList(String member_id);
	
	public int getComment_cnt(int bd);
	
	

	
}
