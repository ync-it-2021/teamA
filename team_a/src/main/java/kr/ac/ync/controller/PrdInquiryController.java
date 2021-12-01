package kr.ac.ync.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.ync.domain.Criteria;
import kr.ac.ync.domain.PrdInquiryVO;
import kr.ac.ync.service.PrdInquiryService;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/prdInquiry/*")
public class PrdInquiryController {
	
	@Autowired
	private PrdInquiryService service;
	
	@GetMapping(value = "/pages/{prd}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_VALUE })
public ResponseEntity<List<PrdInquiryVO>> getList(@PathVariable("page") int page, @PathVariable("prd") int prd) {

log.info("getList.................");
Criteria cri = new Criteria(page,10);
log.info(cri);
log.info(prd);
log.info(service.getList(cri,prd));

return new ResponseEntity<>(service.getList(cri,prd), HttpStatus.OK);
}
	
}
