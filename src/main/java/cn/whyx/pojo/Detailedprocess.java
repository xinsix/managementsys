package cn.whyx.pojo;

/**
 * 流程详细实体类
 */
public class Detailedprocess {
    private Integer id;//流程详细id
    private Integer procedure_id;//流程id
    private String matter;//理由
    private Integer start_time;//开始时间
    private Integer end_time;//结束时间
    private double duration;//时长
    private int state;//审核状态（审核中0、审核通过1、审核未通过2）
    private Integer apply_uid;//申请人
    private Integer examine_uid;//审核人

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

    public Integer getStart_time() {
        return start_time;
    }

    public void setStart_time(Integer start_time) {
        this.start_time = start_time;
    }

    public Integer getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Integer end_time) {
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

    public Integer getApply_uid() {
        return apply_uid;
    }

    public void setApply_uid(Integer apply_uid) {
        this.apply_uid = apply_uid;
    }

    public Integer getExamine_uid() {
        return examine_uid;
    }

    public void setExamine_uid(Integer examine_uid) {
        this.examine_uid = examine_uid;
    }
}
