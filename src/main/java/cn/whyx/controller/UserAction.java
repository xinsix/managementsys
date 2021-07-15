package cn.whyx.controller;

import cn.whyx.pojo.Penson;
import cn.whyx.response.Result;
import cn.whyx.service.penson.PensonService;
import cn.whyx.util.Condition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


@Controller
public class UserAction {

    @Autowired
    private PensonService userService;

    @PostMapping(value = "/login")
    @ResponseBody
    public Result login(@RequestParam String name, @RequestParam String password, HttpSession session) {
        Penson user=userService.login(name,password);
        System.out.println("成功:"+user);
        if (null ==  user){
            return new Result(400);
        } else {
            session.setAttribute(Condition.USER_SESSION,user);
            return new Result(200);
        }
    }

    @PostMapping(value = "/main")
    @ResponseBody
    public Object main(HttpSession session) {
        Penson user= (Penson) session.getAttribute(Condition.USER_SESSION);
        System.out.println(user);
        if (null ==  user){
            return new Result(400);
            /*return null;*/
        } else {
            return user;
        }
    }


}
