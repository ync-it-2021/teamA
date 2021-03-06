package kr.ac.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.ync.domain.CartVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.OrderService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/order/*","/mypage/order","/admin/order/*"})
public class OrderController {

	@Autowired
	private OrderService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping("")
	public String memberList(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "/mypage/orderlist";
	}
	
	@GetMapping( "/get" )
	public void get(@RequestParam("od") int od_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get : " + service.get(od_idx).getMember_id());
		model.addAttribute("order", service.get(od_idx));
	}
	
	@PostMapping( "/remove" )
	public String delete(int od_idx, @ModelAttribute("cri") Criteria cri) {

		log.info("/remove");
		this.service.remove(od_idx);
		return "redirect:/admin/order/list";
	}
	
	@GetMapping( "/cart" )
	public @ResponseBody List<CartVO> getCartList(String member_id) {
		log.info("/cart : " + service.getCartList(member_id));
		return service.getCartList(member_id);
	}
	
	@GetMapping( "/basket" )
	public String getBasketList(String mb_id,  Criteria cri, Model model) {
		log.info("/cart : " + service.getCartList(mb_id));
		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("list",service.getCartList(mb_id));
		return "/mypage/shoppingBasket";
	}
	
	@GetMapping("/search")
	public String searchOrder(Criteria cri, Model model,Authentication authentication) {
		UserDetails userDetails = (UserDetails)authentication.getPrincipal();
		String member_id = userDetails.getUsername();
		cri.setKeyword(member_id);
		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		return "/searchOrder";
	}
	
}
