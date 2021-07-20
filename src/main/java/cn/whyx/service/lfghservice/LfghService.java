package cn.whyx.service.lfghservice;

import cn.whyx.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface LfghService {
    /**
     * 查询全部转正申请
     */
    public List<ApplyInfo> selApplyInfo(@Param("name") String  name,@Param("id") Integer id)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount()throws Exception;

    /**
     * 管理员修改申请的状态
     * @return
     */
    boolean updateApplyInfo(ApplyInfo applyInfo)throws Exception;

    /**
     * 删除申请
     */
    public boolean delApplyInfo(@Param("id")Integer id);

    /**
     * 添加申请
     */
    public boolean addApplyInfo(ApplyInfo applyInfo)throws Exception;

}
