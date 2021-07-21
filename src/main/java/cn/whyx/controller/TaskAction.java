package cn.whyx.controller;



import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Task;
import cn.whyx.service.task.TaskService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/task")
public class TaskAction {
    @Resource
    public TaskService taskService;

    /**
     * 查询所有信息
     */
    @RequestMapping(value = "/find")
    public String getAllList(Model model, @RequestParam(required = false) String matter, HttpSession session) throws Exception {
        Task task = new Task();
        task.setMatter(matter);
        Integer pid = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        Integer count = taskService.selcount(matter);
        task.setEmployeeid(pid);
        List<Task> list = taskService.getAllList(matter,pid);
        model.addAttribute("list", list);
        model.addAttribute("count",count);
        return "/task/task";
    }
    @RequestMapping("/selById")
    public String selById(@RequestParam Integer id,
                          Model model)throws Exception{
        Task task = taskService.selById(id);
        model.addAttribute("task",task);
        return "update";

    }
    /**
     * 修改信息
     */
    @PostMapping("/upd")
    @ResponseBody
    public Object upd(Task task)throws Exception{
        task.setRevisiontime(new Date());
        return taskService.update(task);
    }

    /**
     * 删除指定用户
     */
    @GetMapping("/del")
    public String del(@RequestParam String id)throws Exception{
        Integer count = Integer.valueOf(id);
        int result = taskService.del(count);
        return "redirect:/index";
    }

    /**
     * 添加信息
     */
    @PostMapping("/add")
    @ResponseBody
    public Object add(Task task) throws  Exception{
        task.setCreationtime(new Date());
        return taskService.add(task);
    }
    @RequestMapping("/toAdd")
    public String toAdd(){return "add";}
}
