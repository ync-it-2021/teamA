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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.ync.domain.CouponVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.CouponService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/mypage/mycoupon","/admin/coupon/*"})
public class CouponController {

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private CouponService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping("")
	public String myCouponList(Criteria cri, Model model) {
		
		log.info("list: " + cri);

		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "/mypage/myCoupon";
	}
	
	@GetMapping( {"/get", "/modify"})
	public void get(@RequestParam("cp") Long cp_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get");
		model.addAttribute("cp", service.get(cp_idx));
	}
	//어드민만
	@PostMapping( "/modify")
	public String use(CouponVO cp, @ModelAttribute("cri") Criteria cri) {
		
		log.info("/modify");
		this.service.use(cp);
		return "redirect:/admin/coupon/get?cp="+cp.getCp_idx();
	}
	
	//어드민만
	@GetMapping("/register")
	public void register() {

	}
	//어드민만
		@PostMapping("/register")
		public String register (CouponVO cp, int total,RedirectAttributes rttr) {
			for(int i = 0; i < total; i++) {
				log.info(i+" register: " + cp);
				
				String temp = ""; 
				String temp2 = "";
				int ran = 0;
				for(int j = 0; j < 3 ; j++) {
					ran = (int)(Math.random()*100000%10000);
					temp += secretCode1(ran);
					temp2 += secretCode2(ran);
				}
				String[] code = temp.split(",");
				int code_total = 0;
				int g = 2;
				for(int k = 0; k <12; k++) {
					if(g == 10) {
						g =2;
					}
					code_total += Integer.valueOf(code[k]) * g;
				}
				int ck_num= code_total%9+1;
				ck_num = 10-ck_num;
				temp2+=ck_num;
				
				log.info("code_number : "+Long.valueOf(temp2));
				cp.setCp_idx(Long.valueOf(temp2));
				log.info("code_number : "+cp);
				service.register(cp);
				rttr.addFlashAttribute("result", cp.getCp_idx());
			}
			
			return "redirect:/admin/coupon/list";
		}
		//확인코드 계산용 코드 가공
		public static String secretCode1(int temp) {
			String num = "";
			if(temp/1000 == 0) {
				num+="0,";
				if(temp/100 == 0) {
					num+="0,";
					if(temp/10 == 0) {
						num+="0,";
						if(temp/1 == 0) {
							num += "0,";
						}else {
							while(temp != 0) {
							num +=temp%10+",";
							temp /=10;
							}
						}
					}else {
						while(temp != 0) {
						num +=temp%10+",";
						temp /=10;
						}
					}
				}else {
					while(temp != 0) {
					num +=temp%10+",";
					temp /=10;
					}
				}
			}else {
				while(temp != 0) {
				num +=temp%10+",";
				temp /=10;
				}
			}
			return num;
		}
		//일반 코드 조합
		public static String secretCode2(int temp) {
			String num = "";
			if(temp/1000 == 0) {
				num+="0";
				if(temp/100 == 0) {
					num+="0";
					if(temp/10 == 0) {
						num+="0";
						if(temp/1 == 0) {
							num += "0";
						}else {
							while(temp != 0) {
							num +=temp%10+"";
							temp /=10;
							}
						}
					}else {
						while(temp != 0) {
						num +=temp%10+"";
						temp /=10;
						}
					}
				}else {
					while(temp != 0) {
					num +=temp%10+"";
					temp /=10;
					}
				}
			}else {
				while(temp != 0) {
				num +=temp%10+"";
				temp /=10;
				}
			}
			
			return num;
		}
		

}




