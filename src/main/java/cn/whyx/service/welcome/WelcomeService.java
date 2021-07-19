package cn.whyx.service.welcome;

import cn.whyx.pojo.InfoManage;

import java.util.List;

public interface WelcomeService {
    /**
     * 主页的公告
     */
    public List<InfoManage> selInfoManage()throws Exception;
}
