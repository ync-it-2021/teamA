package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.CommentVO;
import kr.ac.ync.domain.Criteria;

public interface CommentMapper {
	
	
	public int insert(CommentVO vo);

	public int delete(int cm_idx);

	public int update(CommentVO vo);
	
	public List<CommentVO> getList(@Param("bd_idx") int bd_idx);

	public int getCountByComment(int bd);


}
