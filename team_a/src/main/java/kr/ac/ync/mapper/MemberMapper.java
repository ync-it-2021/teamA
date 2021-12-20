package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;

public interface MemberMapper {
	//멤버 정보 출력
	public MemberVO read(String member_id);
	//멤버 리스트 출력 페이징
	public List<MemberVO> getListWithPaging(Criteria cri);
	//멤버 총 수
	public int getTotal(Criteria cri);
	//멤버 수정
	public int update(MemberVO member);
	//멤버 삭제
	public int delete(String member_id);
	//멤버 등록
	public Integer insertSelectKey(MemberVO member);
	// 아이디 중복 검사
	public int id_Check(String member_id);

}
