package cn.whyx.controller;

import cn.whyx.pojo.InfoManage;
import cn.whyx.pojo.Penson;
import cn.whyx.service.infomanage.InfoManageService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/infomanage")
public class InfoManageController {

    @Resource
    private InfoManageService service;

    /**
     * 查询全部公告
     */
    @GetMapping("/selInfomanage")
    public String selInfoManage(Model model,@RequestParam(required = false)String content)throws Exception{
        List<InfoManage> list = service.selInfoManage(content);
        Integer count = service.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "homelist/homelist";
    }

    /**
     * 查询修改前的公告
     * @return
     * @throws Exception
     */
    @RequestMapping("/selAnnouncement/{id}")
    public String selAnnouncement(Model model,@PathVariable Integer id)throws Exception{
       InfoManage infoManage = service.selAnnouncement(id);
        model.addAttribute("infoManage",infoManage);
        return "/homelist/home_modify";
    }


    /**
     * 添加公告
     * @param content
     * @param session
     * @return
     * @throws Exception
     */
    @ResponseBody
    @PostMapping("/addinfomanage")
    public Object addinfomanage(@RequestParam String content, HttpSession session)throws Exception{
        InfoManage infoManage = new InfoManage(content);
        int id = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        infoManage.setRelease_uid(id);
        infoManage.setReleasetime(new Date());
        return service.insertInfoManage(infoManage);
    }

    /**
     * 删除指定的公告
     */
    @ResponseBody
    @RequestMapping("/delinfomanage")
    public Object delinfomanage(@RequestParam("id")int id)throws Exception{
        boolean bool = service.delInfoManage(id);
        return bool;
    }

    /**
     * 修改指定的公告
     */
    @ResponseBody
    @RequestMapping("/updinfomanage")
    public Object updAssetsManage(InfoManage infoManage,HttpSession session)throws Exception{//修改公告
        int id = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        infoManage.setRelease_uid(id);
        infoManage.setRevisiontime(new Date());
        boolean bool = service.updInfoManage(infoManage);
        return bool;
    }

}
