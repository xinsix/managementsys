package cn.whyx.dao.carmanage;

import cn.whyx.pojo.CarManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 车辆管理mapper
 */
@Mapper
public interface CarManageMapper {
    /**
     * 查看所有车辆
     * @return
     */
    List<CarManage> findCarManage(@Param("licenseplate") String licenseplate,@Param("applicant") Integer applicant);

    /**
     * 添加车辆
     * @param carManage
     * @return
     */
    Integer addCarManage(CarManage carManage);

    /**
     * 修改车辆
     * @param carManage
     * @return
     */
    Integer updCarManage(CarManage carManage);

    /**
     * 删除车辆
     * @param id
     * @return
     */
    Integer delCarManage(@Param("id")Integer id);

    /**
     * 根据id查看车辆
     * @return
     */
    CarManage selCarManageById(@Param("id") Integer id);

    /**
     * 查询总数
     */
    public Integer selcount(@Param("licenseplate") String licenseplate)throws Exception;

}
