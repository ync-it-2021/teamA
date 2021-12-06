package kr.ac.ync.service;

import java.util.List;

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.Criteria;

public interface BoardService {
	
	// 글 등록
	public void register(BoardVO board);
	
	// 글 상세보기
	public BoardVO get(int bd_idx);
	
	// 글 수정
	public boolean modify(BoardVO board);
	
	// 글 삭제
	public boolean remove(int bd_idx);
	
	// 전체 글 목록
	public List<BoardVO> getList();
	
	// 글 목록 페이징 
	public List<BoardVO> getListWithPaging(Criteria cri);

	// 전체 게시물 갯수
	public int getTotal(Criteria cri);
	//11
	//11
	//22
}
