package cn.whyx.dao.welcome;

import cn.whyx.pojo.InfoManage;
import cn.whyx.pojo.Task;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface WelcomeMapper {
    /**
     * 主页的公告
     */
    public List<InfoManage> selInfoManage()throws Exception;

    /**
     * 查询部门总数
     */
    public Integer seldepartment()throws Exception;

    /**
     * 查询岗位总数
     */
    public Integer selstion()throws Exception;

    /**
     * 查询总职位
     */
    public Integer selposition()throws Exception;

    /**
     * 查询总员功能
     */
    public Integer selrepairl()throws Exception;


    /**
     * 查询全部任务
     */
    public List<Task> seltask()throws Exception;
}
