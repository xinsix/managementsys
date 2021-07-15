package cn.whyx.dao.assetsmanage;

import cn.whyx.pojo.AssetsManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 资产mapper
 */
@Mapper
public interface AssetsManageMapper {

    /**
     * 查看所有资产
     * @return
     */
    List<AssetsManage> findAssetsManage(@Param("assetname") String assetname);

    /**
     * 添加资产
     * @param assetsManage
     * @return
     */
    Integer addAssetsManage(AssetsManage assetsManage);

    /**
     * 修改资产
     * @param assetsManage
     * @return
     */
    Integer updAssetsManage(AssetsManage assetsManage);

    /**
     * 删除资产
     * @param id
     * @return
     */
    Integer delAssetsManage(@Param("id")Integer id);
}
