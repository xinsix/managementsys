package cn.whyx.controller;

import cn.whyx.pojo.CarManage;
import cn.whyx.pojo.Penson;
import cn.whyx.service.carmanage.CarManageService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/carmanage")
public class CarManageAction {
    @Resource
    private CarManageService service;

    @RequestMapping("/find")
    public String findCarManage(HttpSession session,Model model, @RequestParam(required = false)String licenseplate){//查看所有资产
        Integer applicant = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        List<CarManage> list = service.findCarManage(licenseplate,applicant);
        model.addAttribute("list",list);
        return "/vehicle_list/vehicle_list";
    }

    @ResponseBody
    @PostMapping("/add")
    public Object addCarManage(CarManage carManage, HttpSession session){//添加汽车
        /*if (service.addCarManage(carManage)){
            map.put("status","1");
            map.put("info","添加成功！");
        }else {
            map.put("info","添加失败！");
        }*/
        String id = String.valueOf(((Penson)(session.getAttribute(Condition.USER_SESSION))).getId());
        carManage.setApplicant(id);
        carManage.setApplytime(new Date());
        return service.addCarManage(carManage);
    }

    @ResponseBody
    @RequestMapping("/upd")
    public Object updCarManage(CarManage carManage){//更新汽车
        carManage.setBacktime(new Date());
        boolean bool = service.updCarManage(carManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Object delCarManage(@RequestParam Integer id){//删除汽车
        boolean bool = service.delCarManage(id);
        return bool;
    }

    @RequestMapping("/selCarManageById/{id}")
    public String selCarManageById(Model model, @PathVariable Integer id){//根据id查看车辆
        CarManage carManage = service.selCarManageById(id);
        model.addAttribute("carManage",carManage);
        return "/vehicle_list/vehicle_modify";
    }
}
