package cn.whyx.pojo;

/**
 * 域类型实体类
 */
public class FieIdType {
    private Integer id;//域类型ID
    private String name;//域类型名称，如：字符串、整型、文件等等
    private String type;//域类型

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
