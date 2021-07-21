package cn.whyx.service.departmentservice;

import cn.whyx.pojo.Department;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface Departmentservice {

    /**
     * 查询全部部门
     */
    public List<Department> selDepartment(@Param("department_name") String department_name)throws Exception;

    /**
     * 查询部门总数
     */
    public Integer selcount(@Param("department_name") String department_name)throws Exception;

    /**
     * 查询修改前的部门名称
     */
    public Department selDepartmentname(@Param("id") int id)throws Exception;

    /**
     * 添加部门
     */
    public boolean insertDepartment(Department department)throws Exception;

    /**
     * 修改部门名称
     */
    public boolean updDepartment(Department department)throws Exception;

    /**
     * 删除部门
     */
    public boolean delDepartment(@RequestParam("id")int id)throws Exception;
}
