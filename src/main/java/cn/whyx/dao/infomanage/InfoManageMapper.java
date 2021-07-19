package cn.whyx.dao.infomanage;

import cn.whyx.pojo.InfoManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/*
公告Mapper
 */
@Mapper
public interface InfoManageMapper {
    /**
     * 公告Mapper
     * @return
     * @throws Exception
     */
    public List<InfoManage> selInfoManage(@Param("content") String  content)throws Exception;


    /**
     * 查询总数
     */
    public Integer selcount()throws Exception;

    /**
     * 查询修改前的公告内容
     */
    public InfoManage selAnnouncement(@Param("id") int id)throws Exception;

    /**
     * 添加公告
     */
    public int insertInfoManage(InfoManage infoManage)throws Exception;

    /**
     * 删除公告
     */
    public int delInfoManage(@RequestParam("id")int id)throws Exception;

    /**
     * 修改公告
     */
    public Integer updInfoManage(InfoManage infoManage)throws Exception;
}
