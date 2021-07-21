package cn.whyx.service.infomanage;

import cn.whyx.dao.infomanage.InfoManageMapper;
import cn.whyx.pojo.InfoManage;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface InfoManageService {
    /**
     * 公告Mapper
     * @return
     * @throws Exception
     */
    public List<InfoManage> selInfoManage(@Param("content") String content)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount(String  content)throws Exception;

    /**
     * 查询修改前的公告内容
     */
    public InfoManage selAnnouncement(@RequestParam("id") int id)throws Exception;

    /**
     * 添加公告
     */
    public boolean insertInfoManage(InfoManage infoManage)throws Exception;

    /**
     * 删除公告
     */
    public boolean delInfoManage(@RequestParam("id")int id)throws Exception;

    /**
     * 修改公告
     */
    public boolean updInfoManage(InfoManage infoManage)throws Exception;
}
