package team.tttt.webapp.mapper;

import java.util.List;

import team.tttt.webapp.vo.HntcVO;

public interface HntcMapper {

	public int hntcInsert(HntcVO hntcVo);
	public List<HntcVO> selectHntc();
	public HntcVO detailHntc(String boNo);
	public int hntcDel(String boNo);
	public int updateHntc(HntcVO hntcVO);

}
