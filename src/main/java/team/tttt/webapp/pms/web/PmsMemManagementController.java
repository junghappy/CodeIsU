package team.tttt.webapp.pms.web;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.pms.service.IMemManagementService;
import team.tttt.webapp.vo.MemJoinAplyVO;
import team.tttt.webapp.vo.MemManagementVO;
import team.tttt.webapp.vo.ProjVO;

@Slf4j
@Controller
@RequestMapping("/pms")
public class PmsMemManagementController {

    @Inject
    private IMemManagementService memService;

    @GetMapping(value="/memlist.do")
    public String memberManagementList(Model model) {
        return "pms/com/memManagement";
    }


    @ResponseBody
    @PostMapping(value="/mem.do",produces = "application/json;charset=utf-8")
    public List<MemManagementVO> memList(@RequestBody String projNo) {

        List<MemManagementVO> memList = memService.memList(projNo);
        return memList;
    }

    @ResponseBody
    @PostMapping(value="/memupdate.do",produces = "application/json;charset=utf-8")
    public String positionModify(@RequestParam Map<String, String> map) {

        String goPage = "";

        ServiceResult result = memService.positionModify(map);

        if (result.equals(ServiceResult.OK)) {
            goPage = "성공";
        } else {
            goPage = "실패";
        }
        return goPage;
    }



    @ResponseBody
    @PostMapping(value="/memJoinAply.do",produces = "application/json;charset=utf-8")
    public List<MemJoinAplyVO> memJoinAplyList(String projNo, Model model) {
        List<MemJoinAplyVO> memJoinList = memService.memJoinAplyList(projNo);
//        model.addAttribute("memJoinList", memJoinList);
        return memJoinList;
    }

    @ResponseBody
    @PostMapping(value="/memjoinDetail.do",produces = "application/json;charset=utf-8")
    public MemJoinAplyVO memjoinDetail(@RequestBody Map<String, String> map) {
    	log.info("joinVO"+ map.get("stuNo"));

    	MemJoinAplyVO vo = new MemJoinAplyVO();


    	vo = memService.memJoinDetail(map);

    	log.info(vo.getAplyCn());
    	log.info(vo.getAplyTech());

    	return vo;

    }

    @ResponseBody
    @PostMapping(value="/meminsert.do",produces = "application/json;charset=utf-8")
    public String memInsert(@RequestBody MemManagementVO memVO) {
    	log.info(memVO.getStuNo());
    	log.info(memVO.getJbttlCd());
    	log.info(memVO.getTeamJoinDt());
    	log.info(memVO.getProjNo());
    	memVO.setProjNo("a001");

    	MemManagementVO vo = new MemManagementVO();

    	ServiceResult result = memService.memInsert(memVO);

    	String goPage ="";

    	if (result.equals(ServiceResult.OK)) {
            goPage = "성공";
        } else {
            goPage = "실패";
        }
        return goPage;
    }


    @ResponseBody
    @PostMapping(value="/memdel.do",produces = "application/json;charset=utf-8")
    public String memDel(@RequestBody MemManagementVO memVO) {
    	log.info(memVO.getStuNo());
    	log.info(memVO.getJbttlCd());
    	log.info(memVO.getTeamJoinDt());
    	log.info(memVO.getProjNo());
    	memVO.setProjNo("a001");

    	MemManagementVO vo = new MemManagementVO();

    	ServiceResult result = memService.memDel(memVO);

    	String goPage ="";

    	if (result.equals(ServiceResult.OK)) {
    		goPage = "성공";
    	} else {
    		goPage = "실패";
    	}
    	return goPage;
    }


	 @ResponseBody
	 @PostMapping(value="/projstatus.do",produces ="application/json;charset=utf-8")
	 public ProjVO projStatus(@RequestBody ProjVO projVO) {

		 ProjVO vo = new ProjVO();
		 vo =  memService.projStatus(projVO);

		 return vo;
	 }


}
