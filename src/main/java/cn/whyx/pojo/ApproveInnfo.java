package cn.whyx.pojo;

import java.util.Date;

/**
 * 审批实体类
 */
public class ApproveInnfo {
    private Integer id;//审批ID
    private String comment;//审批意见
    private Integer document;//审批文件ID
    private Integer approver;//审批者ID
    private Date approveTime;//审批时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getDocument() {
        return document;
    }

    public void setDocument(Integer document) {
        this.document = document;
    }

    public Integer getApprover() {
        return approver;
    }

    public void setApprover(Integer approver) {
        this.approver = approver;
    }

    public Date getApproveTime() {
        return approveTime;
    }

    public void setApproveTime(Date approveTime) {
        this.approveTime = approveTime;
    }
}
