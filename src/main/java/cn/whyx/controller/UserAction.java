package cn.whyx.controller;

import cn.whyx.pojo.Penson;
import cn.whyx.response.Result;
import cn.whyx.service.penson.PensonService;
import cn.whyx.util.Condition;
import cn.whyx.util.IpConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/user")
public class UserAction {

    @Resource
    private PensonService userService;

    @RequestMapping("/login.html")
    public String login(HttpServletRequest request){
        System.out.println("login:"+IpConfig.getIpAddr(request));
        return "login";
    }

    @ResponseBody
    @RequestMapping("/logout")
    public Object logout(HttpSession session){
        session.removeAttribute(Condition.USER_SESSION);
        return true;
    }

    @PostMapping(value = "/toLogin")
    public String toLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {
        Penson user=userService.login(username,password);
        System.out.println("成功:"+user);
        /*if (null ==  user){
            return "redirect:/user/login";
        } else {
            session.setAttribute(Condition.USER_SESSION,user);
            return "redirect:/user/main";
        }*/
        session.setAttribute(Condition.USER_SESSION,user);
        return "redirect:/user/main";
    }

    @GetMapping(value = "/main")
    public Object main(HttpSession session) {
        Penson user= (Penson) session.getAttribute(Condition.USER_SESSION);
        System.out.println(user);
        if (null ==  user){
            return "redirect:/user/login.html";
            /*return null;*/
        } else {
            return "/home/index";
        }
    }


}
