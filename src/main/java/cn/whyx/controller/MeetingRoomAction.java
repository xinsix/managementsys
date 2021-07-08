package cn.whyx.controller;


import cn.whyx.service.meetingroom.MeetingRoomService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 会议室
 */
@Controller
@RequestMapping("/MeetingRoom")
public class MeetingRoomAction {
    @Resource
    private MeetingRoomService service;

    @RequestMapping("/find")
    public String findMeetingRoom(){
        service.findMeetingRoom();
        return "";
    }
}
