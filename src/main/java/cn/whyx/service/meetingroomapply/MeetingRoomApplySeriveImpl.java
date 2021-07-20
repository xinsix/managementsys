package cn.whyx.service.meetingroomapply;

import cn.whyx.dao.meetingroomapply.MeetingRoomApplyMapper;
import cn.whyx.pojo.MeetingRoomApply;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MeetingRoomApplySeriveImpl implements MeetingRoomApplySerive{

    @Resource
    private MeetingRoomApplyMapper mapper;

    @Override
    public boolean addMeetingRoomApply(MeetingRoomApply meetingRoomApply) {
        return (mapper.addMeetingRoomApply(meetingRoomApply)>0)?true:false;
    }

    @Override
    public List<MeetingRoomApply> findMeetingRoomApply(Integer pid) {
        return mapper.findMeetingRoomApply(pid);
    }

    @Override
    public boolean updateStatus(MeetingRoomApply meetingRoomApply) {
        return (mapper.updateStatus(meetingRoomApply)>0)?true:false;
    }

    @Override
    public boolean delMeetingRoomApply(Integer id) {
        return (mapper.delMeetingRoomApply(id)>0)?true:false;
    }
}
