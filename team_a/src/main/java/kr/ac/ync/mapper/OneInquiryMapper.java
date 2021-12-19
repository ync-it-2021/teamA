package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OneInquiryVO;
import kr.ac.ync.domain.ProductVO;

public interface OneInquiryMapper {

	
public List<OneInquiryVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public OneInquiryVO read(int oi_idx);
	
	public int getTotalCount(Criteria cri);
	
	public Integer insertSelectKey(OneInquiryVO oi);
	
	public int update(OneInquiryVO oi);
}
