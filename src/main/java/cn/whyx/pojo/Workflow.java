package cn.whyx.pojo;

/**
 * 工作流实体类
 */
public class Workflow {
    private Integer id;                         //工作流ID
    private String name;                        //工作流名称
    private String processDefinition;           //流程文件定义
    private String processImge;                 //流程图

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

    public String getProcessDefinition() {
        return processDefinition;
    }

    public void setProcessDefinition(String processDefinition) {
        this.processDefinition = processDefinition;
    }

    public String getProcessImge() {
        return processImge;
    }

    public void setProcessImge(String processImge) {
        this.processImge = processImge;
    }
}
