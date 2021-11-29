package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.domain.PayVO;
import kr.ac.ync.service.PayService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/pay/*","/admin/pay/*"})
public class PayController {
	
	@Autowired
	private PayService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	@GetMapping( {"/get" , "/modify"})
	public void get(@RequestParam("pay") int pay_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("pay", service.get(pay_idx));
	}

	@PostMapping( "/modify")
	public String modify( PayVO pay, @ModelAttribute("cri") Criteria cri) {
		
		log.info("/modify");
		this.service.modify(pay);
		return "redirect:/admin/pay/get?pay="+pay.getPay_idx();
	}
	
	@GetMapping("/register")
	public void register() {

	}
		
	@PostMapping("/register")
//		@PreAuthorize("isAuthenticated()")
	public String register(PayVO pay, RedirectAttributes rttr) {
		
		
		log.info("register: " + pay);
		service.register(pay);
		rttr.addFlashAttribute("result", pay.getPay_idx());

		return "redirect:/admin/pay/list";
	}
	
}
