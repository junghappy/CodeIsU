package team.tttt.webapp.mapper;

import java.util.List;

import team.tttt.webapp.vo.UserRoleVO;
import team.tttt.webapp.vo.UserVO;

public interface UserMapper {
	public void create(UserVO member);
	public void createAuth(UserRoleVO memberAuth);
	public List<UserVO> list();
	public UserVO read(String userNo);
	public void modify(UserVO member);
	public void deleteAuth(int userNo);
	public void delete(int userNo);
	public UserVO readByUserNo(String username);
}
