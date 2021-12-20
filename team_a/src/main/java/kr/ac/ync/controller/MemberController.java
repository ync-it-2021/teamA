
package kr.ac.ync.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.AuthVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.mapper.MemberMapper;
import kr.ac.ync.randompass.RandomPass;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({ "/admin/member/*", "/member/*" })
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
		model.addAttribute("list", this.mapper.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	// 글 등록 페이징
	@GetMapping({ "/register", "/join_write" })
	public void register() {
	}
	
	@GetMapping({ "/register", "/passwordsearch" })
	public void passwordsearch() {
	}


	@PostMapping({ "/register", "/join_write" })
	public String member_insert(HttpServletRequest request, MemberVO member, RedirectAttributes rttr)
			throws ParseException {

		List<AuthVO> list = new ArrayList<AuthVO>();
		AuthVO vo = new AuthVO();
		
		if(member == null) {
		vo.setMember_id(request.getParameter("id"));
		vo.setAuth(request.getParameter("auto"));
		list.add(vo);

		String member_id = request.getParameter("id");
		String member_pass = (pwencoder.encode(request.getParameter("pwd1")));
		String member_name = request.getParameter("name");
		String year = request.getParameter("birth1");
		String month = request.getParameter("birth2");
		String day = request.getParameter("birth3");
		String member_birthday = year + "-" + month + "-" + day;
		member.setMember_birthday(member_birthday);

		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");

		String member_email = email + "@" + email2;

		String phone1 = request.getParameter("mobile1");
		String phone2 = request.getParameter("mobile2");
		String phone3 = request.getParameter("mobile3");
		String member_phone = phone1 + "-" + phone2 + "-" + phone3;

		String address = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		String member_address = address + address2 + address3;

		member.setMember_id(member_id);
		member.setMember_pass(member_pass);
		member.setMember_name(member_name);

		member.setMember_email(member_email);
		member.setMember_phone(member_phone);
		member.setMember_address(member_address);
		member.setAuthList(list);
		}else {
			vo.setMember_id(member.getMember_id());
			vo.setAuth(member.getAuth());
			member.setMember_pass(pwencoder.encode(member.getMember_pass()));
			if(member.getMember_birthday() == null)
				member.setMember_birthday(new Date());
		}
		log.info( member.getMember_birthday());
		log.info("register: " + member);
		this.mapper.insertSelectKey(member);
		rttr.addFlashAttribute("result", member.getMember_id());
		if(vo.getAuth().equals("ROLE_ADMIN")) {
			return "redirect:/admin/member/list";
		}
		return "redirect:/login";
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("mb_id") String member_id, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("member", this.mapper.read(member_id));
	}

	@PostMapping("/modify")
	public String modify(MemberVO member, @ModelAttribute("cri") Criteria cri) {

		member.setMember_pass(pwencoder.encode(member.getMember_pass()));

		log.info("/modify");
		this.mapper.update(member);
		return "redirect:/admin/member/get?mb_id=" + member.getMember_id();
	}

	@PostMapping("/delete")
	public String delete(@RequestParam("member_id") String member_id, @ModelAttribute("cri") Criteria cri,
			RedirectAttributes rttr) {

		log.info("/delete : " + member_id);
		this.mapper.delete(member_id);

		rttr.addFlashAttribute("result", member_id);
		return "redirect:/admin/member/list";
	}
	
	@RequestMapping(value = "/user_id_check")
	@ResponseBody
	public String user_id_sheck(MemberVO member, HttpServletRequest request) {
		int result_idCheck = 1;
		String member_id = request.getParameter("input_id");
		
		System.out.println(member_id);
		
		try { 
			result_idCheck = mapper.id_Check(member_id);
			System.out.println(result_idCheck);
		} catch (Exception e) {
			System.out.println("아이디 중복 검사 오류 발생");
			e.printStackTrace();
		}
		
		return String.valueOf(result_idCheck);
		
		 
	}
		
	 // memberIdChkPOST() 종료	
	
	
	@RequestMapping(value = "/idsearchemail")
	@ResponseBody
	
	public String member_idsearchemail(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
		
		String member_name = request.getParameter("member_name");
		String member_email = request.getParameter("member_email");
		
		String result_id;
		System.out.println(member_name);
		System.out.println(member_email);
		result_id = mapper.member_idsearch_email(member_name,member_email);
		System.out.println(result_id);
		return result_id;
	 // find ID
	}
	
	@GetMapping(value = "/idsearchphone")
	@ResponseBody //문자 그대로 날라감
	public String member_idsearchphone(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
		
		String member_name = request.getParameter("member_name");
		String member_phone = request.getParameter("member_phone");
					
		String result_id;
		System.out.println(member_name);
		System.out.println(member_phone);
		result_id = mapper.member_idsearch_phone(member_name,member_phone);
		System.out.println(result_id);
		
		return result_id;
		
		
	 // find ID	
	}
	@GetMapping(value = "memberpasssearchemail")
	@ResponseBody //문자 그대로 날라감
	public String member_passsearch_email(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
		String member_id = request.getParameter("member_id");
		String member_name = request.getParameter("member_name");
		String member_email = request.getParameter("member_email");
		
		String result_id;
		
		int result_pass;
		
		
		System.out.println(member_id);
		System.out.println(member_name);
		System.out.println(member_email);
		result_id = mapper.member_passsearch_email(member_id,member_name,member_email);
		System.out.println(result_id);
		RandomPass member_passfinal = new RandomPass();
		
		String member_pass = member_passfinal.getRamdomPassword(10);
				
		System.out.println(member_pass);
		
		
		
		result_pass = mapper.member_passsearch_email_update(member_pass, member_id,member_name,member_email);
		
		
		return member_pass;
	 // find ID
	}
	@GetMapping(value = "memberpasssearchphone")
	@ResponseBody //문자 그대로 날라감
	public String member_passsearch_phone(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) {
		String member_id = request.getParameter("member_id");
		String member_name = request.getParameter("member_name");
		String member_phone = request.getParameter("member_phone");
		
		String result_id;
		System.out.println(member_id);
		System.out.println(member_name);
		System.out.println(member_phone);
		result_id = mapper.member_passsearch_phone(member_id,member_name,member_phone);
		
		int result_pass;
		
		System.out.println(result_id);
		RandomPass member_passfinal = new RandomPass();
		
		String member_pass = member_passfinal.getRamdomPassword(10);
				
		System.out.println(member_pass);
		
		
		
		result_pass = mapper.member_passsearch_phone_update(member_pass, member_id,member_name,member_phone);
		return result_id;
	 // find ID
}
}



	
	
}

