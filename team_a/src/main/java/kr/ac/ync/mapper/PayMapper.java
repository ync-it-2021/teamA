package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PayVO;

public interface PayMapper {
	public List<PayVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public PayVO read(int prd_idx);
	
	public int getTotalCount(Criteria cri);
	
	public Integer insertSelectKey(PayVO pay);
	
	public int update(PayVO pay);
}
