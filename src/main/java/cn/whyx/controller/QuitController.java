package cn.whyx.controller;

import cn.whyx.pojo.ApplyInfo;
import cn.whyx.pojo.Penson;
import cn.whyx.service.quitservice.QuitService;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/quit")
public class QuitController {
    @Resource
    private QuitService service;

    /**
     * 查询全部离职信息
     */
    @GetMapping("/selQuit")
    public String selApplyInfo(Model model, @RequestParam(required = false)String name, Integer id, HttpSession session)throws Exception{
        Integer pid = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        List<ApplyInfo> list = service.selQuit(name,pid);
        Integer count = service.selcount();
        model.addAttribute("list",list);
        model.addAttribute("count",count);
        return "quit_list/quit_list";
    }


    /**
     * 添加申请
     */
    @RequestMapping("/addQuit")
    @ResponseBody
    public Object addQuit(ApplyInfo applyInfo, HttpSession session) throws Exception {
        /*ApplyInfo applyInfo1 = new ApplyInfo();
        int id = ((ApplyInfo)(session.getAttribute(Condition.USER_SESSION))).getId();
        applyInfo1.setPid(id);*/
        return service.addQuit(applyInfo);
    }

    /**
     * 修改申请状态
     */
    @PostMapping("/updateQuit")
    @ResponseBody
    public Object updateApplyInfo(ApplyInfo applyInfo) throws Exception {//管理员修改申请的状态
        boolean bool = service.updateQuit(applyInfo);
        return bool;
    }

    /**
     * 删除申请
     */
    @RequestMapping("/delQuit")
    @ResponseBody
    public Object delApplyInfo(@RequestParam Integer id){
        return service.delQuit(id);
    }
}
