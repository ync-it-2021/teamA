package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.OneInquiryVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.OneInquiryService;
import kr.ac.ync.util.UploadUtils;
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
	public String memberList(Criteria cri, Model model,Authentication authentication) {
		UserDetails userDetails = (UserDetails)authentication.getPrincipal();
		String member_id = userDetails.getUsername();
		cri.setType("M");
		cri.setKeyword(member_id);
		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "/mypage/qna";
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping("/write")
	public String write() {
		return "/mypage/write";
	}
	

	
	@PostMapping("/write")
//	@PreAuthorize("isAuthenticated()")
	public String register(MultipartFile uploadFile, OneInquiryVO oi, RedirectAttributes rttr) {
		if(!uploadFile.isEmpty()) {
		oi.setOi_img(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
		log.info("register: " + oi);
		service.register(oi);
		rttr.addFlashAttribute("result", oi.getOi_idx());

		return "redirect:/mypage/qna";
	}
	
	@GetMapping( "/get" )
	public String get(@RequestParam("oi") int oi_idx, @ModelAttribute("cri") Criteria cri, Model model,Authentication authentication) {
		UserDetails userDetails = (UserDetails)authentication.getPrincipal();
		String auto = userDetails.getAuthorities().toString();
		log.info("/get");
		model.addAttribute("oi", service.get(oi_idx));
		if(auto.equals("[ROLE_MEMBER]")) {
			return "/mypage/write";
		}
		return null;
	}
	
	
	@PostMapping( "/modify")
	public String modify(OneInquiryVO oi, @ModelAttribute("cri") Criteria cri) {
		log.info("/modify " + oi);
		this.service.modify(oi);
		return "redirect:/admin/oi/get?oi="+oi.getOi_idx();
	}
	
	

}
