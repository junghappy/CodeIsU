package team.tttt.webapp.tch.web;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.stu.web.TestController;
import team.tttt.webapp.vo.CustomUser;
import team.tttt.webapp.vo.UserVO;

@Slf4j
@Controller
@RequestMapping("/tch")
public class TchMainController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String tchMain(Authentication auth) {

		CustomUser mVO = (CustomUser) auth.getPrincipal();
		UserVO userVO = mVO.getMember();

		log.info("정보" + userVO.getUserAddr());
		System.out.println(userVO);

		return "tch/com/main";
	}
}
