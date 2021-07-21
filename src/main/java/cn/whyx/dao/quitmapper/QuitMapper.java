package cn.whyx.dao.quitmapper;

import cn.whyx.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface QuitMapper {
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
    public Integer addQuit(ApplyInfo applyInfo)throws Exception;

    /**
     * 管理员修改申请的状态
     * @return
     */
    public Integer updateQuit(ApplyInfo applyInfo)throws Exception;

    /**
     * 删除申请
     */
    public Integer delQuit(@Param("id")Integer id);
}
