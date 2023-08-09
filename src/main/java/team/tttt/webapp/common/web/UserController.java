package team.tttt.webapp.common.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.common.userService.UserService;
import team.tttt.webapp.vo.UserVO;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	private UserService userService;

	@RequestMapping(value = "/login")
	public String test01() {

		return "common/user/login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpServletRequest request, HttpServletResponse response) {
	    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    if (authentication != null) {
	        new SecurityContextLogoutHandler().logout(request, response, authentication);
	        String cookieName = "remember-me";
	        Cookie cookie = new Cookie(cookieName, null);
	        cookie.setMaxAge(0);
	        cookie.setPath(StringUtils.hasLength(request.getContextPath()) ? request.getContextPath() : "/");
	        response.addCookie(cookie);
	        return "redirect:/";
	    }

	    return "redirect:/user/login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {

		return "common/user/signup";

	}
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signupProcess(UserVO userVO) {

		ServiceResult result;

		result = userService.insertUser(userVO);

		System.out.println(userVO);
		return "common/user/signup";

	}

	@RequestMapping(value = "log")
	public String logoutStartPage() {
		return "common/user/log";
	}
}
