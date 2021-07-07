package cn.whyx.pojo;

import java.util.Date;

/**
 * 会议室申请实体类
 */
public class MeetingRoomApply {
    private Integer id;                     //会议室申请ID
    private Integer meetroomid;             //会议室ID
    private Date begindate;              //开始时间
    private Date enddate;                //结束时间
    private String applyreason;            //申请原因
    private String status;                 //申请状态

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMeetroomid() {
        return meetroomid;
    }

    public void setMeetroomid(Integer meetroomid) {
        this.meetroomid = meetroomid;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public String getApplyreason() {
        return applyreason;
    }

    public void setApplyreason(String applyreason) {
        this.applyreason = applyreason;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
