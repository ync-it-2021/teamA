package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.service.PrdInquiryService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/prdInuiry/*","/admin/prdInuiry/*"})
public class PrdInquiryController {
	
	@Autowired
	private PrdInquiryService service;
	
	@PostMapping( "/remove" )
	public String delete(ProductVO prd, @ModelAttribute("cri") Criteria cri) {

		log.info("/remove");
		this.service.remove(prd.getPrd_idx());
		return "redirect:/admin/product/list";
	}

}
