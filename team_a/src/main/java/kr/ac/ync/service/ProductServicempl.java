package kr.ac.ync.service;

import org.springframework.stereotype.Service;

import kr.ac.ync.mapper.ProductMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServicempl implements ProductService {
	
	private ProductMapper mapper;

}
