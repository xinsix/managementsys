package cn.whyx.controller;

import cn.whyx.pojo.CarManage;
import cn.whyx.service.carmanage.CarManageService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/carmanage")
public class CarManageAction {
    @Resource
    private CarManageService service;

    @RequestMapping("/find")
    public String findCarManage(Model model, @RequestParam(required = false)String licenseplate){//查看所有资产
        List<CarManage> list = service.findCarManage(licenseplate);
        model.addAttribute("list",list);
        return "/vehicle_list/vehicle_list";
    }

    @ResponseBody
    @PostMapping("/add")
    public Object addCarManage(CarManage carManage, Map<String,Object> map){//添加用品
        /*if (service.addCarManage(carManage)){
            map.put("status","1");
            map.put("info","添加成功！");
        }else {
            map.put("info","添加失败！");
        }*/
        return service.addCarManage(carManage);
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
