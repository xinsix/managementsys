package cn.whyx.service.meetingroomapply;

import cn.whyx.pojo.MeetingRoomApply;

import java.util.List;

public interface MeetingRoomApplySerive {
    /**
     * 申请会议室
     * @param meetingRoomApply
     * @return
     */
    boolean addMeetingRoomApply(MeetingRoomApply meetingRoomApply);

    /**
     * 管理员查询所有会议室的申请
     * @return
     */
    List<MeetingRoomApply> findMeetingRoomApply();

    /**
     * 管理员修改申请的状态
     * @return
     */
    boolean updateStatus(Integer id,Integer status);
}
