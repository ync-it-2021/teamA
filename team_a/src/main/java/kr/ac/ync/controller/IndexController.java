package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.service.EventService;
import kr.ac.ync.service.ProductService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping
public class IndexController {

	
	@Autowired
	private ProductService prdService;
	
	@Autowired
	private EventService evtService;	
	
	@GetMapping("/")
	public String index( Model model) {
		log.info("Event......" + evtService.getList());
		model.addAttribute("evt",evtService.getList());
		log.info("best......" + prdService.best_items());
		model.addAttribute("best",prdService.best_items());
		log.info("new......" + prdService.new_items());
		model.addAttribute("new_arrival",prdService.new_items());
		return"index";
	}
	
	@RequestMapping("/join")
	public String join() {
	return "/join/join_agreement";
	}

}
