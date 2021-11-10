package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String member_id);
	
	public List<MemberVO> getList();

	public List<MemberVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public Integer insertSelectKey(MemberVO member);
}
