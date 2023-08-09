package team.tttt.webapp.stu.classroom.web;


import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.stu.classroom.service.IStuQstnService;
import team.tttt.webapp.vo.CustomUser;
import team.tttt.webapp.vo.QstnVO;
import team.tttt.webapp.vo.UserVO;

@Slf4j
@Controller
@RequestMapping("/stu")
public class StuQstnController {

    @Inject
    private IStuQstnService stuQstnService;

    @GetMapping(value = "/classroom/qstn")
    public String qstlList(Model model) {
    	List<QstnVO> qstnList = stuQstnService.selectQstnList();
        model.addAttribute("qstnList", qstnList);
        log.info("리스트 출력 컨트롤러");
    	return "stu/com/classroom/qstnList";
    }

    @PostMapping(value = "/classroom/qstn")
    public String qstInsert(
    		String editorData,
    		RedirectAttributes ra,
    		Authentication auth) {
    	CustomUser mVO = (CustomUser) auth.getPrincipal();
		UserVO userVO = mVO.getMember();
    	QstnVO qstnVO = new QstnVO();
    	qstnVO.setQstnCn(editorData);
    	qstnVO.setStuNo(userVO.getUserNo());
    	qstnVO.setSbjctCode("jv01");
        ServiceResult result = stuQstnService.insertQstn(qstnVO);
        ra.addFlashAttribute("result", result);
        ra.addFlashAttribute("result", result);
        log.info("ㅎㅎ");
        return "redirect:/stu/classroom/qstn";
    }
}
