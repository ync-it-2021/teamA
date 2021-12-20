package kr.ac.ync.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ReviewVO;
import kr.ac.ync.service.ReviewService;
import kr.ac.ync.service.ShopService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j

public class ShopController<prd_kind> {
	
	@Autowired
	private ShopService bsrvice;
	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	/* @GetMapping("/prdouct") */
	public void ShopListget(@RequestParam("prd_kind") String prd_kind , Model model ) {
		log.info("출력해라!");
		
		  model.addAttribute("product", bsrvice.shoplist(prd_kind));
		 	 
		 
	}
	
	@RequestMapping(value="/productdetail",method=RequestMethod.GET)
	public void detail(@RequestParam("prd_idx") int prd_idx, Model model) {
		log.info("상세보기");
		model.addAttribute("shopdetail",bsrvice.shopdetail(prd_idx));
		
	}
//	리뷰 불러오기




	
	
	
	
}
