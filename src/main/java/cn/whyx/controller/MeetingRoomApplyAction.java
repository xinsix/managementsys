package cn.whyx.controller;

import cn.whyx.pojo.MeetingRoomApply;
import cn.whyx.service.meetingroomapply.MeetingRoomApplySerive;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * 会议室申请
 */
@Controller
@RequestMapping("/MeetingRoomApply")
public class MeetingRoomApplyAction {
    @Resource
    private MeetingRoomApplySerive serive;

    @RequestMapping("/add")
    public Object addMeetingRoomApply(MeetingRoomApply meetingRoomApply){//申请会议室
        meetingRoomApply.setStatus("0");
        boolean bool = serive.addMeetingRoomApply(meetingRoomApply);
        return bool;
    }
}
