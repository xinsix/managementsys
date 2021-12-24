package cn.whyx.controller;

import cn.whyx.util.IpConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @RequestMapping("/")
    public String login(HttpServletRequest request){
        System.out.println("login:"+IpConfig.getIpAddr(request));
        return "login";
    }


}
