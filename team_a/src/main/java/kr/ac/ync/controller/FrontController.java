package kr.ac.ync.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.ProductService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class IndexController {

	
	@Autowired
	private ProductService service;
	
	@GetMapping("/index/")
	public void test(Model model) {
		
		model.addAttribute("test", service.imgTest(1));
		
	}
	
	@GetMapping("/includes/header/")
	public void linkTest(Model model) {
		
		model.addAttribute("test", service.imgTest(1));
	}
	



}
