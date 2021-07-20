package cn.whyx.service.lfghservice;

import cn.whyx.dao.lfghmapper.LfghMapper;
import cn.whyx.pojo.ApplyInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LfghServiceImpl implements LfghService {

    @Resource
    private LfghMapper mapper;

    @Override
    public List<ApplyInfo> selApplyInfo(String name,Integer id) throws Exception {
        return mapper.selApplyInfo(name,id);
    }

    @Override
    public Integer selcount() throws Exception {
        return mapper.selcount();
    }

    @Override
    public boolean updateApplyInfo(ApplyInfo applyInfo) throws Exception {
        return (mapper.updateApplyInfo(applyInfo)>0)?true:false;
    }

    @Override
    public boolean delApplyInfo(Integer id) {
        return (mapper.delApplyInfo(id)>0)?true:false;
    }

    @Override
    public boolean addApplyInfo(ApplyInfo applyInfo) throws Exception {
        boolean bool = false;
        try {
            if (mapper.addApplyInfo(applyInfo)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

}
