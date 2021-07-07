package cn.whyx.pojo;

/**
 * 表单输入实体类
 */
public class FieIdInput {
    private Integer id;             //表单输入项ID
    private String name;            //表单输入项名称
    private String template;        //表单输入项模板

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

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }

}
