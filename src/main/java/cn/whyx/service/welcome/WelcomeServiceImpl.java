package cn.whyx.service.welcome;

import cn.whyx.dao.welcome.WelcomeMapper;
import cn.whyx.pojo.InfoManage;
import cn.whyx.pojo.Task;
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

    @Override
    public Integer seldepartment() throws Exception {
        return welcomeMapper.seldepartment();
    }

    @Override
    public Integer selstion() throws Exception {
        return welcomeMapper.selstion();
    }

    @Override
    public Integer selposition() throws Exception {
        return welcomeMapper.selposition();
    }

    @Override
    public Integer selrepairl() throws Exception {
        return welcomeMapper.selrepairl();
    }

    @Override
    public List<Task> seltask() throws Exception {
        return welcomeMapper.seltask();
    }
}
