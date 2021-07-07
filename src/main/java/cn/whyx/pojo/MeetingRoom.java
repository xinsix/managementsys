package cn.whyx.pojo;

/**
 * 会议室实体类
 */
public class MeetingRoom {
    private Integer id;                 //会议室ID
    private String sn;                  //会议室名称
    private String position;            //会议室位置
    private String description;         //会议室描述

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
