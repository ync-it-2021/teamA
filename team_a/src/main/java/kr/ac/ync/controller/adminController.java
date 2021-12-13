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
@RequestMapping("/admin/*")
public class adminController {
	
	@Autowired
	private BoardService BService;
	@Autowired
	private PayService PService;
	@Autowired
	private PrdInquiryService PIService;
	@Autowired
	private OneInquiryService OIService;
	
	@GetMapping("/main")
	public String index(Model model) {
		
		return "/admin/index";
	}
	@GetMapping("/main/board_list")
	public void board_list(Model model) {
		Criteria cri = new Criteria(1,10);
		cri.setType("D");
		cri.setKeyword("AN");
		int total = BService.getTotal(cri);
		log.info("Board total: " + total + ", "+cri );
		log.info("Board: " +  BService.getListWithPaging(cri));
		model.addAttribute("admin_db", BService.getListWithPaging(cri));
	}
	
	@GetMapping("/main/pay_list")
	public void pay_list(Model model) {
		Criteria cri = new Criteria(1,10);
		cri.setType("C");
		cri.setKeyword("배");
		int total = PService.getTotal(cri);
		log.info("pay total: " + total + ", "+cri );
		log.info("pay: " +  PService.getListWithPaging(cri));
		model.addAttribute("list", PService.getListWithPaging(cri));
	}
	
	@GetMapping("/main/prdInquiry_list")
	public void prdInquiry_list(Model model) {
		Criteria cri = new Criteria(1,10);
		log.info("product Inquiry list.....: " +  PIService.getCheckList(cri));
		model.addAttribute("list", PIService.getCheckList(cri));

	}
	
	@GetMapping("/main/oneInquiry_list")
	public void oneInquiry_list(Model model) {
		Criteria cri = new Criteria(1,10);
		cri.setType("A");
		cri.setKeyword("");
		int total = OIService.getTotal(cri);
		log.info("oneInquiry total: " + total + ", "+cri );
		log.info("oneInquiry: " +  OIService.getListWithPaging(cri));
		model.addAttribute("list", OIService.getListWithPaging(cri));
	}
}
