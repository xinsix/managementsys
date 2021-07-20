package cn.whyx.dao.meetingroom;

import cn.whyx.pojo.MeetingRoom;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 会议室Mapper
 */
@Mapper
public interface MeetingRoomMapper {
    /**
     * 查询所有会议室
     * @return
     */
    public List<MeetingRoom> findMeetingRoom();


}
