package cn.whyx.service.penson;


import cn.whyx.pojo.Department;
import cn.whyx.pojo.OrganManage;
import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface PensonService {
    public Penson login(String username, String password);

    /**
     * 查询全部员工
     */
    public List<Penson> selInfoManage(@Param("name") String  name)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount()throws Exception;

    /**
     * 查询角色
     */
    public List<Role> selRole()throws Exception;

    /**
     *查询部门
     */
    public List<Department> seldepartment()throws Exception;

    /**
     * 查询修改前的员工信息
     */
    public Penson selrevision(@Param("id") int id)throws Exception;

    /**
     * 修改员工
     */
    public boolean updPenson(Penson penson)throws Exception;

    /**
     * 添加员工
     */
    public boolean addPenson(Penson penson)throws Exception;
}
