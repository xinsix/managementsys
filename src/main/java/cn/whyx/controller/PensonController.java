package cn.whyx.controller;

import cn.whyx.pojo.Department;
import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Role;
import cn.whyx.service.penson.PensonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/Penson")
public class PensonController {
    @Resource
    private PensonService service;

    /**
     * 查询全部员工
     */
    @GetMapping("/selInfoManage")
    public String selInfoManage(Model model,@RequestParam(required = false)String name)throws Exception{
        List<Penson> list = service.selInfoManage(name);
        Integer count = service.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "/repairlist";
    }

    /**
     * 查询角色
     */
    @GetMapping("/selRole")
    public String selRole(Model model)throws Exception{
        List<Role> list = service.selRole();
        List<Department> department = service.seldepartment();
        model.addAttribute("department",department);
        model.addAttribute("list",list);
        return "repairupd";
    }

    /**
     * 查询修改前的员工信息
     */
    @RequestMapping("/selrevision/{id}")
    public String selrevision(Model model,@PathVariable Integer id)throws Exception{
        List<Role> list = service.selRole();
        List<Department> department = service.seldepartment();
        model.addAttribute("department",department);
        model.addAttribute("list",list);
        Penson penson = service.selrevision(id);
        model.addAttribute("penson",penson);
        return "/repairupd";
    }

    /**
     * 修改员工
     */
    @ResponseBody
    @RequestMapping("/updPenson")
    public Object updPenson(Penson penson)throws Exception{
        boolean bool = service.updPenson(penson);
        return bool;
    }
}
