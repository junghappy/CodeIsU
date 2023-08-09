package team.tttt.webapp.pms.task.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.mapper.ProjectTaskMapper;
import team.tttt.webapp.vo.TaskVO;


@Service
public class ProjectTaskServiceImpl implements ProjectTaskService {

	@Inject
	private ProjectTaskMapper mapper;

	@Override
	public int insertUpperTask(TaskVO taskVO) {
		return mapper.insertUpperTask(taskVO);
	}

	@Override
	public int insertLowerTask(TaskVO taskVO) {
		return mapper.insertLowerTask(taskVO);
	}

	@Override
	public List<TaskVO> taskList(String projNo) {
		System.out.println("------------"+projNo+"----------services");
		return mapper.taskList(projNo);
	}

	@Override
	public TaskVO taskDetail(String taskNo) {
		return mapper.taskDetail(taskNo);
	}

	@Override
	public ServiceResult taskDelete(String taskNo) {

		int cnt = mapper.taskDelete(taskNo);

		if(cnt > 0){
			return ServiceResult.OK;

		}
		return ServiceResult.FAILED;
	}

	@Override
	public int taskUpdate(TaskVO taskVO) {
		return mapper.taskUpdate(taskVO);
	}

	@Override
	public TaskVO getDetailTask(String taskNo) {
		// TODO Auto-generated method stub
		return mapper.taskDetail(taskNo);
	}



}
