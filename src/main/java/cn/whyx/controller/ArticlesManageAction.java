package cn.whyx.controller;

import cn.whyx.pojo.ArticlesManage;
import cn.whyx.service.articlesmanage.ArticlesManageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/ArticlesManage")
public class ArticlesManageAction {
    @Resource
    private ArticlesManageService service;

    @RequestMapping("find")
    public String findArticlesManage(Model model, @RequestParam(required = false)String assetname){//查看所有资产
        List<ArticlesManage> list = service.findArticlesManage(assetname);
        model.addAttribute("list",list);
        return "";
    }

    @ResponseBody
    @RequestMapping("/add")
    public Object addArticlesManage(ArticlesManage assetsManage){//添加用品
        boolean bool = service.addArticlesManage(assetsManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/upd")
    public Object updArticlesManage(ArticlesManage assetsManage){//更新用品
        boolean bool = service.updArticlesManage(assetsManage);
        return bool;
    }

    @ResponseBody
    @RequestMapping("/del")
    public Object delArticlesManage(@RequestParam Integer id){//删除用品
        boolean bool = service.delArticlesManage(id);
        return bool;
    }
}

