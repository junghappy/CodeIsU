package team.tttt.webapp.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	private static final Logger log = LoggerFactory.getLogger(SavedRequestAwareAuthenticationSuccessHandler.class);

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		log.info("[로그인 성공!] onAuthenticationSuccess 실행...!");
		User customUser = (User) authentication.getPrincipal();
		log.info("username : " + customUser.getUsername());
		log.info("password : " + customUser.getPassword());

        List<String> roleNames = new ArrayList<>();
        authentication.getAuthorities().forEach(authority ->{

            roleNames.add(authority.getAuthority());
        });


        log.info("역할 : " + roleNames);

        if(roleNames.contains("S01")) {
            response.sendRedirect("/stu/main");
            return;
        }
        if(roleNames.contains("E11")) {
            response.sendRedirect("/emp/main");
            return;
        }
        if(roleNames.contains("E12")) {
        	response.sendRedirect("/tch/main");
        	return;
        }

		super.onAuthenticationSuccess(request, response, authentication);
	}


}
