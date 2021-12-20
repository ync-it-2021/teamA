package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping({ "/search/*" })
public class SearchController {
	
	@Autowired
	private MemberMapper mapper;
	
	@GetMapping("/searchproduct" )
	public void search() {
	}
	
	
	
}
