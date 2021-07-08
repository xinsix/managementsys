package cn.whyx.service.meetingroomapply;

import cn.whyx.dao.meetingroomapply.MeetingRoomApplyMapper;
import cn.whyx.pojo.MeetingRoomApply;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MeetingRoomApplySeriveImpl implements MeetingRoomApplySerive{

    @Resource
    private MeetingRoomApplyMapper mapper;

    @Override
    public boolean addMeetingRoomApply(MeetingRoomApply meetingRoomApply) {
        return (mapper.addMeetingRoomApply(meetingRoomApply)>0)?true:false;
    }
}
