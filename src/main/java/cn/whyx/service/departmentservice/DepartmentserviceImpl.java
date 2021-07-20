package cn.whyx.service.departmentservice;

import cn.whyx.dao.departmentmapper.Departmentmapper;
import cn.whyx.pojo.Department;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentserviceImpl implements Departmentservice {


    @Resource
    private Departmentmapper departmentmapper;

    @Override
    public List<Department> selDepartment(String department_name) throws Exception {
        return departmentmapper.selDepartment(department_name);
    }

    @Override
    public Integer selcount() throws Exception {
        return departmentmapper.selcount();
    }

    @Override
    public Department selDepartmentname(int id) throws Exception {
        return departmentmapper.selDepartmentname(id);
    }

    @Override
    public boolean insertDepartment(Department department) throws Exception {
        boolean bool = false;
        try{
            if (departmentmapper.insertDepartment(department)>0){
                bool = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean updDepartment(Department department) throws Exception {
        return (departmentmapper.updDepartment(department)>0)?true:false;

    }

    @Override
    public boolean delDepartment(int id) throws Exception {
        boolean bool = false;
        try {
            if (departmentmapper.delDepartment(id)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }


}
