package cn.whyx.dao.departmentmapper;

import cn.whyx.pojo.Department;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
public interface Departmentmapper {
    /**
     * 查询全部部门
     */
    public List<Department> selDepartment(@Param("department_name") String department_name)throws Exception;

    /**
     * 查询部门总数
     */
    public Integer selcount()throws Exception;

    /**
     * 查询修改前的部门名称
     */
    public Department selDepartmentname(@Param("id") int id)throws Exception;

    /**
     * 添加部门
     */
    public int insertDepartment(Department department)throws Exception;

    /**
     * 修改部门名称
     */
    public int updDepartment(Department department)throws Exception;

    /**
     * 删除部门
     */
    public Integer delDepartment(@RequestParam("id")int id)throws Exception;
}
