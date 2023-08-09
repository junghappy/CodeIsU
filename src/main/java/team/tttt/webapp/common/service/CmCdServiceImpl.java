package team.tttt.webapp.common.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import team.tttt.webapp.mapper.CmCdMapper;
import team.tttt.webapp.vo.CmCdVO;

@Service
public class CmCdServiceImpl implements CmCdService {


	@Inject
	private CmCdMapper mapper;

	@Override
	public List<CmCdVO> selectCode(String cdTypeId) {
		return mapper.selectCode(cdTypeId);
	}

}
