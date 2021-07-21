package cn.whyx.service.penson;


import cn.whyx.dao.penson.PensonMapper;
import cn.whyx.pojo.Department;
import cn.whyx.pojo.OrganManage;
import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PensonServiceImpl implements PensonService {

    @Resource
    private PensonMapper userMapper;

    @Override
    public Penson login(String username, String password) {
        return userMapper.login(username,password);
    }


    @Override
    public List<Penson> selInfoManage(String name) throws Exception {
        return userMapper.selInfoManage(name);
    }

    @Override
    public Integer selcount(String content) throws Exception {
        return userMapper.selcount(content);
    }

    @Override
    public List<Role> selRole() throws Exception {
        return userMapper.selRole();
    }

    @Override
    public List<Department> seldepartment() throws Exception {
        return userMapper.seldepartment();
    }

    @Override
    public Penson selrevision(@Param("id") int id) throws Exception {
        return userMapper.selrevision(id);
    }

    @Override
    public boolean updPenson(Penson penson) throws Exception {
        return (userMapper.updPenson(penson)>0)?true:false;
    }

    @Override
    public boolean addPenson(Penson penson) throws Exception {
        return (userMapper.addPenson(penson)>0)?true:false;
    }
}
