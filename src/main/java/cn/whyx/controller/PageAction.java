package cn.whyx.controller;

import cn.whyx.pojo.Penson;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/page")
public class PageAction {
    @RequestMapping("/welcome")
    public String welcome(HttpSession session,Model model){
        String name = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getName();
        session.setAttribute("name",name);
        return "redirect:/welcome/selInfomanage";
    }


    @RequestMapping("/communitylist")
    public String communitylist(){
        return "communitylist";
    }
    /*task*/
    @RequestMapping("/task")
    public String task(){
        return "task";
    }

    /*homelist*/
    @RequestMapping("/homelist")
    public String homelist(){
        return "redirect:/infomanage/selInfomanage";
    }
    /*home_add*/
    @RequestMapping("/home_add")
    public String home_add(){return "homeadd";}
    @RequestMapping("/home_modify")
    public String home_modify(Model model, @RequestParam Integer id){
        //return "/home_modify";
        return "redirect:/infomanage/selAnnouncement/"+id;

    }


    /*personnel_list*/
    @RequestMapping("/personnel_list")
    public String personnel_list(){
        return "personnel_list";
    }
    /*vehicle_list*/
    @RequestMapping("/vehicle_list")
    public String vehicle_list(){
        return "vehicle_list";
    }
    /*pet_list*/
    @RequestMapping("/pet_list")
    public String pet_list(){
        return "pet_list";
    }
    /*articles_list*/
    @RequestMapping("/articles_list")
    public String articles_list(){
        return "articles_list";
    }
    /*leave_list*/
    @RequestMapping("/leave_list")
    public String leave_list(){
        return "leave_list";
    }
    /*workovertime_list*/
    @RequestMapping("/workovertime_list")
    public String workovertime_list(){
        return "workovertime_list";
    }
    /*abusinesstravel_list*/
    @RequestMapping("/abusinesstravel_list")
    public String abusinesstravel_list(){
        return "abusinesstravel_list";
    }
    /*activity_list*/
    @RequestMapping("/activity_list")
    public String activity_list(){
        return "activity_list";
    }
    /*repairlist*/
    @RequestMapping("/repairlist")
    public String repairlist(){
        return "redirect:/Penson/selInfoManage";
    }
    /*repairlist*/
    @RequestMapping("/repairupd")
    public String repairupd(@RequestParam Integer id){
        return "redirect:/Penson/selrevision/"+id;
    }

    /*device_list*/
    @RequestMapping("/device_list")
    public String device_list(){
        return "device_list";
    }
    /*pro_list*/
    @RequestMapping("/pro_list")
    public String pro_list(){
        return "pro_list";
    }

    /*personnelresume_list*/
    @RequestMapping("/personnelresume_list")
    public String personnelresume_list(){
        return "personnelresume_list";
    }
    /*lfgh_list*/
    @RequestMapping("/lfgh_list")
    public String lfgh_list(){
        return "lfgh_list";
    }
    /*quit_list*/
    @RequestMapping("/quit_list")
    public String quit_list(){
        return "quit_list";
    }
}
