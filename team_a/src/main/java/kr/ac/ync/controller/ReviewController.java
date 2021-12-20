package kr.ac.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.MemberReviewVO;
import kr.ac.ync.domain.ReviewVO;
import kr.ac.ync.service.ReviewService;
import kr.ac.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;


@RestController
@Log4j
@RequestMapping("/replies/*")
public class ReviewController {
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private ReviewService service;
	
	// 리뷰 생성 /로그인 상태
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody ReviewVO vo,MultipartFile uploadFile) {
		if(uploadFile != null) {
			vo.setReview_img(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
		log.info("ReviewVO: " + vo);

		int insertCount = service.register(vo);

		log.info("Review INSERT COUNT: " + insertCount);

		return insertCount == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 등록 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);
	}
	// 리뷰 수정 /로그인 상태/ 본인만 수정 가능
	@PreAuthorize("principal.username == #vo.member_id")
	@RequestMapping(value = "/{rv}", method = { RequestMethod.PUT, RequestMethod.PATCH },
					consumes = "application/json", produces = {	MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody ReviewVO vo, @PathVariable("rv") int rv) {
		
		// @RequestBody 처리되는 data는 일반파라미터나 @PathVariable로 처리할 수 없다.
		vo.setReview_idx(rv);

		log.info("rno: " + rv);
		log.info("modify: " + vo);

		return service.modify(vo) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 수정 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);

	}
	//리뷰 삭제 /로그인 상태 / 본인만 삭제 가능
	@PreAuthorize("principal.username == #vo.member_id")
	@DeleteMapping(value = "/{rv}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@RequestBody ReviewVO vo, @PathVariable("rv") int rv) {

		log.info("remove: " + rv);
		log.info("member_id: " + vo.getMember_id());

		return service.remove(rv) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 삭제 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);

	}
	//리뷰 페이징
	@GetMapping(value = "/pages/{prd}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
															MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<ReviewVO>> getList(@PathVariable("page") int page, @PathVariable("prd") int prd) {
		
		 log.info("getList.................");
		 Criteria cri = new Criteria(page,10);
		 log.info(cri);
		 log.info("search id(product) : "+prd);
		 log.info(service.getList(cri,prd));
	
		 return new ResponseEntity<>(service.getList(cri,prd), HttpStatus.OK);
	 }
	
	//관리자 페이지 회원 작성 리뷰 페이징
	@GetMapping(value = "/member/pages/{id}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
				MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<ReviewVO>> getList(@PathVariable("page") int page, @PathVariable("id") String member_id) {
	log.info("getList.................");
	Criteria cri = new Criteria(page,10);
	log.info(cri);
	log.info("search id(member) : "+member_id);
	log.info(service.getList(cri,member_id));
	
	return new ResponseEntity<>(service.getList(cri,member_id), HttpStatus.OK);
	}
	
	//관리자 페이지 회원 작성 리뷰 페이징
	@GetMapping(value = "/member/mypage/{id}", produces = { MediaType.APPLICATION_XML_VALUE,
				MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<MemberReviewVO>> getListMypage( @PathVariable("id") String member_id) {
		
		
			log.info("getList.................");
			log.info("search id(member) : "+member_id);
			log.info(service.getListMypage(member_id));
			
			return new ResponseEntity<>(service.getListMypage(member_id), HttpStatus.OK);
	}

}

