package cn.whyx.controller;


import cn.whyx.pojo.MeetingRoom;
import cn.whyx.service.meetingroom.MeetingRoomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会议室
 */
@Controller
@RequestMapping("/meetingroom")
public class MeetingRoomAction {
    @Resource
    private MeetingRoomService service;


    @RequestMapping("/find")
    public Object findMeetingRoom(Model model){//查询会议室
        List<MeetingRoom> list = service.findMeetingRoom();
        model.addAttribute("list",list);
        System.out.println(list.size());
        return "personnel_list/personnel_list";
    }

}
