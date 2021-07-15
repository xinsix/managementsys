package cn.whyx.pojo;

/**
 * 申请实体类
 */
public class ApplyInfo {
    private Integer id;//申请id
    private Integer pid;//员工id
    private int state;//状态
    private int subject;//事由（离职0or转正1）

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
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
