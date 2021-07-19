package cn.whyx.controller;

import cn.whyx.pojo.InfoManage;
import cn.whyx.service.welcome.WelcomeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
    @Resource
    private WelcomeService welcomeService;

    /**
     * 查询全部公告
     */
    @GetMapping("/selInfomanage")
    public String selInfoManage(Model model)throws Exception{
        List<InfoManage> list = welcomeService.selInfoManage();
        model.addAttribute("list",list);
        return "welcome/welcome";
    }
}
