package cn.whyx.dao.lfghmapper;

import cn.whyx.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LfghMapper {
    /**
     * 查询全部转正申请
     */
    public List<ApplyInfo> selApplyInfo(@Param("name") String  name,@Param("id") Integer id)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount(@Param("name") String  name)throws Exception;

    /**
     * 管理员修改申请的状态
     * @return
     */
    public Integer updateApplyInfo(ApplyInfo applyInfo)throws Exception;

    /**
     * 删除申请
     */
    public Integer delApplyInfo(@Param("id")Integer id);

    /**
     * 添加申请
     */
    public Integer addApplyInfo(ApplyInfo applyInfo)throws Exception;


}
