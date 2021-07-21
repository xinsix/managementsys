package cn.whyx.service.quitservice;

import cn.whyx.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuitService {
    /**
     * 查询全部转正申请
     */
    public List<ApplyInfo> selQuit(@Param("name") String  name, @Param("id") Integer id)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount(@Param("name") String  name)throws Exception;

    /**
     * 添加申请
     */
    public boolean addQuit(ApplyInfo applyInfo)throws Exception;

    /**
     * 管理员修改申请的状态
     * @return
     */
    public boolean updateQuit(ApplyInfo applyInfo)throws Exception;

    /**
     * 删除申请
     */
    public boolean delQuit(@Param("id")Integer id);
}
