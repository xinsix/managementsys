package cn.whyx.pojo;

import java.util.Date;

/**
 * 用户实体类
 */
public class User {
    private Integer id;//用户ID
    private String username;//用户名
    private String password;//用户密码
    private Date createTime;//创建时间
    private Integer parson;//员工ID
    private Integer role;//员工ID

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getParson() {
        return parson;
    }

    public void setParson(Integer parson) {
        this.parson = parson;
    }
}
