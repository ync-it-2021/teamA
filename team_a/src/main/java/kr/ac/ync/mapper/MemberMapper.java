package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.randompass.RandomPass;

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
	
	public String member_search(String member_id);
	
	// 아이디 중복 검사
	public int id_Check(String member_id);
	
	public String member_idsearch_email(@Param("member_name") String member_name,@Param("member_email") String member_email);
	
	public String member_passsearch_email(@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_email")String member_email);
	
	public String member_passsearch_phone(@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_phone")String member_phone);
	
	public String member_idsearch_phone(@Param("member_name")String member_name, @Param("member_phone")String member_phone);
	
	public int member_passsearch_email_update(@Param ("member_pass") String member_pass ,@Param("member_id")String member_id, @Param("member_name")String member_name, @Param("member_email")String member_email);

	public int member_passsearch_phone_update(@Param ("member_pass") String member_pass, @Param("member_id") String member_id, @Param("member_name")String member_name, @Param("member_phone")String member_phone);
	
}
