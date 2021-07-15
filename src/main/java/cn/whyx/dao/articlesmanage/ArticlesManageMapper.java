package cn.whyx.dao.articlesmanage;

import cn.whyx.pojo.ArticlesManage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用品mapper
 */
@Mapper
public interface ArticlesManageMapper {
    /**
     * 查看用品
     * @param productname
     * @return
     */
    List<ArticlesManage> findArticlesManage(@Param("productname")String productname);

    /**
     * 增加用品
     * @param articlesManage
     * @return
     */
    Integer addArticlesManage(ArticlesManage articlesManage);

    /**
     * 修改用品
     * @param articlesManage
     * @return
     */
    Integer updArticlesManage(ArticlesManage articlesManage);

    /**
     * 删除用品
     * @param id
     * @return
     */
    Integer delArticlesManage(@Param("id")Integer id);
}
