package cn.whyx.service.meetingroomapply;

import cn.whyx.pojo.MeetingRoomApply;

public interface MeetingRoomApplySerive {
    /**
     * 申请会议室
     * @param meetingRoomApply
     * @return
     */
    boolean addMeetingRoomApply(MeetingRoomApply meetingRoomApply);
}
