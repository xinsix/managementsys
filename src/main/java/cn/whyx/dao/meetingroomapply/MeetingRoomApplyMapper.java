package cn.whyx.dao.meetingroomapply;

import cn.whyx.pojo.MeetingRoomApply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    /**
     * 管理员查询所有会议室的申请
     * @return
     */
    List<MeetingRoomApply> findMeetingRoomApply(@Param("pid")Integer pid);

    /**
     * 管理员修改申请的状态
     * @return
     */
    Integer updateStatus(MeetingRoomApply meetingRoomApply);

    /**
     * 删除会议室申请
     * @return
     */
    Integer delMeetingRoomApply(@Param("id")Integer id);

    /**
     * 查询会议室总数
     */
    public Integer selcount()throws Exception;
}
