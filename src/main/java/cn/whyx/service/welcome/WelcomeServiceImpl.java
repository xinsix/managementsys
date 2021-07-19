package cn.whyx.service.welcome;

import cn.whyx.dao.welcome.WelcomeMapper;
import cn.whyx.pojo.InfoManage;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class WelcomeServiceImpl implements WelcomeService{
    @Resource
    private WelcomeMapper welcomeMapper;

    @Override
    public List<InfoManage> selInfoManage() throws Exception {
        return welcomeMapper.selInfoManage();
    }
}
