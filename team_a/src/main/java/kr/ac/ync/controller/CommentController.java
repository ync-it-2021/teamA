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

import kr.ac.ync.domain.CommentVO;
import kr.ac.ync.service.CommentService;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/comment/*")
public class CommentController {

	@Autowired
	private CommentService service;

	
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody CommentVO vo) {

		log.info("CommentVO: " + vo);

		int insertCount = service.register(vo);

		log.info("Comment INSERT COUNT: " + insertCount);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 등록 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = "/{cm}", method = { RequestMethod.PUT,
			RequestMethod.PATCH }, consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody CommentVO vo, @PathVariable("cm") int cm) {

		vo.setCm_idx(cm);

		log.info("cm_idx: " + cm);
		log.info("modify: " + vo);

		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 수정 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@PreAuthorize("principal.username == #vo.member_id")
	@DeleteMapping(value = "/{cm}", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@RequestBody CommentVO vo, @PathVariable("cm") int cm) {

		log.info("remove: " + cm);
		log.info("member_id: " + vo.getMember_id());

		return service.remove(cm) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>("Fail!! 댓글 삭제 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);

	}

	@GetMapping(value = "/pages/{idx}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<List<CommentVO>> getList( @PathVariable("idx") int idx) {

		log.info("getList.................");

		log.info(idx);
		log.info(service.getList(idx));

		return new ResponseEntity<>(service.getList(idx), HttpStatus.OK);
	}

}
