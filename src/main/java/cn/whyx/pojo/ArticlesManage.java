package cn.whyx.pojo;

import java.util.Date;

/**
 * 用品管理实体类
 */
public class ArticlesManage {
    private Integer id;//用品ID
    private String productname;//用品名称
    private String applicant;//用品申请人
    private int quantity;//用品数量
    private Date applicationtime;//申请时间
    private Date backtime;//归还时间
    private String purpose;//用途
    private Integer record_uid;//记录人

    private String pname;//用品申请人名称

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

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getApplicationtime() {
        return applicationtime;
    }

    public void setApplicationtime(Date applicationtime) {
        this.applicationtime = applicationtime;
    }

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public Integer getRecord_uid() {
        return record_uid;
    }

    public void setRecord_uid(Integer record_uid) {
        this.record_uid = record_uid;
    }
}
