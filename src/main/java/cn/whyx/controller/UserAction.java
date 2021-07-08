package cn.whyx.controller;

import cn.whyx.pojo.User;
import cn.whyx.response.Result;
import cn.whyx.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class UserAction {

    @Autowired
    private UserService userService;

    @PostMapping(value = "/login")
    @ResponseBody
    public Result login(@RequestParam String name,@RequestParam String password) {
        User user=userService.login(name,password);
        System.out.println("成功");
        if (null ==  user){
            return new Result(400);
        } else {
            return new Result(200);
        }
    }


}
