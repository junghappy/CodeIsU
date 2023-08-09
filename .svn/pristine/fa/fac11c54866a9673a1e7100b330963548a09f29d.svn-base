package team.tttt.webapp.pms.task.service;

import java.util.List;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.vo.TaskVO;

public interface ProjectTaskService {

	// 상위 업무 생성
	public int insertUpperTask(TaskVO taskVO);

	// 하위 업무 생성
	public int insertLowerTask(TaskVO taskVO);

	// 업무 목록 조회
	public List<TaskVO> taskList(String projNo);

	// 업무 상세조회
	public TaskVO taskDetail(String taskNo);

	// 업무 삭제
	public ServiceResult taskDelete(String taskNo);

	// 업무 업데이트
	public int taskUpdate(TaskVO taskVO);

	public TaskVO getDetailTask(String taskNo);

}
