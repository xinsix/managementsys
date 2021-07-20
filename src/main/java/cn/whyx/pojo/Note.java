package cn.whyx.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 便签实体类
 */
public class Note {
    private Integer id;//便签id
    private String notecontent;//内容
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date executiontime;//执行时间
    private Date creationtime;//创建时间
    private Date revisiontime;//修改时间
    private Integer employeeid;//员工ID

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNotecontent() {
        return notecontent;
    }

    public void setNotecontent(String notecontent) {
        this.notecontent = notecontent;
    }

    public Date getExecutiontime() {
        return executiontime;
    }

    public void setExecutiontime(Date executiontime) {
        this.executiontime = executiontime;
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

    public Integer getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Integer employeeid) {
        this.employeeid = employeeid;
    }
}
