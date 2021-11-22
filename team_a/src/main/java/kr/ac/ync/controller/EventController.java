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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.EventVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.service.EventService;
import kr.ac.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/event/*","/admin/event/*"})
public class EventController {

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private EventService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping("/register")
	public void register() {

	}
		
		@PostMapping("/register_insert")
		public String register(MultipartFile[] uploadFile, EventVO evt, RedirectAttributes rttr) {
			int index = 0;
			for (MultipartFile multipartFile : uploadFile) {
				if(multipartFile.getSize() > 0) {
					switch (index) {
					case 0:
						evt.setEvt_header_img(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 1:
						evt.setEvt_main_img(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 2:
						evt.setEvt_content_img(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					}
				}
				index++;
			}
			log.info("register: " + evt);
			service.register(evt);
			rttr.addFlashAttribute("result", evt.getEvt_idx());

			return "redirect:/admin/event/list";
		}
	
	
	
	
	@GetMapping( {"/get" , "/modify"})
	public void get(@RequestParam("evt") int evt_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("evt", service.get(evt_idx));
	}
	
	
	
	@PostMapping( "/remove" )
	public String delete(ProductVO prd, @ModelAttribute("cri") Criteria cri) {

		log.info("/remove");
		this.service.remove(prd.getPrd_idx());
		return "redirect:/admin/product/list";
	}
}
