package cn.whyx.dao.penson;

import cn.whyx.pojo.Department;
import cn.whyx.pojo.OrganManage;
import cn.whyx.pojo.Penson;
import cn.whyx.pojo.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PensonMapper {
    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
    public Penson login(@Param("username") String username, @Param("password") String password);


    /**
     * 查询全部员工
     */
   public List<Penson> selInfoManage(@Param("name") String  name)throws Exception;

    /**
     * 查询总数
     */
    public Integer selcount(@Param("name") String name)throws Exception;

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
    public Integer updPenson(Penson penson)throws Exception;

    /**
     * 添加员工
     */
    public Integer addPenson(Penson penson)throws Exception;


}
