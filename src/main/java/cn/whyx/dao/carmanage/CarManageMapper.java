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
     * 查看所有资产
     * @return
     */
    List<CarManage> findCarManage(@Param("licenseplate") String licenseplate);

    /**
     * 添加资产
     * @param carManage
     * @return
     */
    Integer addCarManage(CarManage carManage);

    /**
     * 修改资产
     * @param carManage
     * @return
     */
    Integer updCarManage(CarManage carManage);

    /**
     * 删除资产
     * @param id
     * @return
     */
    Integer delCarManage(@Param("id")Integer id);
}
