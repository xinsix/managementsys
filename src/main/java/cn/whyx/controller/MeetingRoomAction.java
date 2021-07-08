package cn.whyx.controller;


import cn.whyx.pojo.MeetingRoom;
import cn.whyx.service.meetingroom.MeetingRoomService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会议室
 */
@Controller
@RequestMapping("/MeetingRoom")
public class MeetingRoomAction {
    @Resource
    private MeetingRoomService service;

    @ResponseBody
    @RequestMapping("/find")
    public Object findMeetingRoom(){//查询会议室
        List<MeetingRoom> list = service.findMeetingRoom();
        return list;
    }

}
