package cn.whyx.pojo;

/**
 * 申请实体类
 */
public class ApplyInfo {
    private Integer id;//申请id
    private Integer department_id;//部门id
    private Integer station_id;//岗位id
    private int state;//状态
    private int subject;//事由（离职0or转正1）

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(Integer department_id) {
        this.department_id = department_id;
    }

    public Integer getStation_id() {
        return station_id;
    }

    public void setStation_id(Integer station_id) {
        this.station_id = station_id;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getSubject() {
        return subject;
    }

    public void setSubject(int subject) {
        this.subject = subject;
    }
}
