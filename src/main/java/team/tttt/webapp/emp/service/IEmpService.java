package team.tttt.webapp.emp.service;

import java.util.List;

import team.tttt.webapp.vo.HntcVO;

public interface IEmpService {

	public int hntcInsert(HntcVO hntcVo);
	public List<HntcVO> selectHntc();
	public HntcVO detailHntc(String boNo);
	public int hntcDel(String boNo);
	public int updateHntc(HntcVO hntcVO);

}
