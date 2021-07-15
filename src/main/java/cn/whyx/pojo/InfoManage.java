package cn.whyx.pojo;

/**
 * 信息管理实体类
 */
public class InfoManage {
    private Integer id;//公告id
    private Integer content;//公告内容
    private Integer releasetime;//发布时间
    private Integer revisiontime;//修改时间
    private Integer release_uid;//发布人
    private Integer modify_uid;//修改人

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getContent() {
        return content;
    }

    public void setContent(Integer content) {
        this.content = content;
    }

    public Integer getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(Integer releasetime) {
        this.releasetime = releasetime;
    }

    public Integer getRevisiontime() {
        return revisiontime;
    }

    public void setRevisiontime(Integer revisiontime) {
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
