package cn.whyx.controller;

import cn.whyx.pojo.Department;
import cn.whyx.service.departmentservice.Departmentservice;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/department")
public class DepartmentController {
    @Resource
    private Departmentservice service;

    /**
     * 查询全部部门
     */
    @GetMapping("/selDepartment")
    public String selDepartment(Model model, @RequestParam(required = false)String department_name)throws Exception{
        List<Department> list = service.selDepartment(department_name);
        Integer count = service.selcount(department_name);
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "/department/department_list";
    }

    /**
     * 查询修改前的部门名称
     */
    @RequestMapping("/selDepartmentname/{id}")
    public String selDepartmentname(Model model,@PathVariable Integer id)throws Exception{
        Department department = service.selDepartmentname(id);
        model.addAttribute("department",department);
        return "/department/department_upd";
    }

    /**
     * 添加部门
     */
    @ResponseBody
    @PostMapping("/insertDepartment")
    public Object insertDepartment(@RequestParam String department_name)throws Exception{
        Department department = new Department();
        department.setDepartment_name(department_name);
        return service.insertDepartment(department);
    }

    /**
     * 修改部门
     */
    @ResponseBody
    @RequestMapping("/updDepartment")
    public Object updDepartment(@RequestParam String department_name)throws Exception{
        Department department = new Department();
        department.setDepartment_name(department_name);
        return service.insertDepartment(department);
    }

    /**
     * 删除部门
     */
    @ResponseBody
    @RequestMapping("/delDepartment")
    public Object delinfomanage(@RequestParam("id")int id)throws Exception{
        boolean bool = service.delDepartment(id);
        return bool;
    }


}
