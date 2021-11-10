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
@RequestMapping()
public class FrontController {

	
	@Autowired
	private ProductService service;
	
	@GetMapping("/index/")
	public void test(Model model) {
		
		model.addAttribute("test", service.imgTest(1));
		
	}
	//해더 이미지 호출
	@GetMapping("/includes/header/")
	public void linkTest(Model model) {
		
		model.addAttribute("test", service.imgTest(1));
	}
	
	@GetMapping("/login/")
	public void test1(Model model) {
		
	}

	@PostMapping("/login/")
	public void loginCk(@RequestParam("LoginId") String loginID,
						@RequestParam("LoginPwd") String loginPW,
						@RequestParam("_csrf") String a) {
		
	log.info("id : "+ loginID);
	log.info("pw : "+ loginPW);
	
	}

}
