package cn.whyx.controller;

import cn.whyx.pojo.Detailedprocess;
import cn.whyx.service.detailedprocess.DetailedprocessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/detailedprocess")
public class DetailedprocessAction {

    @Resource
    private DetailedprocessService service;

    /**
     * 查询全部流程详细
     */
    @GetMapping("/find/{procedure_id}")
    public String selDetailedprocess(Model model, @PathVariable(required = false)Integer procedure_id)throws Exception{
        List<Detailedprocess> list = service.findDetailedprocess(procedure_id);
        //Integer count = service.selcount();
        model.addAttribute("list",list);
        //model.addAttribute("count",count);
        if (procedure_id==1){//请假
            return "/leave_list/leave_list";
        }else if (procedure_id==2){//加班
            return "/workovertime_list/workovertime_list";
        }else if (procedure_id==3){//出差
            return "/abusinesstravel_list/abusinesstravel_list";
        }else{
            return "";
        }
    }

    /**
     * 查询修改前的流程详细名称
     *//*
    @RequestMapping("/selDetailedprocessname/{id}")
    public String selDetailedprocessname(Model model,@PathVariable Integer id)throws Exception{
        Detailedprocess department = service.selDetailedprocessname(id);
        model.addAttribute("department",department);
        return "/department/department_upd";
    }*/

    /**
     * 添加流程详细
     */
    @ResponseBody
    @PostMapping("/add")
    public Object insertDetailedprocess(Detailedprocess detailedprocess)throws Exception{
        return service.addDetailedprocess(detailedprocess);
    }

    /**
     * 修改流程详细
     */
    @ResponseBody
    @RequestMapping("/upd")
    public Object updDetailedprocess(Detailedprocess detailedprocess)throws Exception{
        System.out.println(detailedprocess.getApply_pid());
        return service.updDetailedprocess(detailedprocess);
    }

    /**
     * 删除流程详细
     */
    @ResponseBody
    @RequestMapping("/del")
    public Object delinfomanage(@RequestParam("id")int id)throws Exception{
        boolean bool = service.delDetailedprocess(id);
        return bool;
    }
}
