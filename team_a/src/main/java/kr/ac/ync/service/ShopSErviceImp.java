package kr.ac.ync.service;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import kr.ac.ync.domain.categoryVO;
import kr.ac.ync.mapper.ShopMapper;

@Service
@Repository
public class ShopSErviceImp implements ShopService {

	
	
	@Autowired
	private ShopMapper mapper;
	
	@Override
	public List<categoryVO> shoplist(String prd_kind) {
		// TODO Auto-generated method stub
		return mapper.shoplist(prd_kind);
	}

	@Override
	public categoryVO shopdetail(int prd_idx) {
		// TODO Auto-generated method stub
		return mapper.shopdetail(prd_idx);
	}

	@Override
	public categoryVO SHOPTOTAL(String prd_kind ) {
		// TODO Auto-generated method stub
		return mapper.SHOPTOTAL(prd_kind);
	}

	@Override
	public categoryVO Shopbanner(String prd_kind) {
		// TODO Auto-generated method stub
		return mapper.Shopbanner(prd_kind);
	}


	

}
