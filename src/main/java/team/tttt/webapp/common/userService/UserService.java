package team.tttt.webapp.common.userService;

import team.tttt.webapp.common.enums.ServiceResult;
import team.tttt.webapp.vo.UserVO;

public interface UserService {

	public ServiceResult insertUser(UserVO userVO);

}
