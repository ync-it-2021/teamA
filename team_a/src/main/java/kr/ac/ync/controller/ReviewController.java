package kr.ac.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.ReviewVO;
import kr.ac.ync.service.ReviewService;
import lombok.extern.log4j.Log4j;


@RestController
@Log4j
@RequestMapping("/replies/*")
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	
	// consumes은 호출하는쪽에서 application/json 요청만 받아들인다. 요청 컨텐트 타입 제한
	// produces은 조건에 지정한 미디어 타입과 관련된 응답을 생성. 응답 컨텐트 타입 제한
	// 명시적으로 consumes와 produces 조건을 각각 사용하는 것을 권장한다
//	@PreAuthorize("isAuthenticated()")
//	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
//	public ResponseEntity<String> create(@RequestBody ReviewVO vo) {
//
//		log.info("ReviewVO: " + vo);
//
//		int insertCount = service.register(vo);
//
//		log.info("Review INSERT COUNT: " + insertCount);
//
//		return insertCount == 1
//				? new ResponseEntity<>("success", HttpStatus.OK)
//				: new ResponseEntity<>("Fail!! 댓글 등록 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);
//	}
	
	// 교재와 다른 부분 내용 추가!
	// spring 5.2에서 MediaType.APPLICATION_JSON_UTF8_VALUE 는 제거됨
	// 해당 값 없어도 현재 브라우저는 UTF-8을 제대로 처리함.
	// spring 5.2 부터 MediaType.APPLICATION_JSON_UTF8 로 수정하면됨
	@GetMapping(value = "/{rv}", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<ReviewVO> get(@PathVariable("rv") int rv) {

		log.info("get: " + rv);

		return new ResponseEntity<>(service.get(rv), HttpStatus.OK);
	}
	
//	@PreAuthorize("principal.username == #vo.replyer")
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

//	@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping(value = "/{rv}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@RequestBody ReviewVO vo, @PathVariable("rv") int rv) {

		log.info("remove: " + rv);
		log.info("member_id: " + vo.getMember_id());

		return service.remove(rv) == 1
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 삭제 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	// spring 5.2에서 MediaType.APPLICATION_JSON_UTF8_VALUE 는 제거됨
	// 해당 값 없어도 현재 브라우저는 UTF-8을 제대로 처리함.
	// spring 5.2 부터 MediaType.APPLICATION_JSON_UTF8 로 수정하면됨
	// 페이징 처리된 댓글 목록을 가져오는 method
	@GetMapping(value = "/pages/{prd}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
															MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<ReviewVO>> getList(@PathVariable("page") int page, @PathVariable("prd") int prd) {
		
		 log.info("getList.................");
		 Criteria cri = new Criteria(page,10);
		 log.info(cri);
		 log.info(prd);
		 log.info(service.getList(cri,prd));
	
		 return new ResponseEntity<>(service.getList(cri,prd), HttpStatus.OK);
	 }

}

