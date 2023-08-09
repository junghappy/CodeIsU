package team.tttt.webapp.emp.web;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.emp.service.IEmpService;
import team.tttt.webapp.vo.CustomUser;
import team.tttt.webapp.vo.HntcVO;

@Slf4j
@Controller
@RequestMapping("/emp")
public class HntcController {


	@Inject
	private IEmpService empService;



	@GetMapping("/hntcForm")
	public String empForm() {
		log.info("empForm()...실행");
		return "emp/com/empForm";
	}

	@GetMapping("/hntcBoard")
	public String hntcBoard(Model model) {
		log.info("hntcBoard()...실행");

		List<HntcVO> hntcList = new ArrayList<HntcVO>();
		hntcList = empService.selectHntc();

		model.addAttribute("hntcList", hntcList);
		//log.info("hntcList : "+hntcList);
		return "emp/com/hntcBoard";
	}

	@GetMapping("/hntcDetail")
	public String hntcDetail(String boNo, Model model) {
		log.info("hntcDetail()...실행");
		HntcVO hntcVO = empService.detailHntc(boNo);

		model.addAttribute("hntcVO", hntcVO);
		return "emp/com/hntcDetail";
	}

	@GetMapping("/dscsnBoard")
	public String dscsnBoard() {
		log.info("dscsnBoard()...실행");
		return "emp/com/dscsnBoard";
	}

	@PostMapping("/insert")
	public String hntcInsert(
			Authentication auth,
			HntcVO hntcVo, Model model) {
		log.info("hntcInsert()...실행");
		String goPage = "";

		CustomUser mVO = (CustomUser) auth.getPrincipal();
		String writer = mVO.getUsername();
		//log.info("writer " + writer);

		hntcVo.setEmpNo(writer);
		int result = empService.hntcInsert(hntcVo);

		if(result == 1) {
			goPage = "redirect:/emp/hntcBoard";
		}else {
			goPage = "emp/com/empForm";
		}
		return goPage;
	}

	@GetMapping("/update")
	public String hntcUpdateForm(String boNo, Model model) {
		log.info("hntcUpdateForm()...실행");
		HntcVO hntcVO = empService.detailHntc(boNo);

		model.addAttribute("hntcVO", hntcVO);
		model.addAttribute("status", "u");
		return "emp/com/empForm";
	}

	@PostMapping("/update")
	public String hntcUpdate(HntcVO hntcVO, Model model) {
		log.info("hntcUpdate()...실행");
		String goPage = "";

		int result = empService.updateHntc(hntcVO);

		if(result == 1) {
			goPage = "redirect:/emp/hntcDetail?boNo="+hntcVO.getHntcNo();
		}else {
			model.addAttribute("hntcVO", hntcVO);
			model.addAttribute("status", "u");
			return "emp/com/empForm";
		}

		return goPage;
	}

	@GetMapping("/hntcDel")
	public String hntcDel(String boNo,Model model) {
		log.info("hntcDel()...실행");
		String goPage = "";

		int result = empService.hntcDel(boNo);

		if(result == 1) {
			goPage = "redirect:/emp/hntcBoard";
		}else {
			goPage = "redirect:/emp/hntcDetail?boNo="+boNo;
		}
		return goPage;
	}


}
