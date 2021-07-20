package cn.whyx.service.assetsmanage;

import cn.whyx.pojo.AssetsManage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 资产service
 */
public interface AssetsManageService {

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
    boolean addAssetsManage(AssetsManage assetsManage);

    /**
     * 修改资产
     * @param assetsManage
     * @return
     */
    boolean updAssetsManage(AssetsManage assetsManage);

    /**
     * 删除资产
     * @param id
     * @return
     */
    boolean delAssetsManage(@Param("id") Integer id);

    /**
     * 根据id查看资产
     * @return
     */
    AssetsManage selAssetsManageById(@Param("id") Integer id);

    /**
     * 查询总数
     */
    public Integer selcount()throws Exception;
}
