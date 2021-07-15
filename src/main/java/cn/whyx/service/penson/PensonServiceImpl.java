package cn.whyx.service.penson;


import cn.whyx.dao.penson.PensonMapper;
import cn.whyx.pojo.Penson;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PensonServiceImpl implements PensonService {

    @Resource
    private PensonMapper userMapper;

    @Override
    public Penson login(String username, String password) {
        return userMapper.login(username,password);
    }
}
