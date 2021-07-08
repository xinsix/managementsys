package cn.whyx.dao.meetingroomapply;

import cn.whyx.pojo.MeetingRoomApply;
import org.apache.ibatis.annotations.Mapper;

/**
 * 会议室申请Mapper
 */
@Mapper
public interface MeetingRoomApplyMapper {

    /**
     * 申请会议室
     * @param meetingRoomApply
     * @return
     */
    Integer addMeetingRoomApply(MeetingRoomApply meetingRoomApply);
}
