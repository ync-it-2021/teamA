package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String member_id);
	
	public List<MemberVO> getList();

	public List<MemberVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int update(MemberVO member);
	
	public int delete(String member_id);
	
	public Integer insertSelectKey(MemberVO member);
	
	public List<MemberVO> get();
	
	public String member_insert(MemberVO member);
	
	public String member_search(MemberVO member);
}
