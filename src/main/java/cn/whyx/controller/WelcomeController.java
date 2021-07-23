package cn.whyx.controller;

import cn.whyx.pojo.InfoManage;
import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Task;
import cn.whyx.service.task.TaskService;
import cn.whyx.service.welcome.WelcomeService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
    @Resource
    private WelcomeService welcomeService;

    @Resource
    private TaskService taskService;

    /**
     * 查询全部公告,，任务
     */
    @GetMapping("/selInfomanage")
    public String selInfoManage(Model model, HttpSession session)throws Exception{
        Integer pid = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        List<InfoManage> list = welcomeService.selInfoManage();
        Integer department = welcomeService.seldepartment();
        Integer stion = welcomeService.selstion();
        Integer position = welcomeService.selposition();
        Integer repairl = welcomeService.selrepairl();
        List<Task> listtask = taskService.getAllList(null,pid);
        model.addAttribute("list",list);
        model.addAttribute("listtask",listtask);
        model.addAttribute("department",department);
        model.addAttribute("stion",stion);
        model.addAttribute("position",position);
        model.addAttribute("repairl",repairl);
        return "welcome/welcome";
    }

}
