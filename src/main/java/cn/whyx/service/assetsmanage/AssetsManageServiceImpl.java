package cn.whyx.service.assetsmanage;

import cn.whyx.dao.assetsmanage.AssetsManageMapper;
import cn.whyx.pojo.AssetsManage;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AssetsManageServiceImpl implements AssetsManageService {

    @Resource
    private AssetsManageMapper mapper;

    @Override
    public List<AssetsManage> findAssetsManage(String assetname) {
        return mapper.findAssetsManage(assetname);
    }

    @Override
    public boolean addAssetsManage(AssetsManage assetsManage) {
        return (mapper.addAssetsManage(assetsManage)>0)?true:false;
    }

    @Override
    public boolean updAssetsManage(AssetsManage assetsManage) {
        return (mapper.updAssetsManage(assetsManage)>0)?true:false;
    }

    @Override
    public boolean delAssetsManage(Integer id) {
        return (mapper.delAssetsManage(id)>0)?true:false;
    }

    @Override
    public AssetsManage selAssetsManageById(Integer id) {
        return mapper.selAssetsManageById(id);
    }
}
