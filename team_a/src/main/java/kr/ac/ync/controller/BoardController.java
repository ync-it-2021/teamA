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

import kr.ac.ync.domain.BoardVO;
import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PageDTO;
import kr.ac.ync.service.BoardService;
import kr.ac.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/admin/board/*","board/*"})
public class BoardController {

	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private BoardService service;

	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public void register() {
		// register 4
	}
	//	list 출력
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	// 글 등록
	// file upload가 추가된 게시판 등록
	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(MultipartFile[] uploadFile, BoardVO board, RedirectAttributes rttr) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					board.setBd_img1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					board.setBd_img2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 2:
					board.setBd_img3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 3:
					board.setBd_img4(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					board.setBd_img5(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}
		
		log.info("register: " + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getBd_idx());

		return "redirect:/admin/board/list";
	}

	//보기
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("bd") int bd_idx, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("board", service.get(bd_idx));
	}
	//글 수정
	@PostMapping("/modify")
//	@PreAuthorize("principal.username == #board.writer")
	public String modify(MultipartFile[] uploadFile, BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다.
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					board.setBd_img1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					board.setBd_img2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 2:
					board.setBd_img3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 3:
					board.setBd_img4(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					board.setBd_img5(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}
		
		log.info("modify:" + board);
		
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/board/list" + cri.getListLink();
	}

	@PostMapping("/remove")
//	@PreAuthorize("principal.username == #bd_writer")
	public String remove(@RequestParam("id") int bd_idx, Criteria cri, RedirectAttributes rttr, String member_id) {

		log.info("remove..." + bd_idx);
		if (service.remove(bd_idx)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/board/list" + cri.getListLink();
	}

}
