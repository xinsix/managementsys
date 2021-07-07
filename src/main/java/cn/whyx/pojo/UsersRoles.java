package cn.whyx.pojo;

/**
 * 用户角色对
 */
public class UsersRoles {
    private Integer id;//用户角色对ID
    private Integer role;//角色ID
    private Integer user;//用户ID
    private Integer orderNo;//排序号

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Integer getUser() {
        return user;
    }

    public void setUser(Integer user) {
        this.user = user;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }
}
