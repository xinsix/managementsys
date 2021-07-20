package cn.whyx.pojo;

/**
 * 资产管理实体类
 */
public class AssetsManage {
    private Integer id;//资产ID
    private String assetname;//资产名称
    private String quantity;//资产数量
    private String position;//资产位置
    private Integer assetmanager;//资产管理人

    private String pname;//资产管理人名称

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAssetname() {
        return assetname;
    }

    public void setAssetname(String assetname) {
        this.assetname = assetname;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Integer getAssetmanager() {
        return assetmanager;
    }

    public void setAssetmanager(Integer assetmanager) {
        this.assetmanager = assetmanager;
    }
}
