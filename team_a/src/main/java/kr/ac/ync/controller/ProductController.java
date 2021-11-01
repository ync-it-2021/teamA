package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
@RequestMapping("/prd/*")
public class ProductController {

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ProductService service;
	
	@GetMapping("/list/")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
}
