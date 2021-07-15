package cn.whyx.pojo;

/**
 * 架构管理实体类
 */
public class OrganManage {
    private Integer id;//架构id
    private Integer departmentid;//部门id
    private Integer postid;//岗位id
    private String position;//职位

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
