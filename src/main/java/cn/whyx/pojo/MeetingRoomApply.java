package cn.whyx.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


/**
 * 会议室申请实体类
 */
public class MeetingRoomApply {
    private Integer id;                     //会议室申请ID
    private Integer meetroomid;             //会议室ID
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date begindate;              //开始时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date enddate;                //结束时间
    private String applyreason;            //申请原因
    private Integer pid;            //申请人
    private String status;                 //申请状态

    private String sn;                 //会议室名称（外键）
    private String pname;            //申请人名称（外键）

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

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
