package cn.whyx.controller;

import cn.whyx.pojo.ApplyInfo;
import cn.whyx.pojo.Penson;
import cn.whyx.service.lfghservice.LfghService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/lfgh")
public class LfghController {
    @Resource
    private LfghService service;

    /**
     * 查询全部转正信息
     */
    @GetMapping("/selApplyInfo")
    public String selApplyInfo(Model model, @RequestParam(required = false)String name,Integer id,HttpSession session)throws Exception{
        Integer pid = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        List<ApplyInfo> list = service.selApplyInfo(name,pid);
        Integer count = service.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "lfgh_list/lfgh_list";
    }

    /**
     * 修改申请状态
     */
    @PostMapping("/updateApplyInfo")
    @ResponseBody
    public Object updateApplyInfo(ApplyInfo applyInfo) throws Exception {//管理员修改申请的状态
        boolean bool = service.updateApplyInfo(applyInfo);
        return bool;
    }

    /**
     * 删除申请
     */
    @RequestMapping("/delApplyInfo")
    @ResponseBody
    public Object delApplyInfo(@RequestParam Integer id){
        return service.delApplyInfo(id);
    }

    /**
     * 添加申请
     */
    @RequestMapping("/addApplyInfo")
    @ResponseBody
    public Object addApplyInfo(ApplyInfo applyInfo, HttpSession session) throws Exception {
        /*ApplyInfo applyInfo1 = new ApplyInfo();
        int id = ((ApplyInfo)(session.getAttribute(Condition.USER_SESSION))).getId();
        applyInfo1.setPid(id);*/
        return service.addApplyInfo(applyInfo);
    }


}
