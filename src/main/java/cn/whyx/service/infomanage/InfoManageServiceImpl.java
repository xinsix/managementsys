package cn.whyx.service.infomanage;

import cn.whyx.dao.infomanage.InfoManageMapper;
import cn.whyx.pojo.InfoManage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class InfoManageServiceImpl implements  InfoManageService{

    @Resource
    private InfoManageMapper infoManageMapper;

    @Override
    public List<InfoManage> selInfoManage(@Param("content") String content) throws Exception {
        return infoManageMapper.selInfoManage(content);
    }

    @Override
    public Integer selcount(String  content) throws Exception {
        return infoManageMapper.selcount(content);
    }

    @Override
    public InfoManage selAnnouncement(int id) throws Exception {
        return infoManageMapper.selAnnouncement(id);
    }

    @Override
    public boolean insertInfoManage(InfoManage infoManage) throws Exception {
        boolean bool = false;
        try{
            if (infoManageMapper.insertInfoManage(infoManage)>0){
                bool = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean delInfoManage(int id) throws Exception {
        boolean bool = false;
        try {
            if (infoManageMapper.delInfoManage(id)>0){
                bool=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return bool;
    }

    @Override
    public boolean updInfoManage(InfoManage infoManage) throws Exception {
        return (infoManageMapper.updInfoManage(infoManage)>0)?true:false;
    }
}
