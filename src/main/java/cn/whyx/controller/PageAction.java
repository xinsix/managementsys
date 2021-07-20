package cn.whyx.controller;

import cn.whyx.pojo.Penson;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/page")
public class PageAction {

    /*主页*/
    @RequestMapping("/welcome")
/*<<<<<<< HEAD
    public String welcome(){
        return "welcome/welcome";
=======*/
    public String welcome(HttpSession session,Model model){
        String name = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getName();
        session.setAttribute("name",name);
        return "redirect:/welcome/selInfomanage";
//>>>>>>> pr_1
    }

    /*便签*/
    @RequestMapping("/communitylist")
    public String communitylist(){
        return "communitylist/communitylist";
    }
    /*添加便签*/
    @RequestMapping("/communityadd")
    public String communityadd(){
        return "communitylist/communityadd";
    }

    /*任务*/
    @RequestMapping("/task")
    public String task(){
        return "task/task";
    }
    /*添加任务*/
    @RequestMapping("/taskadd")
    public String taskadd(){
        return "task/taskadd";
    }

    /*信息管理*/
    @RequestMapping("/homelist")
    public String homelist(){
//<<<<<<< HEAD
        return "redirect:/infomanage/selInfomanage";
    }
    /*进入修改页面*/
    @RequestMapping("/home_modify")
    public String home_modify(Model model, @RequestParam Integer id){
        //return "/home_modify";
        return "redirect:/infomanage/selAnnouncement/"+id;
    }
    /*添加信息*/
    @RequestMapping("/home_add")
    public String home_add(){
        return "/homelist/homeadd";
    }

    /*会议室管理*/
    @RequestMapping("/personnel_list")
    public String personnel_list(){
        return "redirect:/meetingroomApply/find";
        //return "redirect:/meetingroom/find";
    }
    /*添加会议室*/
    @RequestMapping("/personnel_add")
    public String personnel_add(){
        return "/personnel_list/personnel_add";
        //return "redirect:/meetingroom/find";
    }

    /*车辆管理*/
    @RequestMapping("/vehicle_list")
    public String vehicle_list(){
        return "redirect:/carmanage/find";
    }
    /*添加车辆*/
    @RequestMapping("/vehicle_list_add")
    public String vehicle_listadd(){
        return "vehicle_list/vehicle_add";
    }
    /*归还车辆*/
    @RequestMapping("/vehicle_modify/{id}")
    public String vehicle_modify(@PathVariable Integer id){
        return "redirect:/carmanage/selCarManageById/"+id;
    }

    /*资产管理*/
    @RequestMapping("/pet_list")
    public String pet_list(){
        return "pet_list/pet_list";
    }
    /*添加资产*/
    @RequestMapping("/pet_listadd")
    public String pet_listadd(){
        return "pet_list/pet_listadd";
    }

    /*用品管理*/
    @RequestMapping("/articles_list")
    public String articles_list(){
        return "articles_list/articles_list";
    }
    /*添加用品*/
    @RequestMapping("/activity_add")
    public String activity_add(){
        return "articles_list/activity_add";
    }

    /*请假*/
    @RequestMapping("/leave_list")
    public String leave_list(){
        return "leave_list/leave_list";
    }
    /*添加请假*/
    @RequestMapping("/leave_add")
    public String leave_add(){
        return "leave_list/leave_add";
    }

    /*加班*/
    @RequestMapping("/workovertime_list")
    public String workovertime_list(){
        return "workovertime_list/workovertime_list";
    }
    /*添加加班*/
    @RequestMapping("/workovertime_add")
    public String workovertime_add(){
        return "workovertime_list/workovertime_add";
    }

    /*出差*/
    @RequestMapping("/abusinesstravel_list")
    public String abusinesstravel_list(){
        return "abusinesstravel_list/abusinesstravel_list";
    }
    /*添加出差*/
    @RequestMapping("/abusinesstravel_add")
    public String abusinesstravel_add(){
        return "abusinesstravel_list/abusinesstravel_add";
    }

    /*机构管理*/
    @RequestMapping("/activity_list")
    public String activity_list(){
        return "articles_list/activity_list";
    }
    /*添加机构管理*/
    @RequestMapping("/articles_add")
    public String articles_add(){
        return "articles_list/articles_add";
    }

    /*人员管理*/
    @RequestMapping("/repairlist")
    public String repairlist(){
        return "redirect:/Penson/selInfoManage";
    }
    /*添加人员管理*/
    @RequestMapping("/repairadd")
    public String repairadd(){
        return "repairlist/repairadd";
    }
    /*修改人员管理*/
    @RequestMapping("/repairupd")
    public String repairupd(@RequestParam Integer id){
        return "redirect:/Penson/selrevision/"+id;
    }

    /*角色管理*/
    @RequestMapping("/device_list")
    public String device_list(){
        return "device_list/device_list";
    }
    /*添加角色*/
    @RequestMapping("/device_add")
    public String device_add(){
        return "device_list/device_add";
    }

    /*进入密码修改*/
    @RequestMapping("/pro_list")
    public String pro_list(){
        return "pro_list/pro_list";
    }
    /*密码修改*/
    @RequestMapping("/pro_modify")
    public String pro_modify(){
        return "pro_list/pro_modify";
    }

    /*人员履历*/
    @RequestMapping("/personnelresume_list")
    public String personnelresume_list(){
        return "personnelresume_list/personnelresume_list";
    }
    /*添加人员履历*/
    @RequestMapping("/personnelresume_add")
    public String personnelresume_add(){
        return "personnelresume_list/personnelresume_add";
    }

    /*转正申请*/
    @RequestMapping("/lfgh_list")
    public String lfgh_list(){
        return "lfgh_list/lfgh_list";
    }
    /*添加转正申请*/
    @RequestMapping("/lfgh_add")
    public String lfgh_add(){
        return "lfgh_list/lfgh_add";
    }

    /*离职申请*/
    @RequestMapping("/quit_list")
    public String quit_list(){
        return "quit_list/quit_list";
    }
    /*添加离职申请*/
    @RequestMapping("/quit_add")
    public String quit_add(){
        return "quit_list/quit_add";
    }

}
