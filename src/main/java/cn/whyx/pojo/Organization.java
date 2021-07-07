package cn.whyx.pojo;

/**
 * 组织实体类
 */
public class Organization {
    private Integer id;                     //机构ID
    private String name;                    //机构名称
    private String sn;                      //机构SN
    private String description;             //机构描述
    private Integer parent;                 //上级机构ID
    private Integer chiIdren;               //下级机构ID集合

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

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public Integer getChiIdren() {
        return chiIdren;
    }

    public void setChiIdren(Integer chiIdren) {
        this.chiIdren = chiIdren;
    }
}
