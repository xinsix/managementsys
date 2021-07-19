package cn.whyx.dao.welcome;

import cn.whyx.pojo.InfoManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface WelcomeMapper {
    /**
     * 主页的公告
     */
    public List<InfoManage> selInfoManage()throws Exception;
}
