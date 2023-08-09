package team.tttt.webapp.stu.classroom.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.mapper.StuQstnMapper;
import team.tttt.webapp.vo.QstnVO;

@Service
public class StuQstnServiceImpl implements IStuQstnService {
    @Inject
    private StuQstnMapper stuQstnMapper;

    // 질문게시판 등록
	@Override
	public ServiceResult insertQstn(QstnVO qstnVO) {
        int status = stuQstnMapper.insertQstn(qstnVO);
        ServiceResult result;
        if(status > 0) {
        	result = ServiceResult.OK;
        } else {
        	result = ServiceResult.FAILED;
        }
        return result;
	}

	// 질문게시판 조회
	@Override
	public List<QstnVO> selectQstnList() {
		List<QstnVO> qstnList = stuQstnMapper.selectQstnList();
		return qstnList;
	}
}
