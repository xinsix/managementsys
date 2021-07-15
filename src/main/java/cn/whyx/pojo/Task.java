package cn.whyx.pojo;

import java.util.Date;

/**
 * 任务实体类
 */
public class Task {
    private Integer id;//任务id
    private String matter;//任务事项
    private Date starttime;//开始时间
    private Date creationtime;//创建时间
    private Date revisiontime;//修改时间
    private int state;//任务状态
    private Integer employeeid;//员工ID
    private Integer executeid;//被执行人id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMatter() {
        return matter;
    }

    public void setMatter(String matter) {
        this.matter = matter;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(Date creationtime) {
        this.creationtime = creationtime;
    }

    public Date getRevisiontime() {
        return revisiontime;
    }

    public void setRevisiontime(Date revisiontime) {
        this.revisiontime = revisiontime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Integer getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Integer employeeid) {
        this.employeeid = employeeid;
    }

    public Integer getExecuteid() {
        return executeid;
    }

    public void setExecuteid(Integer executeid) {
        this.executeid = executeid;
    }
}
