package cn.whyx.service.meetingroom;

import cn.whyx.dao.meetingroom.MeetingRoomMapper;
import cn.whyx.pojo.MeetingRoom;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MeetingRoomServiceImpl implements MeetingRoomService {

    @Resource
    private MeetingRoomMapper mapper;

    @Override
    public List<MeetingRoom> findMeetingRoom() {
        return mapper.findMeetingRoom();
    }


}
