package team.tttt.webapp.emp.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/emp")
public class EmpMainController {

	@GetMapping("/main")
	public String empMain() {
		log.info("empMain()...실행");
		return "emp/com/main";
	}


}
