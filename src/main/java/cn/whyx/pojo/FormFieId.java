package cn.whyx.pojo;

/**
 * 表单域实体类
 */
public class FormFieId {
    private Integer id;                     //表单域ID
    private String fieIdLabel;              //表单域标签
    private String fieIdname;               //表单域的名称
    private String fieIdInput;              //表单域的输入形式
    private Integer flowform;               //表单域的表单
    private String items;                   //表单域集合
    private String fieIdtype;               //表单域类型

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFieIdLabel() {
        return fieIdLabel;
    }

    public void setFieIdLabel(String fieIdLabel) {
        this.fieIdLabel = fieIdLabel;
    }

    public String getFieIdname() {
        return fieIdname;
    }

    public void setFieIdname(String fieIdname) {
        this.fieIdname = fieIdname;
    }

    public String getFieIdInput() {
        return fieIdInput;
    }

    public void setFieIdInput(String fieIdInput) {
        this.fieIdInput = fieIdInput;
    }

    public Integer getFlowform() {
        return flowform;
    }

    public void setFlowform(Integer flowform) {
        this.flowform = flowform;
    }

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }

    public String getFieIdtype() {
        return fieIdtype;
    }

    public void setFieIdtype(String fieIdtype) {
        this.fieIdtype = fieIdtype;
    }
}
