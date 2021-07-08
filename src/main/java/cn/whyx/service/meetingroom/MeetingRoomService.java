package cn.whyx.service.meetingroom;

import cn.whyx.pojo.MeetingRoom;

import java.util.List;

public interface MeetingRoomService {
    /**
     * 查询所有会议室
     * @return
     */
    public List<MeetingRoom> findMeetingRoom();
}
