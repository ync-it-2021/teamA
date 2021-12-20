package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.randompass.RandomPass;

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

	
	public String member_idsearch_email(@Param("member_name") String member_name,@Param("member_email") String member_email);
	
	public String member_passsearch_email(@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_email")String member_email);
	
	public String member_passsearch_phone(@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_phone")String member_phone);
	
	public String member_idsearch_phone(@Param("member_name")String member_name, @Param("member_phone")String member_phone);
	
	public int member_passsearch_email_update(@Param ("member_pass") String member_pass ,@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_email")String member_email);

	public int member_passsearch_phone_update(@Param ("member_pass") String member_pass, @Param("member_id") String member_id, @Param("member_name")String member_name, @Param("member_phone")String member_phone);
	



}
