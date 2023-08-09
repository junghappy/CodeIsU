package team.tttt.webapp.common.userService;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.mapper.UserTestMapper;
import team.tttt.webapp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserTestMapper mapper;

	@Override
	public ServiceResult insertUser(UserVO userVO) {
		int cnt = 0;

		// 처음에 userNo 시퀀스
		// 원생 테이블 인서트
		// 권한테이블 인서트




		cnt = mapper.insertUser(userVO);

		System.out.println("cnt값" + cnt);
		if (cnt == 3) {
			return ServiceResult.OK;
		}
		return ServiceResult.FAILED;
	}



}
