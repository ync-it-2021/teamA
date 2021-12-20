package kr.ac.ync.mapper;

import java.util.List;

import kr.ac.ync.domain.categoryVO;

public interface ShopMapper {
	public List<categoryVO> shoplist( String prd_kind);

	public categoryVO Shopbanner(String prd_kind); 
	public categoryVO SHOPTOTAL(String prd_kind);
	public categoryVO shopdetail(int prd_idx);
}
