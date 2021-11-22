package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.ync.service.ProductService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping
public class FrontController {

	
	@Autowired
	private ProductService service;

	
	@GetMapping("/")
	public String index(Model model) {
		
		return"index";
	}
	//해더 이미지 호출
	@GetMapping("/includes/header/")
	public void linkTest(Model model) {
	}
	
	@GetMapping("/login/")
	public void test1(Model model) {
	}
}
