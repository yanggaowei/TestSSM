package cn.mryang.testSSM.service;

import java.util.List;

import cn.mryang.testSSM.bean.User;

public interface UserService {
	List<User> findAllUser();
	int updateUser(User user);
}
