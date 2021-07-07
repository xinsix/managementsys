package cn.whyx.pojo;


/**
 * 流程表单实体类
 */
public class FlowForm {
    private Integer id;             //流程表单ID
    private Integer workflow;       //对应的工作流ID
    private String template;        //模板
    private Integer fieId;          //包含的表单域ID集合

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getWorkflow() {
        return workflow;
    }

    public void setWorkflow(Integer workflow) {
        this.workflow = workflow;
    }

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }

    public Integer getFieId() {
        return fieId;
    }

    public void setFieId(Integer fieId) {
        this.fieId = fieId;
    }
}
