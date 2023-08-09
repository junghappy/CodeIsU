package team.tttt.webapp.emp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import team.tttt.webapp.mapper.HntcMapper;
import team.tttt.webapp.vo.HntcVO;

@Service
public class EmpServiceImpl implements IEmpService {

	@Inject
	private HntcMapper hntcMapper;

	@Override
	public int hntcInsert(HntcVO hntcVo) {
		return hntcMapper.hntcInsert(hntcVo);
	}

	@Override
	public List<HntcVO> selectHntc() {
		return hntcMapper.selectHntc();
	}

	@Override
	public HntcVO detailHntc(String boNo) {
		return hntcMapper.detailHntc(boNo);
	}

	@Override
	public int hntcDel(String boNo) {
		return hntcMapper.hntcDel(boNo);
	}

	@Override
	public int updateHntc(HntcVO hntcVO) {
		return hntcMapper.updateHntc(hntcVO);
	}

}
