package cn.whyx.controller;

import cn.whyx.pojo.AssetsManage;
import cn.whyx.service.assetsmanage.AssetsManageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/assetsmanage")
public class AssetsManageAction {
    @Resource
    private AssetsManageService service;

    @RequestMapping("find")
    public String findAssetsManage(Model model, @RequestParam(required = false)String assetname){//查看所有资产
        List<AssetsManage> list = service.findAssetsManage(assetname);
        model.addAttribute("list",list);
        return "pet_list/pet_list";
    }

    @ResponseBody
    @RequestMapping("/add")
    public Object addAssetsManage(AssetsManage assetsManage){//添加资产
        boolean bool = service.addAssetsManage(assetsManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/upd")
    public Object updAssetsManage(AssetsManage assetsManage){//更新资产
        boolean bool = service.updAssetsManage(assetsManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Object delAssetsManage(@RequestParam Integer id){//删除资产
        boolean bool = service.delAssetsManage(id);
        return bool;
    }

    @RequestMapping("selAssetsManageById/{id}")
    public String selAssetsManageById(Model model, @PathVariable Integer id){//根据id查看资产
        AssetsManage list = service.selAssetsManageById(id);
        model.addAttribute("list",list);
        return "/pet_list/pet_modify";
    }
}
