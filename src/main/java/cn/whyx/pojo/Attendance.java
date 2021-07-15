package cn.whyx.pojo;

import java.util.Date;

/**
 *
 */
public class Attendance {
    private int id;//考勤id
    private Date creadate;//上班时间
    private Date offdate;//下班时间
    private Integer jobib;//员工编号
    private int attendancetype;//考勤类型（上班0下班1）
    private int actual;//月出勤实际天数
    private int days;//应出勤天数

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreadate() {
        return creadate;
    }

    public void setCreadate(Date creadate) {
        this.creadate = creadate;
    }

    public Date getOffdate() {
        return offdate;
    }

    public void setOffdate(Date offdate) {
        this.offdate = offdate;
    }

    public Integer getJobib() {
        return jobib;
    }

    public void setJobib(Integer jobib) {
        this.jobib = jobib;
    }

    public int getAttendancetype() {
        return attendancetype;
    }

    public void setAttendancetype(int attendancetype) {
        this.attendancetype = attendancetype;
    }

    public int getActual() {
        return actual;
    }

    public void setActual(int actual) {
        this.actual = actual;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }
}
