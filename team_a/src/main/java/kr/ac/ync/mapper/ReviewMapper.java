package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberReviewVO;
import kr.ac.ync.domain.ReviewVO;

public interface ReviewMapper {
	
	public int insert(ReviewVO vo);

	public ReviewVO read(int prd);

	public int delete(int prd);

	public int update(ReviewVO vo);

	public List<ReviewVO> getListWithPaging(@Param("cri") Criteria cri, @Param("prd") int prd);
	
	public List<ReviewVO> getListByMemberWithPaging(@Param("cri") Criteria cri, @Param("member_id") String member_id);
	
	public List<MemberReviewVO> MypagePrintList(@Param("member_id") String member_id);

	public int getCountByPrd(int prd);
	
	public int getCountByMember(String member_id);
	
}
