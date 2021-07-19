package cn.whyx.pojo;

/**
 * 员工实体类
 */
public class Penson {
    private Integer id;                 //员工ID
    private String name;                //员工姓名
    private String username;                //员工账号
    private String password;                //员工密码
    private String sex;                 //员工性别
    private String address;             //员工地址
    private String duty;                //员工职务
    private String phone;               //员工电话
    private String description;         //员工描述
    private String org;                 //员工所属部门
    private Integer role;               //角色
    private String role_name;           //角色名字
    private String department_name;     //部门名称
    private Integer wages;              //工资

    public Integer getWages() {
        return wages;
    }

    public void setWages(Integer wages) {
        this.wages = wages;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }
}
