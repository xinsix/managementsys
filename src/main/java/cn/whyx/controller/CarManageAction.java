package cn.whyx.controller;

import cn.whyx.pojo.CarManage;
import cn.whyx.service.carmanage.CarManageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/carmanage")
public class CarManageAction {
    @Resource
    private CarManageService service;

    @RequestMapping("find")
    public String findCarManage(Model model, @RequestParam(required = false)String licenseplate){//查看所有资产
        List<CarManage> list = service.findCarManage(licenseplate);
        model.addAttribute("list",list);
        return "";
    }

    @ResponseBody
    @RequestMapping("/add")
    public Object addCarManage(CarManage carManage){//添加用品
        boolean bool = service.addCarManage(carManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/upd")
    public Object updCarManage(CarManage carManage){//更新用品
        boolean bool = service.updCarManage(carManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Object delCarManage(@RequestParam Integer id){//删除用品
        boolean bool = service.delCarManage(id);
        return bool;
    }
}
