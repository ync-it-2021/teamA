package kr.ac.ync.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.AuthVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.mapper.MemberMapper;
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

	@PostMapping({ "/register_insert", "/join_write" })
//	@PreAuthorize("isAuthenticated()")
	public String member_insert(HttpServletRequest request, MemberVO member ,RedirectAttributes rttr) throws ParseException {
		
		
		   
		List<AuthVO> list = new ArrayList<AuthVO>();
		AuthVO vo = new AuthVO();
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
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date(sdf.parse(member_birthday).getTime());
		member.setMember_birthday(date);

		
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

		log.info("register: " + member);
		this.mapper.insertSelectKey(member);
		rttr.addFlashAttribute("result", member.getMember_id());

		return "redirect:/member/login";
	}

	@GetMapping("/get")
	public void get(@RequestParam("mb_id") String member_id, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("member", this.mapper.read(member_id));
	}

	@GetMapping("/modify")
	public String modify(MemberVO member, @ModelAttribute("cri") Criteria cri) {

		log.info("/modify");
		this.mapper.update(member);
		return "redirect:/admin/member/get?mb_id=" + member.getMember_id();
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("mb_id") String member_id, @ModelAttribute("cri") Criteria cri) {

		log.info("/delete");
		this.mapper.delete(member_id);
		return "redirect:/admin/member/list";
	}
	
	@GetMapping("/pwsearch")
	public String member_search(HttpServletRequest request, MemberVO member ,RedirectAttributes rttr) {
		String ProcessGubun = request.getParameter("ProcessGubun");
		System.out.print(ProcessGubun);

		if (ProcessGubun.equals("A")) { // find ID
			

			String search_gu = request.getParameter("search_gu");

			String id1;
			String id2;
			String id = "1";
			
			if (id.equals(search_gu)) {

				String member_name = request.getParameter("txUsername1_txt");

				String member_email = request.getParameter("txEmail");
				
				member.setMember_name(member_name);
				
				member.setMember_email(member_email);
			}else {

				String member_name = request.getParameter("txUsername2_txt");

				String phone1 = request.getParameter("mobile1");
				String phone2 = request.getParameter("mobile2");
				String phone3 = request.getParameter("mobile3");
				String member_phone = phone1 + "-" + phone2 + "-" + phone3;
				member.setMember_name(member_name);
				member.setMember_phone(member_phone);
			}
		}
			
		return "redirect:/login";
	}
}
