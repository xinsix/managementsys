package cn.whyx.pojo;

import java.util.Date;

/**
 * 流程详细实体类
 */
public class Detailedprocess {
    private Integer id;//流程详细id
    private Integer procedure_id;//流程id
    private String matter;//理由
    private Date start_time;//开始时间
    private Date end_time;//结束时间
    private double duration;//时长
    private int state;//审核状态（审核中0、审核通过1、审核未通过2）
    private Integer apply_pid;//申请人
    private Integer examine_pid;//审核人

    private String apply_pname;//申请人名字
    private String examine_pname;//申请人名字

    public String getApply_pname() {
        return apply_pname;
    }

    public void setApply_pname(String apply_pname) {
        this.apply_pname = apply_pname;
    }

    public String getExamine_pname() {
        return examine_pname;
    }

    public void setExamine_pname(String examine_pname) {
        this.examine_pname = examine_pname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProcedure_id() {
        return procedure_id;
    }

    public void setProcedure_id(Integer procedure_id) {
        this.procedure_id = procedure_id;
    }

    public String getMatter() {
        return matter;
    }

    public void setMatter(String matter) {
        this.matter = matter;
    }

    public Date getStart_time() {
        return start_time;
    }

    public void setStart_time(Date start_time) {
        this.start_time = start_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Integer getApply_pid() {
        return apply_pid;
    }

    public void setApply_pid(Integer apply_pid) {
        this.apply_pid = apply_pid;
    }

    public Integer getExamine_pid() {
        return examine_pid;
    }

    public void setExamine_pid(Integer examine_pid) {
        this.examine_pid = examine_pid;
    }
}
