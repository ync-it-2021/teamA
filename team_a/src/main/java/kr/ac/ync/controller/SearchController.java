package kr.ac.ync.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/searchproduct/*")
public class SearchController {
	
	@GetMapping("")
	public String index(Model model) {
		
		return "/search/searchproduct";
	}
	
}
