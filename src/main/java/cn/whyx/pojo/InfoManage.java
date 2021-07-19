package cn.whyx.pojo;

import java.util.Date;

/**
 * 信息管理实体类
 */
public class InfoManage {
    private Integer id;//公告id
    private String content;//公告内容
    private Date releasetime;//发布时间
    private Date revisiontime;//修改时间
    private Integer release_uid;//发布人
    private Integer modify_uid;//修改人

    private String release_name;//
    private String modify_name;

    public InfoManage(){}
    public InfoManage(String content) {
        this.content = content;
    }

    public String getModify_name() {
        return modify_name;
    }

    public void setModify_name(String modify_name) {
        this.modify_name = modify_name;
    }

    public String getRelease_name() {
        return release_name;
    }

    public void setRelease_name(String release_name) {
        this.release_name = release_name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(Date releasetime) {
        this.releasetime = releasetime;
    }

    public Date getRevisiontime() {
        return revisiontime;
    }

    public void setRevisiontime(Date revisiontime) {
        this.revisiontime = revisiontime;
    }

    public Integer getRelease_uid() {
        return release_uid;
    }

    public void setRelease_uid(Integer release_uid) {
        this.release_uid = release_uid;
    }

    public Integer getModify_uid() {
        return modify_uid;
    }

    public void setModify_uid(Integer modify_uid) {
        this.modify_uid = modify_uid;
    }
}
