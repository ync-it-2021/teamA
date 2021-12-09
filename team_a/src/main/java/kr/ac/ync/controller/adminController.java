package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.service.BoardService;
import kr.ac.ync.service.OneInquiryService;
import kr.ac.ync.service.PayService;
import kr.ac.ync.service.PrdInquiryService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin")
public class adminController {
	
	@Autowired
	private BoardService BService;
	@Autowired
	private PayService PService;
	@Autowired
	private PrdInquiryService PIService;
	@Autowired
	private OneInquiryService OIService;
	
	
	
	
	@GetMapping("")
	public String index(Model model) {
		Criteria cri = new Criteria(1,10);
		cri.setType("D");
		cri.setKeyword("AN");
		int total = BService.getTotal(cri);
		log.info("total: " + total + ", "+cri );
		log.info("Board: " +  BService.getListWithPaging(cri));
		model.addAttribute("admin_db", BService.getListWithPaging(cri));
		
		return "/admin/index";
	}
}
