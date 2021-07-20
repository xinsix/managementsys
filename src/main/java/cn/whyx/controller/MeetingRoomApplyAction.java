package cn.whyx.controller;

import cn.whyx.pojo.MeetingRoom;
import cn.whyx.pojo.MeetingRoomApply;
import cn.whyx.pojo.Penson;
import cn.whyx.service.meetingroomapply.MeetingRoomApplySerive;
import cn.whyx.util.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 会议室申请
 */
@Controller
//@Controller
@RequestMapping("/meetingroomApply")
public class MeetingRoomApplyAction {
    @Resource
    private MeetingRoomApplySerive service;

    @RequestMapping("/add")
    @ResponseBody
    public Object addMeetingRoomApply(MeetingRoomApply meetingRoomApply,HttpSession session){//申请会议室
        Integer id = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        meetingRoomApply.setPid(id);
        meetingRoomApply.setStatus("0");
        boolean bool = service.addMeetingRoomApply(meetingRoomApply);
        return bool;
    }

    @RequestMapping("/find")
    //@ResponseBody
    public Object findMeetingRoomApply(Model model, HttpSession session){//管理员查询所有会议室的申请
        Integer pid = ((Penson)(session.getAttribute(Condition.USER_SESSION))).getId();
        List<MeetingRoomApply> list = service.findMeetingRoomApply(pid);
        for (MeetingRoomApply meetingRoomApply:list){
            System.out.println(
                    meetingRoomApply.getId()+" "+meetingRoomApply.getMeetroomid()+" " +
                            meetingRoomApply.getBegindate()+" "+meetingRoomApply.getEnddate()+" " +
                            meetingRoomApply.getApplyreason()+" "+meetingRoomApply.getStatus());
        }
        model.addAttribute("list",list);
        System.out.println(list.size());
        return "personnel_list/personnel_list";
        //return list;
    }

    @PostMapping("/upd")
    @ResponseBody
    public Object updateStatus(MeetingRoomApply meetingRoomApply){//管理员修改申请的状态
        boolean bool = service.updateStatus(meetingRoomApply);
        return bool;
    }

    @RequestMapping("/del")
    @ResponseBody
    public Object delMeetingRoomApply(@RequestParam Integer id){//申请会议室
        System.out.println(id);
        return service.delMeetingRoomApply(id);
    }

}
