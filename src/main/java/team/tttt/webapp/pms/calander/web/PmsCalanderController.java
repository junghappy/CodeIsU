package team.tttt.webapp.pms.calander.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import team.tttt.webapp.pms.calander.service.IFullCalanderService;
import team.tttt.webapp.vo.TaskVO;

@Controller
@RequestMapping("/pmsCalander")
public class PmsCalanderController {



	@RequestMapping("/view")
	public String list() {
		return "pms/com/taskCalander";
	}

	@ResponseBody
	@RequestMapping("/insert.do")
	public String data(@RequestBody TaskVO taskvo) {

		return "success";
	}

}
