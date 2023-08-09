package team.tttt.webapp.stu.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.vo.CustomUser;
import team.tttt.webapp.vo.UserVO;

@Slf4j
@Controller
@RequestMapping("/stu")
public class TestController {

	@GetMapping("/test")
	public String testStu(Authentication auth) {
		CustomUser mVO = (CustomUser) auth.getPrincipal();
		UserVO userVO = mVO.getMember();

		log.info("정보" + userVO.getUserAddr());
		System.out.println(userVO);
		return "stu/com/test";
	}
}
