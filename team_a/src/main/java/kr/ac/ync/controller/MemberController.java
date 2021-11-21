package kr.ac.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/admin/member/*","memeber/*"})
public class MemberController {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	public MemberController(MemberMapper mapper) {
		this.mapper = mapper;
	}
	

	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = this.mapper.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list",this.mapper.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	
	// 글 등록
	// file upload가 추가된 게시판 등록
	@PostMapping("/register_insert")
//	@PreAuthorize("isAuthenticated()")
	public String register_insert( MemberVO member, RedirectAttributes rttr) {

		log.info("register: " + member);
		this.mapper.insertSelectKey(member);
		rttr.addFlashAttribute("result", member.getMember_id());

		return "redirect:/admin/member/list";
	}
	
	// 글 등록 페이징
	@GetMapping("/register")
	public void register() {
	}
	
	
	@GetMapping({ "/get" })
	public void get(@RequestParam("mb_id") String member_id, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("member", this.mapper.read(member_id));
	}
	
	

	@GetMapping({ "/modify" })
	public String modify(MemberVO member, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/modify");
		this.mapper.update(member);
		return "redirect:/admin/member/get?mb_id="+member.getMember_id();
	}
	
	@GetMapping({ "/delete" })
	public String delete(@RequestParam("mb_id") String member_id, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/delete");
		this.mapper.delete(member_id);
		return "redirect:/admin/member/list";
	}
	

}
