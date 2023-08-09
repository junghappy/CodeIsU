package team.tttt.webapp.stu.classroom.service;

import java.util.List;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.vo.QstnVO;

public interface IStuQstnService {
    public ServiceResult insertQstn(QstnVO qstnVO);

	public List<QstnVO> selectQstnList();
}
