package cn.whyx.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 任务实体类
 */
public class Task {
    private Integer id;//任务id
    private String matter;//任务事项
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date starttime;//开始时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endtime;//结束时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date creationtime;//创建时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date revisiontime;//修改时间
    private int state;//任务状态
    private Integer employeeid;//员工ID
    private Integer executeid;//执行人id

    private String ename;//执行人姓名
    private String pname;//执行人姓名

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

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

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
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
