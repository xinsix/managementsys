package cn.whyx.service.quitservice;

import cn.whyx.dao.quitmapper.QuitMapper;
import cn.whyx.pojo.ApplyInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class QuitServiceImpl implements QuitService {

    @Resource
    private QuitMapper mapper;

    @Override
    public List<ApplyInfo> selQuit(String name, Integer id) throws Exception {
        return mapper.selQuit(name,id);
    }

    @Override
    public Integer selcount(@Param("name") String  name) throws Exception {
        return mapper.selcount(name);
    }

    @Override
    public boolean addQuit(ApplyInfo applyInfo) throws Exception {
        boolean bool = false;
        try {
            if (mapper.addQuit(applyInfo)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean updateQuit(ApplyInfo applyInfo) throws Exception {
        return (mapper.updateQuit(applyInfo)>0)?true:false;
    }

    @Override
    public boolean delQuit(Integer id) {
        return (mapper.delQuit(id)>0)?true:false;
    }
}
