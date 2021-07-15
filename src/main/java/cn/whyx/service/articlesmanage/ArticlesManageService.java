package cn.whyx.service.articlesmanage;

import cn.whyx.pojo.ArticlesManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用品service
 */

public interface ArticlesManageService {
    /**
     * 查看用品
     * @param productname
     * @return
     */
    List<ArticlesManage> findArticlesManage(@Param("productname") String productname);

    /**
     * 增加用品
     * @param articlesManage
     * @return
     */
    boolean addArticlesManage(ArticlesManage articlesManage);

    /**
     * 修改用品
     * @param articlesManage
     * @return
     */
    boolean updArticlesManage(ArticlesManage articlesManage);

    /**
     * 删除用品
     * @param id
     * @return
     */
    boolean delArticlesManage(@Param("id") Integer id);
}
