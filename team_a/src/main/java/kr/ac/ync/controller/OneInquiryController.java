package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OneInquiryVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.OneInquiryService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/mypage/qna","/admin/oi/*"})
public class OneInquiryController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private OneInquiryService service;
	 
	@GetMapping("")
	public String memberList(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "mypage/qna";
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	@GetMapping( "/get" )
	public void get(@RequestParam("oi") int oi_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("oi", service.get(oi_idx));
	}
	
	@PostMapping( "/modify")
	public String modify(OneInquiryVO oi, @ModelAttribute("cri") Criteria cri) {
		log.info("/modify " + oi);
		this.service.modify(oi);
		return "redirect:/admin/oi/get?oi="+oi.getOi_idx();
	}

}
