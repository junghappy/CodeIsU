package team.tttt.webapp.pms.task.web;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.pms.service.IMemManagementService;
import team.tttt.webapp.pms.task.service.ProjectTaskService;
import team.tttt.webapp.vo.MemManagementVO;
import team.tttt.webapp.vo.TaskVO;

@RequestMapping("/pms/project")
@Slf4j
@Controller
public class ProjectTaskController{

	@Inject
	private ProjectTaskService service;

	@Inject
	private IMemManagementService memService;

	@GetMapping("/taskList")
	public String getTaskList() {

		return "pms/com/taskBoard";

	}

	// 업무 출력
	@PostMapping("/taskListOut")
	@ResponseBody
	public List<TaskVO> getTaskList(String projNo) {

	System.out.println("-----------------["+projNo+"]--------------------");
	List<TaskVO> taskList = service.taskList(projNo);
	log.info(taskList.size()+"");

	return taskList;
	}


	// 업무 상세보기
	@GetMapping("/taskDetail")
	@ResponseBody
	public TaskVO getDetailTask(String taskNo) {
		System.out.println(taskNo+"--------------- taskNo getDetailTask");
		TaskVO vo = service.getDetailTask(taskNo);
		return vo;
	}


	// 업무 삭제
	@DeleteMapping("/taskDelete")
	@ResponseBody
	public String deleteTask(@RequestBody Map<String, String> map) {
		log.info("ppppppppppppppppp");


		String msg;

		System.out.println(map.get("taskNo")+"--------------- taskDelete");

		ServiceResult result = service.taskDelete(map.get("taskNo"));

        if (result.equals(ServiceResult.OK)) {
            msg = "성공";
        } else {
        	msg = "실패";
        }
		return msg;
	}

	// 프로젝트 멤버 추출
    @ResponseBody
    @GetMapping(value="/extractMem",produces = "application/json;charset=utf-8")
    public List<MemManagementVO> memList(String projNo) {

    	log.info("------------- mem.do 실행 "+ projNo);

        List<MemManagementVO> memList = memService.memList(projNo);

        log.info(" memList 사이즈 : "+memList.size());

        return memList;
    }

    @ResponseBody
    @PutMapping(value="/updateTask",produces = "application/json;charset=utf-8" )
    public int updateTask(@RequestBody TaskVO updateTask) {

    	log.info("updateTask : " + updateTask.getProjNo());

    	int cnt = service.taskUpdate(updateTask);

    	return cnt;
    }





}
