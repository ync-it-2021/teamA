package kr.ac.ync.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.ac.ync.domain.MemberVO;
import kr.ac.ync.mapper.MemberMapper;
import kr.ac.ync.security.domain.CustomUser;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String member_id) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + member_id);

		// userName means userid
		MemberVO vo = memberMapper.read(member_id);

		log.warn("queried by member mapper: " + vo);

		//return null;
		return vo == null ? null : new CustomUser(vo);
	}

}
