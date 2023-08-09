package team.tttt.webapp.pms.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.mapper.MemManagementMapper;
import team.tttt.webapp.vo.MemJoinAplyVO;
import team.tttt.webapp.vo.MemManagementVO;
import team.tttt.webapp.vo.ProjVO;

@Service
public class MemManagementImpl implements IMemManagementService {

	@Inject
	private MemManagementMapper memMapper;

	@Override
	public List<MemManagementVO> memList(String projNo) {
		return memMapper.memList(projNo);
	}


	@Override
	public ServiceResult positionModify(Map<String, String> map) {

		int cnt = memMapper.positionModify(map);
		if(cnt > 0){
			return ServiceResult.OK;

		}
		return ServiceResult.FAILED;
	}


	@Override
	public List<MemJoinAplyVO> memJoinAplyList(String projNo) {
		return memMapper.memJoinAplyList(projNo);
	}


	@Override
	public MemJoinAplyVO memJoinDetail(Map<String, String> map) {
		return memMapper.memJoinDetail(map);
	}


	@Transactional
	@Override
	public ServiceResult memInsert(MemManagementVO memVO) {


		int cnt =  memMapper.memInsert(memVO);
		cnt +=  memMapper.memDel(memVO);
		if(cnt == 2){
			return ServiceResult.OK;

		}
		return ServiceResult.FAILED;
	}


	@Override
	public ServiceResult memDel(MemManagementVO memVO) {

		int cnt =  memMapper.memDel(memVO);
		if(cnt > 0){
			return ServiceResult.OK;

		}
		return ServiceResult.FAILED;

		}



	@Override public ProjVO projStatus(ProjVO projVO) {
		return memMapper.projStatus(projVO);
	}

}
