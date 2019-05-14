package cn.mryang.testSSM.controller;

import java.util.List;
import javax.annotation.Resource;
import cn.mryang.testSSM.bean.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.mryang.testSSM.bean.User;
import cn.mryang.testSSM.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;

	@RequestMapping("/userList.do")
	public String toUserList() {
		System.out.println("0000");
		return "user/userList";
	}
	
	@ResponseBody
	@RequestMapping("/userData.do")
	public List findAllUser() {
		List<User> userList = userService.findAllUser();
		return userList;
	}

	@ResponseBody
	@RequestMapping("updateSave.do")
	public Result updateSave(User user) {
		int i = userService.updateUser(user);
		Result result=new Result(true,i,"更新成功");
		return result;
	}

}
