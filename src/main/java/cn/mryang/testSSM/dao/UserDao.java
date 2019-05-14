package cn.mryang.testSSM.dao;

import java.util.List;

import cn.mryang.testSSM.bean.User;

public interface UserDao {
	List<User> findAllUser();
	int insertUser(User user);
	int updateUser(User user);
	int deleteUserById(String id);
	User findUserById(String id);
}
