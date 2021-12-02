package kr.ac.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PrdInquiryVO;

public interface PrdInquiryMapper {

	public List<PrdInquiryVO> getListWithPaging(@Param("cri") Criteria cri, @Param("prd") int prd);
}
