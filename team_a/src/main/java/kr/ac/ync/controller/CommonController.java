package kr.ac.ync.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	@GetMapping("/customLogin")
	public String loginInput(String error, String logout, Model model) {

		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("err", "Y");
			return "/customLogin";
		}

		if (logout != null) {
			return "redirect:/customLogin";
		}
		return null;
	}
	
	@GetMapping("/login")
	public String loginInput2(String error, String logout, Model model) {

		log.info("error: " + error);
		log.info("logout: " + logout);

		if (error != null) {
			model.addAttribute("err", "Y");
			return "/login";
		}

		if (logout != null) {
			return "redirect:/login";
		}
		return null;
	}

	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
		
	}

	@PostMapping("/customLogout")
	public String logoutPost() {

		log.info("post custom logout");
		return "/";
		
	}

}
