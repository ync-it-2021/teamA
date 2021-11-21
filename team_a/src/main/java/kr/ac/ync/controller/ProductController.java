package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
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
import kr.ac.ync.domain.ProductVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.ProductService;
import kr.ac.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/product/*","/admin/product/*"})
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
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("prd") int prd_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("prd", service.get(prd_idx));
	}
	
	@GetMapping("/register")
	public void register() {

	}
		
		@PostMapping("/register_insert")
//		@PreAuthorize("isAuthenticated()")
		public String register(MultipartFile[] uploadFile, ProductVO prd, RedirectAttributes rttr) {
			
			int index = 0;
			for (MultipartFile multipartFile : uploadFile) {
				if(multipartFile.getSize() > 0) {
					switch (index) {
					case 0:
						prd.setPrd_img1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 1:
						prd.setPrd_img2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 2:
						prd.setPrd_img3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 3:
						prd.setPrd_img4(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 4:
						prd.setPrd_img5(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 5:
						prd.setPrd_img6(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 6:
						prd.setPrd_img7(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 7:
						prd.setPrd_img8(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					case 8:
						prd.setPrd_img9(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					default:
						prd.setPrd_img10(UploadUtils.uploadFormPost(multipartFile, uploadPath));
						break;
					}
				}
				index++;
			}
			log.info("register: " + prd);
			service.register(prd);
			rttr.addFlashAttribute("result", prd.getPrd_idx());

			return "redirect:/admin/product/list/";
		}
}
