package cn.whyx.service.carmanage;

import cn.whyx.pojo.CarManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 车辆管理service
 */
public interface CarManageService {
    /**
     * 查看所有资产
     * @return
     */
    List<CarManage> findCarManage(@Param("licenseplate") String licenseplate);

    /**
     * 添加资产
     * @param carManage
     * @return
     */
    boolean addCarManage(CarManage carManage);

    /**
     * 修改资产
     * @param carManage
     * @return
     */
    boolean updCarManage(CarManage carManage);

    /**
     * 删除资产
     * @param id
     * @return
     */
    boolean delCarManage(@Param("id") Integer id);

    /**
     * 根据id查看车辆
     * @return
     */
    CarManage selCarManageById(@Param("id") Integer id);
}
