package cn.whyx.pojo;

/**
 * 模块实体类
 */
public class Module {
    private Integer id;                 //模块ID
    private String name;                //模块名称
    private String sn;                  //模块SN
    private String url;                 //模块地址
    private String orderNo;             //模块排序号
    private Integer parent;             //父模块ID
    private Integer chidren;            //子模块ID集合

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public Integer getChidren() {
        return chidren;
    }

    public void setChidren(Integer chidren) {
        this.chidren = chidren;
    }
}
