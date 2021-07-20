package cn.whyx.service.meetingroomapply;

import cn.whyx.pojo.MeetingRoomApply;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

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
    List<MeetingRoomApply> findMeetingRoomApply(Integer pid);

    /**
     * 管理员修改申请的状态
     * @return
     */
    boolean updateStatus(MeetingRoomApply meetingRoomApply);

    /**
     * 删除会议室申请
     * @return
     */
    boolean delMeetingRoomApply(Integer id);
}
