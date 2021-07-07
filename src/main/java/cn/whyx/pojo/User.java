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
    private Date expireTime;//过期时间
    private Integer parson;//员工ID

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

    public Date getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Date expireTime) {
        this.expireTime = expireTime;
    }

    public Integer getParson() {
        return parson;
    }

    public void setParson(Integer parson) {
        this.parson = parson;
    }
}
