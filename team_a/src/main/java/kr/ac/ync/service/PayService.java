package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PayVO;

public interface PayService {

	public List<PayVO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
	// 글 상세보기
	public PayVO get(int pay_idx);
	
	// 글 등록
	public void register(PayVO pay);
	
	// 글 수정
	public boolean modify(PayVO pay);
	
}
