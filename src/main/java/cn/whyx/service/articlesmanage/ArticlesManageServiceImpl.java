package cn.whyx.service.articlesmanage;

import cn.whyx.dao.articlesmanage.ArticlesManageMapper;
import cn.whyx.pojo.ArticlesManage;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ArticlesManageServiceImpl implements ArticlesManageService {
    @Resource
    private ArticlesManageMapper mapper;

    @Override
    public List<ArticlesManage> findArticlesManage(String productname) {
        return mapper.findArticlesManage(productname);
    }

    @Override
    public boolean addArticlesManage(ArticlesManage articlesManage) {
        return (mapper.addArticlesManage(articlesManage)>0)?true:false;
    }

    @Override
    public boolean updArticlesManage(ArticlesManage articlesManage) {
        return (mapper.updArticlesManage(articlesManage)>0)?true:false;
    }

    @Override
    public boolean delArticlesManage(Integer id) {
        return (mapper.delArticlesManage(id)>0)?true:false;
    }
}
