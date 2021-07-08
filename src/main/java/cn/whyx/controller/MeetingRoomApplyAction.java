package cn.whyx.controller;

import cn.whyx.pojo.MeetingRoom;
import cn.whyx.pojo.MeetingRoomApply;
import cn.whyx.service.meetingroomapply.MeetingRoomApplySerive;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会议室申请
 */
@RestController
//@Controller
@RequestMapping("/MeetingRoomApply")
public class MeetingRoomApplyAction {
    @Resource
    private MeetingRoomApplySerive serive;

    @RequestMapping("/add")
    //@ResponseBody
    public Object addMeetingRoomApply(MeetingRoomApply meetingRoomApply){//申请会议室
        meetingRoomApply.setStatus("0");
        boolean bool = serive.addMeetingRoomApply(meetingRoomApply);
        return bool;
    }

    @RequestMapping("/find")
    //@ResponseBody
    public Object findMeetingRoomApply(){//管理员查询所有会议室的申请
        List<MeetingRoomApply> list = serive.findMeetingRoomApply();
        for (MeetingRoomApply meetingRoomApply:list){
            System.out.println(
                    meetingRoomApply.getId()+" "+meetingRoomApply.getMeetroomid()+" " +
                    meetingRoomApply.getBegindate()+" "+meetingRoomApply.getEnddate()+" " +
                    meetingRoomApply.getApplyreason()+" "+meetingRoomApply.getStatus());
        }
        return list;
    }

    @PostMapping("/update")
    //@ResponseBody
    public Object updateStatus(Integer id,Integer status){//管理员修改申请的状态
        boolean bool = serive.updateStatus(id, status);
        return bool;
    }

}
