package cn.mryang.testSSM.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import cn.mryang.testSSM.bean.User;
import cn.mryang.testSSM.dao.UserDao;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao userDao;

	public List<User> findAllUser() {
		List<User> list = userDao.findAllUser();
		return list;
	}

	public int updateUser(User user) {
		int i =userDao.updateUser(user);
		return i;
	}

	public User findUserById(String id) {
		User user=userDao.findUserById(id);
		return user;
	}


}
